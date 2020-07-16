-- VHDL Entity SPI.spiSlave.symbol
--
-- Created:
--          by - silvan.zahno.UNKNOWN (WE6996)
--          at - 07:39:39 11.11.2019
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY spiSlave IS
   GENERIC( 
      spi_CPHA  : integer range 0 to 1         := 1;
      spi_CPOL  : integer range 0 to 1         := 1;
      spi_wbits : integer range 1 to (2**16)-1 := 8      --size of spi word
   );
   PORT( 
      CS                : IN     std_ulogic;
      MOSI              : IN     std_ulogic;
      clock             : IN     std_ulogic;
      reset             : IN     std_uLogic;
      sClk              : IN     std_ulogic;
      tx_data           : IN     std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      tx_data_valid     : IN     std_ulogic;
      MISO              : OUT    std_ulogic;
      data_transfer_end : OUT    std_ulogic;
      rx_data           : OUT    std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      rx_data_wr        : OUT    std_ulogic;
      tx_data_rd        : OUT    std_ulogic
   );

-- Declarations

END spiSlave ;

