/* Copyright 2018 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#include <metal/drivers/sifive,ps20.h>

/* The byte offsets of the various ps2 registers. */
#define PS2_REG_DATA         0x00

/* PS2DATA Fields */
#define PS2_DATAEN               (1 <<  0)
#define PS2_DATAEMPTY             (1 << 31)


#define PS2_REG(offset)   (((unsigned long)(((struct __metal_driver_sifive_ps20 *)(ps2))->control_base) + offset))
#define PS2(offset)  (__METAL_ACCESS_ONCE((__metal_io_u8  *)PS2_REG(offset)))
#define PS2_REGW(offset)  (__METAL_ACCESS_ONCE((__metal_io_u32 *)PS2_REG(offset)))

int __metal_driver_sifive_ps20_getc(struct metal_ps2 *ps2, unsigned char *c)
{
    uint32_t ch = PS2_DATAEMPTY;
    while (ch & PS2_DATAEMPTY) {
        ch = PS2_REGW(PS2_REG_DATA);
    }
    *c = ch & 0xff;
    return 0;
}

void __metal_driver_sifive_ps20_init(struct metal_ps2 *gps2)
{
    struct __metal_driver_sifive_ps20 *ps2 = (void *)(gps2);

    // if(ps2->clock != NULL) {
    //     metal_clock_register_pre_rate_change_callback(ps2->clock, &pre_rate_change_callback, ps2);
    //     metal_clock_register_post_rate_change_callback(ps2->clock, &post_rate_change_callback, ps2);
    // }

    // metal_ps2_set_baud_rate(&(ps2->ps2), baud_rate);

    if (ps2->pinmux != NULL) {
        ps2->pinmux->vtable->gpio.enable_io(
            (struct metal_gpio *) ps2->pinmux,
            ps2->pinmux_output_selector,
            ps2->pinmux_source_selector
        );
    }
}
