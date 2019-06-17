/* Copyright 2018 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#ifndef METAL__ps2_H
#define METAL__ps2_H

/*!
 * @file ps2.h
 * @brief API for ps2 serial ports
 */

#include <metal/interrupt.h>

struct metal_ps2;

struct metal_ps2_vtable {
    void (*init)(struct metal_ps2 *ps2, int baud_rate);
    int (*getc)(struct metal_ps2 *ps2, unsigned char *c);
};

/*!
 * @brief Handle for a ps2 serial device
 */
struct metal_ps2 {
    const struct metal_ps2_vtable *vtable;
};

/*!
 * @brief Initialize ps2 device
 
 * Initialize the ps2 device described by the ps2 handle. This function must be called before any
 * other method on the ps2 can be invoked. It is invalid to initialize a ps2 more than once.
 *
 * @param ps2 The ps2 device handle
 * @param baud_rate the baud rate to set the ps2 to
 */
inline void metal_ps2_init(struct metal_ps2 *ps2) { return ps2->vtable->init(ps2); }


/*!
 * @brief Read a character sent over the ps2
 * @param ps2 The ps2 device handle
 * @param c The varible to hold the read character
 * @return 0 upon success
 */
inline int metal_ps2_getc(struct metal_ps2 *ps2, unsigned char *c) { return ps2->vtable->getc(ps2, c); }

#endif
