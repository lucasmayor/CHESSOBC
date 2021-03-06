-- VHDL Entity OBC_test.SPi_test.symbol
--
-- Created:
--          by - student.UNKNOWN (DESKTOP-3I0F3HP)
--          at - 13:05:55 13.07.2020
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;

ENTITY SPi_test IS
-- Declarations

END SPi_test ;

--
-- VHDL Architecture OBC_test.SPi_test.struct
--
-- Created:
--          by - student.UNKNOWN (DESKTOP-3I0F3HP)
--          at - 14:27:53 14.07.2020
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;

LIBRARY OBC_test;
LIBRARY SPI;

ARCHITECTURE struct OF SPi_test IS

   -- Architecture declarations
   constant spi_wbits: positive := 8;
   constant dataBitNb: positive := 8;

   -- Internal signal declarations
   SIGNAL MISO              : std_ulogic;
   SIGNAL MOSI              : std_ulogic;
   SIGNAL SS_n              : std_ulogic;
   SIGNAL clock             : std_ulogic;
   SIGNAL data_transfer_end : std_ulogic;
   SIGNAL endTransfer       : std_logic;
   SIGNAL masterData        : std_ulogic_vector(dataBitNb-1 DOWNTO 0);
   SIGNAL masterFull        : std_ulogic;
   SIGNAL masterWr          : std_ulogic;
   SIGNAL reset             : std_ulogic;
   SIGNAL rx_data           : std_ulogic_vector(spi_wbits-1 DOWNTO 0);
   SIGNAL rx_data_wr        : std_ulogic;
   SIGNAL sClk              : std_ulogic;
   SIGNAL slaveData         : std_ulogic_vector(dataBitNb-1 DOWNTO 0);
   SIGNAL slaveEmpty        : std_ulogic;
   SIGNAL slaveRd           : std_ulogic;
   SIGNAL tx_data           : std_ulogic_vector(spi_wbits-1 DOWNTO 0);
   SIGNAL tx_data_rd        : std_ulogic;
   SIGNAL tx_data_valid     : std_ulogic;


   -- Component Declarations
   COMPONENT test
   GENERIC (
      dataBitNb : positive := dataBitNb;
      spi_wbits : positive := spi_wbits
   );
   PORT (
      data_transfer_end : IN     std_ulogic ;
      endTransfer       : IN     std_logic ;
      masterFull        : IN     std_ulogic ;
      rx_data           : IN     std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      rx_data_wr        : IN     std_ulogic ;
      slaveData         : IN     std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      slaveEmpty        : IN     std_ulogic ;
      tx_data_rd        : IN     std_ulogic ;
      clock             : OUT    std_ulogic ;
      masterData        : OUT    std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      masterWr          : OUT    std_ulogic ;
      reset             : OUT    std_ulogic ;
      slaveRd           : OUT    std_ulogic ;
      tx_data           : OUT    std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      tx_data_valid     : OUT    std_ulogic 
   );
   END COMPONENT;
   COMPONENT spiFifo
   GENERIC (
      dataBitNb      : positive   := 8;
      fifoDepth      : positive   := 8;      --Max nbr of sequential transfers
      spiClockPeriod : positive   := 1;      --SPI clock divider
      spiFramePeriod : positive   := 1;      --SPI Inter Frame Gap
      cPol           : std_ulogic := '0';
      cPha           : std_ulogic := '0'
   );
   PORT (
      slaveRd     : IN     std_ulogic ;
      slaveData   : OUT    std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      clock       : IN     std_ulogic ;
      MISO        : IN     std_ulogic ;
      reset       : IN     std_ulogic ;
      MOSI        : OUT    std_ulogic ;
      slaveEmpty  : OUT    std_ulogic ;
      masterFull  : OUT    std_ulogic ;
      masterData  : IN     std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      masterWr    : IN     std_ulogic ;
      sClk        : OUT    std_ulogic ;
      endTransfer : OUT    std_logic ;
      SS_n        : OUT    std_ulogic 
   );
   END COMPONENT;
   COMPONENT spiSlave
   GENERIC (
      spi_CPHA  : integer range 0 to 1         := 1;
      spi_CPOL  : integer range 0 to 1         := 1;
      spi_wbits : integer range 1 to (2**16)-1 := 8      --size of spi word
   );
   PORT (
      CS                : IN     std_ulogic ;
      MOSI              : IN     std_ulogic ;
      clock             : IN     std_ulogic ;
      reset             : IN     std_uLogic ;
      sClk              : IN     std_ulogic ;
      tx_data           : IN     std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      tx_data_valid     : IN     std_ulogic ;
      MISO              : OUT    std_ulogic ;
      data_transfer_end : OUT    std_ulogic ;
      rx_data           : OUT    std_ulogic_vector (spi_wbits-1 DOWNTO 0);
      rx_data_wr        : OUT    std_ulogic ;
      tx_data_rd        : OUT    std_ulogic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : spiFifo USE ENTITY SPI.spiFifo;
   FOR ALL : spiSlave USE ENTITY SPI.spiSlave;
   FOR ALL : test USE ENTITY OBC_test.test;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : test
      GENERIC MAP (
         dataBitNb => dataBitNb,
         spi_wbits => 8
      )
      PORT MAP (
         data_transfer_end => data_transfer_end,
         endTransfer       => endTransfer,
         masterFull        => masterFull,
         rx_data           => rx_data,
         rx_data_wr        => rx_data_wr,
         slaveData         => slaveData,
         slaveEmpty        => slaveEmpty,
         tx_data_rd        => tx_data_rd,
         clock             => clock,
         masterData        => masterData,
         masterWr          => masterWr,
         reset             => reset,
         slaveRd           => slaveRd,
         tx_data           => tx_data,
         tx_data_valid     => tx_data_valid
      );
   U_1 : spiFifo
      GENERIC MAP (
         dataBitNb      => 8,
         fifoDepth      => 8,         --Max nbr of sequential transfers
         spiClockPeriod => 1,         --SPI clock divider
         spiFramePeriod => 1,         --SPI Inter Frame Gap
         cPol           => '0',
         cPha           => '0'
      )
      PORT MAP (
         slaveRd     => slaveRd,
         slaveData   => slaveData,
         clock       => clock,
         MISO        => MISO,
         reset       => reset,
         MOSI        => MOSI,
         slaveEmpty  => slaveEmpty,
         masterFull  => masterFull,
         masterData  => masterData,
         masterWr    => masterWr,
         sClk        => sClk,
         endTransfer => endTransfer,
         SS_n        => SS_n
      );
   U_2 : spiSlave
      GENERIC MAP (
         spi_CPHA  => 1,
         spi_CPOL  => 1,
         spi_wbits => 8         --size of spi word
      )
      PORT MAP (
         CS                => SS_n,
         MOSI              => MOSI,
         clock             => clock,
         reset             => reset,
         sClk              => sClk,
         tx_data           => tx_data,
         tx_data_valid     => tx_data_valid,
         MISO              => MISO,
         data_transfer_end => data_transfer_end,
         rx_data           => rx_data,
         rx_data_wr        => rx_data_wr,
         tx_data_rd        => tx_data_rd
      );

END struct;
