# start.S -- bare-metal runtime shim for a Pancake program running as a
# ZisK-style stateless guest under tools/spike/spike_run.
#
# Contract (see tools/spike/spike_run.cc):
#   input  at 0x40000000: [8B zero meta][8B LE len][blob]
#   output at 0xa0410000: SSZ StatelessValidationResult bytes
#   halt   : ecall with a7 = 93
#
# The Pancake program itself reads/writes those regions with shared-memory
# loads/stores (!ldw / !st8 ...). Runtime foreign calls provide halt and trap.
.option norelax
.option norvc
.section .text
.globl _start
_start:
    # Copy the compiler's initial data from the submitted ROM image. The ELF
    # loader uses the ROM physical load address, so target RAM remains zero
    # until this loop executes. Both endpoints are eight-byte aligned.
    la   t0, __guest_data_load
    la   t1, __guest_data_start
    la   t2, __guest_data_end
.Lcopy_data:
    ld   t3, 0(t0)
    sd   t3, 0(t1)
    addi t0, t0, 8
    addi t1, t1, 8
    bltu t1, t2, .Lcopy_data
    la   t0, cml_heap
    ori  t1, zero, 161
    slli t1, t1, 24 # 0xa1000000          # Pancake heap start (@base)
    sd   t1, 0(t0)
    la   t0, cml_stack
    ori  t1, zero, 2015
    slli t1, t1, 24 # 0x7df000000        # globals end / machine stack start
    sd   t1, 0(t0)
    la   t0, cml_stackend
    ori  t1, zero, 63
    slli t1, t1, 29 # 0x7e0000000        # aligned RAM end / machine stack end
    sd   t1, 0(t0)
    # Initial heap-page headers required by panInstalled. These addresses
    # are reserved from the guest allocators.
    ori  t0, zero, 161
    slli t0, t0, 24
    la   t1, cake_bitmaps
    sd   t1, 0(t0)
    la   t1, cake_bitmaps_buffer_begin
    sd   t1, 8(t0)
    la   t1, cake_bitmaps_buffer_end
    sd   t1, 16(t0)
    la   t1, cake_codebuffer_begin
    sd   t1, 24(t0)
    la   t1, cake_codebuffer_end
    sd   t1, 32(t0)
    # Enter the verified native artifact directly. The renderer wrapper uses
    # registers/instruction sequences outside its abstract encoder admission.
    # Every instruction on this startup path uses the admitted integer subset.
    ori  a1, zero, 161
    slli a1, a1, 24
    ori  a2, zero, 2015
    slli a2, a2, 24
    ori  a3, zero, 63
    slli a3, a3, 29
    la   a0, cake_main
    j    cake_main

.globl cml_exit
cml_exit:
    li   a7, 93
    ecall
1:  j 1b

# FFI: @halt(...) -> clean halt.
.globl ffihalt
ffihalt:
    j    cml_exit

# FFI: @trap(@base, code, @base, 0) -- signal an unrecoverable guest error;
# write the marker and code bytes and halt so the harness sees a deterministic
# (wrong) output.  Pancake's trap_with helper writes the additional metadata.
# 0xa0410000 matches guest/src/config.h's OUTPUT_ADDR.
.globl ffitrap
ffitrap:
    li   t0, 0xa0410000
    li   t1, 0xEE
    sb   t1, 32(t0)
    sb   a1, 33(t0)
    j    cml_exit
