/* Copyright 2018 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#ifndef METAL__DRIVERS__SIFIVE_PS20_H
#define METAL__DRIVERS__SIFIVE_PS20_H

#include <metal/drivers/sifive,gpio0.h>
#include <metal/drivers/riscv,plic0.h>
#include <metal/clock.h>
#include <metal/io.h>
#include <metal/ps2.h>
#include <metal/compiler.h>

struct __metal_driver_vtable_sifive_ps20 {
    const struct metal_ps2_vtable ps2;
};

struct __metal_driver_sifive_ps20;

void __metal_driver_sifive_ps20_init(struct metal_ps2 *ps2);
int __metal_driver_sifive_ps20_getc(struct metal_ps2 *ps2, unsigned char *c);


__METAL_DECLARE_VTABLE(__metal_driver_vtable_sifive_ps20) = {
    .ps2.init          = __metal_driver_sifive_ps20_init,
    .ps2.getc          = __metal_driver_sifive_ps20_getc,
};

struct __metal_driver_sifive_ps20 {
    struct metal_ps2 ps2;
    const struct __metal_driver_vtable_sifive_ps20 *vtable;
    struct metal_clock *clock;
    const unsigned long control_base;
    const unsigned long control_size;
    struct __metal_driver_sifive_gpio0 *pinmux;
    const unsigned long pinmux_output_selector;
    const unsigned long pinmux_source_selector;
};


#endif
