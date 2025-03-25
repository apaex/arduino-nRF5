/* Linker script to configure memory regions. */

SEARCH_DIR(.)
GROUP(-lgcc -lc -lnosys)

MEMORY
{
  FLASH (rx) : ORIGIN = 0x19000, LENGTH = 192k - 0x19000
  RAM (rwx) :  ORIGIN = 0x20001ae0, LENGTH = 24k - 0x1ae0
/*
  FLASH (rx) : ORIGIN = 0x19000, LENGTH = 192k - 0x19000
  RAM (rwx) :  ORIGIN = 0x20000eb8, LENGTH = 24k - 0xeb8
*/
}

SECTIONS
{
}

SECTIONS
{
  . = ALIGN(4);
  .mem_section_dummy_ram :
  {
  }

} INSERT AFTER .data;

SECTIONS
{
  .mem_section_dummy_rom :
  {
  }

} INSERT AFTER .text


INCLUDE "nrf_common.ld"
