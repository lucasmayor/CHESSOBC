--
-- VHDL Architecture SPI.spiSlave_shiftreg.fsm
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
 
ARCHITECTURE fsm OF spiSlave_shiftreg IS

   -- Architecture Declarations
   SIGNAL cnt_l : unsigned( 2 DOWNTO 0 );  
   SIGNAL data_i_l : std_ulogic_vector( spi_wbits-1 DOWNTO 0 );  
   SIGNAL data_o_l : std_ulogic_vector( spi_wbits-1 DOWNTO 0 );  
   SIGNAL data_valid_rx_l : std_ulogic;  
   SIGNAL data_valid_tx_l : std_ulogic;  

   TYPE STATE_TYPE IS (
      fetch_and_transfer_data0,
      transfer_data0,
      transfer_data_end0
   );
 
   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clock_spi,
      reset
   )
   -----------------------------------------------------------------
   BEGIN
      IF (reset = '1') THEN
         current_state <= fetch_and_transfer_data0;
         -- Default Reset Values
         cnt_l <= (OTHERS => '0');
         data_i_l <= (OTHERS => '0');
         data_o_l <= (OTHERS => '0');
         data_valid_rx_l <= '0';
         data_valid_tx_l <= '0';
      ELSIF (rising_edge(clock_spi)) THEN
         current_state <= next_state;

         -- Combined Actions
         CASE current_state IS
            WHEN fetch_and_transfer_data0 => 
               IF (data_valid_tx_l = '0') THEN
                 --data_i_l <= (OTHERS => '0');
                 IF (data_i_valid = '1') THEN
                   data_i_l <= data_i;
                   data_valid_tx_l <= '1';
                 ENd IF;
               END IF;
               IF (data_valid_rx_l = '1') THEN
               --  IF (datao_we = '1') THEN
                   --data have been read
                   data_valid_rx_l <= '0';
               -- ENd IF;
               ENd IF;
               ---- TRANSMIT DATA
               --IF (spi_CPHA = 1) OR (data_valid_tx_l = '0') THEN
               --  miso <= '0';
               --ELSE
               --  miso <= data_l(spi_wbits-1-to_integer(cnt_l));
               --END IF;
               -- SHIFTREG
               IF spi_CPHA = 1 THEN
                 cnt_l <= (OTHERS => '0');
               ELSE
                 IF CS = '1' THEN
                   data_o_l(spi_wbits-1-to_integer(cnt_l)) <= MOSI;
                   cnt_l <= cnt_l +1;
                 END IF;
               END IF;
               --busy <= '1';
            WHEN transfer_data0 => 
               if sck_re = '1' then
                 cnt_l <= cnt_l + 1;
               end if;
               if sck_fe = '1' then
                 data_o_l(spi_wbits-1-to_integer(cnt_l)) <= MOSI;
               end if;
               --miso <= data_l(spi_wbits-1-to_integer(cnt_l));
               --busy <= '1';
            WHEN transfer_data_end0 => 
               --miso <= data_l(spi_wbits-1-to_integer(cnt_l));
               if sck_re = '1' then
                 cnt_l <= cnt_l + 1;
               end if;
               if sck_fe = '1' then
                 data_o_l(spi_wbits-1-to_integer(cnt_l)) <= MOSI;
               end if;
               --busy <= '1';
               data_valid_tx_l <= '0';
               data_valid_rx_l <= '1';
            WHEN OTHERS =>
               NULL;
         END CASE;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      CS,
      SCK_re,
      cnt_l,
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN fetch_and_transfer_data0 => 
            IF ((CS = '1') AND (sck_re = '1')) THEN 
               next_state <= transfer_data0;
            ELSE
               next_state <= fetch_and_transfer_data0;
            END IF;
         WHEN transfer_data0 => 
            IF (cnt_l >= spi_wbits-1) THEN 
               next_state <= transfer_data_end0;
            ELSE
               next_state <= transfer_data0;
            END IF;
         WHEN transfer_data_end0 => 
            IF (CS = '0') THEN 
               next_state <= fetch_and_transfer_data0;
            ELSE
               next_state <= transfer_data_end0;
            END IF;
         WHEN OTHERS =>
            next_state <= fetch_and_transfer_data0;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state,
      data_valid_rx_l,
      data_valid_tx_l
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment
      data_i_re <= '0';
      data_o_valid <= '0';

      -- Combined Actions
      CASE current_state IS
         WHEN fetch_and_transfer_data0 => 
            -- FETCH DATA
            IF (data_valid_tx_l = '0') THEN
              data_i_re <= '1';
            END IF;
            -- WRITE DATA
            IF (data_valid_rx_l = '1') THEN
              data_o_valid <= '1';
            END IF;
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
   -- Concurrent Statements
   data_o <= data_o_l;
   miso <= data_i_l(spi_wbits-1-to_integer(cnt_l));
   data_transfer_end <= data_valid_rx_l;
END fsm;