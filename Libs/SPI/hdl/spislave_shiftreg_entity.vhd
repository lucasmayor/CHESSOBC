-- VHDL Entity SPI.spiSlave_shiftreg.symbol
--
-- Created:
--          by - silvan.zahno.UNKNOWN (WE6996)
--          at - 07:39:38 11.11.2019
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;

LIBRARY gates;
  USE gates.gates.all;

ENTITY spiSlave_shiftreg IS
   GENERIC( 
      spi_wbits : integer              := 8;
      spi_CPHA  : integer range 0 to 1 := 1
   );
   PORT( 
      CS                : IN     std_ulogic;
      MOSI              : IN     std_ulogic;
      SCK_fe            : IN     std_ulogic;
      SCK_re            : IN     std_ulogic;
      clock_spi         : IN     std_ulogic;
      data_i            : IN     std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      data_i_valid      : IN     std_ulogic;
      reset             : IN     std_ulogic;
      MISO              : OUT    std_ulogic;
      data_i_re         : OUT    std_ulogic;
      data_o            : OUT    std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      data_o_valid      : OUT    std_ulogic;
      data_transfer_end : OUT    std_ulogic
   );

-- Declarations

END spiSlave_shiftreg ;

