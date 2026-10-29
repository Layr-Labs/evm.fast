# Linker script for the guest ELF (see guest/build.sh).
#
# Plain `-Ttext=0x80000000 -Tdata=0xa0020000` produces an R+E .text PT_LOAD
# segment and puts the ELF/program headers in their own PT_LOAD segment
# just below .text, at 0x7ffff000. Spike (a generic ELF loader) tolerates
# both, but ZisK >=1.1.0-alpha's stricter loader rejects the headers
# segment (outside its declared ROM window) and its riscv2zisk converter
# panics on an R+E .text segment once a second PT_LOAD segment (.data) is
# also present (reported upstream; ziskemu's own warning says it wants
# PF_X-only "for maximum performance" -- turns out it's not just
# performance).
#
# This script avoids both: headers get no PT_LOAD segment at all (PHDRS
# below has no FILEHDR/PHDRS attribute, so ld leaves them unmapped -- fine,
# nothing at runtime needs to read its own ELF header), and .text is X-only
# (FLAGS(1), no PF_R). Spike's ELF loader (tools/spike/spike_run.cc,
# via load_elf()) doesn't care about segment permissions or unmapped
# headers, so this same layout works for both backends.
PHDRS
{
  text PT_LOAD FLAGS(1);
  data PT_LOAD FLAGS(6);
}
SECTIONS
{
  . = 0x80000000;
  .text : { *(.text) } :text
  # RAM begins zeroed. Initial compiler data is stored in ROM and copied by
  # the submitted bootstrap, rather than supplied by the environment.
  __guest_data_load = ALIGN(LOADADDR(.text) + SIZEOF(.text), 8);
  . = 0xa0020000;
  .data : AT(__guest_data_load)
  {
    __guest_data_start = .;
    *(.data)
    __guest_data_end = .;
  } :data
}
