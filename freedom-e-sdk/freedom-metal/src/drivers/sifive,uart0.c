/* Copyright 2018 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#include <metal/drivers/sifive,uart0.h>

/* The byte offsets of the various UART registers. */
#define UART_REG_TXDATA         0x00
#define UART_REG_RXDATA         0x04
#define UART_REG_TXCTRL         0x08
#define UART_REG_RXCTRL         0x0c
#define UART_REG_RXCNT          (UART_REG_RXCTRL + 2)
#define UART_REG_IE             0x10
#define UART_REG_IP             0x14
#define UART_REG_DIV            0x18

/* TXDATA Fields */
#define UART_TXEN               (1 <<  0)
#define UART_TXFULL             (1 << 31)

/* RXDATA Fields */
#define UART_RXEN               (1 <<  0)
#define UART_RXEMPTY            (1 << 31)

/* TXCTRL Fields */
#define UART_NSTOP              (1 <<  1)
#define UART_TXCNT(count)       ((0x7 & count) << 16)

/* IP Fields */
#define UART_TXWM               (1 <<  0)

#define UART_REG(offset)   (((unsigned long)(((struct __metal_driver_sifive_uart0 *)(uart))->control_base) + offset))
#define UART_REGB(offset)  (__METAL_ACCESS_ONCE((__metal_io_u8  *)UART_REG(offset)))
#define UART_REGW(offset)  (__METAL_ACCESS_ONCE((__metal_io_u32 *)UART_REG(offset)))

struct metal_interrupt *
__metal_driver_sifive_uart0_interrupt_controller(struct metal_uart *uart)
{
    struct __metal_driver_sifive_uart0 *uart0 = (void *)uart;
    return (struct metal_interrupt *)uart0->interrupt_parent;
}

int __metal_driver_sifive_uart0_get_interrupt_id(struct metal_uart *uart)
{
    struct __metal_driver_sifive_uart0 *uart0 = (void *)uart;
    return (uart0->interrupt_line + METAL_INTERRUPT_ID_GL0);
}

int __metal_driver_sifive_uart0_putc(struct metal_uart *uart, unsigned char c)
{
    while ((UART_REGW(UART_REG_TXDATA) & UART_TXFULL) != 0) { }
    UART_REGW(UART_REG_TXDATA) = c;
    return 0;
}

int __metal_driver_sifive_uart0_getc(struct metal_uart *uart, unsigned char *c)
{
    uint32_t ch = UART_RXEMPTY;
    while (ch & UART_RXEMPTY) {
        ch = UART_REGW(UART_REG_RXDATA);
    }
    *c = ch & 0xff;
    return 0;
}

int __metal_driver_sifive_uart0_get_baud_rate(struct metal_uart *guart)
{
    struct __metal_driver_sifive_uart0 *uart = (void *)guart;
    return uart->baud_rate;
}

int __metal_driver_sifive_uart0_set_baud_rate(struct metal_uart *guart, int baud_rate)
{
    struct __metal_driver_sifive_uart0 *uart = (void *)guart;

    uart->baud_rate = baud_rate;

    if (uart->clock != NULL) {
        long clock_rate = uart->clock->vtable->get_rate_hz(uart->clock);
        UART_REGW(UART_REG_DIV) = clock_rate / baud_rate - 1;
        UART_REGW(UART_REG_TXCTRL) |= UART_TXEN;
        UART_REGW(UART_REG_RXCTRL) |= UART_RXEN;
    }
    return 0;
}

static void pre_rate_change_callback(void *priv)
{
    struct __metal_driver_sifive_uart0 *uart = priv;

    /* Detect when the TXDATA is empty by setting the transmit watermark count
     * to one and waiting until an interrupt is pending */

    UART_REGW(UART_REG_TXCTRL) &= ~(UART_TXCNT(0x7));
    UART_REGW(UART_REG_TXCTRL) |= UART_TXCNT(1);

    while((UART_REGW(UART_REG_IP) & UART_TXWM) == 0) ;

    /* When the TXDATA clears, the UART is still shifting out the last byte.
     * Calculate the time we must drain to finish transmitting and then wait
     * that long. */

    long bits_per_symbol = (UART_REGW(UART_REG_TXCTRL) & (1 << 1)) ? 9 : 10;
    long clk_freq = uart->clock->vtable->get_rate_hz(uart->clock);
    long cycles_to_wait = bits_per_symbol * clk_freq / uart->baud_rate;

    for(volatile long x = 0; x < cycles_to_wait; x++)
        asm("nop");
}

static void post_rate_change_callback(void *priv)
{
    struct __metal_driver_sifive_uart0 *uart = priv;
    metal_uart_set_baud_rate(&uart->uart, uart->baud_rate);
}

void __metal_driver_sifive_uart0_init(struct metal_uart *guart, int baud_rate)
{
    struct __metal_driver_sifive_uart0 *uart = (void *)(guart);

    if(uart->clock != NULL) {
        metal_clock_register_pre_rate_change_callback(uart->clock, &pre_rate_change_callback, uart);
        metal_clock_register_post_rate_change_callback(uart->clock, &post_rate_change_callback, uart);
    }

    metal_uart_set_baud_rate(&(uart->uart), baud_rate);

    if (uart->pinmux != NULL) {
        uart->pinmux->vtable->gpio.enable_io(
            (struct metal_gpio *) uart->pinmux,
            uart->pinmux_output_selector,
            uart->pinmux_source_selector
        );
    }
}
