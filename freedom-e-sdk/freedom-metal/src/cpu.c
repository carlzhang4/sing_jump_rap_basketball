/* Copyright 2018 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#include <metal/cpu.h>
#include <metal/machine.h>

struct metal_cpu* metal_cpu_get(int hartid)
{
    if (hartid < __METAL_DT_MAX_HARTS) {
        return (struct metal_cpu *)__metal_cpu_table[hartid];
    }   
    return NULL;
}

extern inline unsigned long long metal_cpu_get_timer(struct metal_cpu *cpu);

extern inline unsigned long long metal_cpu_get_timebase(struct metal_cpu *cpu);

extern inline unsigned long long metal_cpu_get_mtime(struct metal_cpu *cpu);

extern inline int metal_cpu_set_mtimecmp(struct metal_cpu *cpu, unsigned long long time);

extern inline struct metal_interrupt* metal_cpu_timer_interrupt_controller(struct metal_cpu *cpu);

extern inline int metal_cpu_timer_get_interrupt_id(struct metal_cpu *cpu);

extern inline struct metal_interrupt* metal_cpu_software_interrupt_controller(struct metal_cpu *cpu);

extern inline int metal_cpu_software_get_interrupt_id(struct metal_cpu *cpu);

extern inline int metal_cpu_software_set_ipi(struct metal_cpu *cpu, int hartid);

extern inline int metal_cpu_software_clear_ipi(struct metal_cpu *cpu, int hartid);

extern inline int metal_cpu_get_msip(struct metal_cpu *cpu, int hartid);

extern inline struct metal_interrupt* metal_cpu_interrupt_controller(struct metal_cpu *cpu);

extern inline int metal_cpu_exception_register(struct metal_cpu *cpu, int ecode, metal_exception_handler_t handler);

extern inline int metal_cpu_get_instruction_length(struct metal_cpu *cpu, uintptr_t epc);

extern inline uintptr_t metal_cpu_get_exception_pc(struct metal_cpu *cpu);

extern inline int metal_cpu_set_exception_pc(struct metal_cpu *cpu, uintptr_t epc);
