--
-- VHDL Architecture Common_test.rotaryToUnsigned_tb.struct
--
-- Created:
--          by - francois.francois (Aphelia)
--          at - 13:40:36 11/07/19
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;

LIBRARY Common;
LIBRARY Common_test;

ARCHITECTURE struct OF rotaryToUnsigned_tb IS

   -- Architecture declarations
   constant rotaryBitNb : positive := 4;
   constant outputBitNb : positive := 6;
   constant deglitchCounterBitNb : positive := 4;

   -- Internal signal declarations
   SIGNAL clock  : std_ulogic;
   SIGNAL number : unsigned(outputBitNb-1 DOWNTO 0);
   SIGNAL reset  : std_ulogic;
   SIGNAL rotary : unsigned(rotaryBitNb-1 DOWNTO 0);


   -- Component Declarations
   COMPONENT rotaryToUnsigned
   GENERIC (
      rotaryBitNb  : positive := 4;
      outputBitNb  : positive := 8;
      counterBitNb : positive := 10E3
   );
   PORT (
      clock  : IN     std_ulogic ;
      reset  : IN     std_ulogic ;
      number : OUT    unsigned (outputBitNb-1 DOWNTO 0);
      rotary : IN     unsigned (rotaryBitNb-1 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT rotaryToUnsigned_tester
   GENERIC (
      rotaryBitNb : positive := 4;
      outputBitNb : positive := 6
   );
   PORT (
      number : IN     unsigned (outputBitNb-1 DOWNTO 0);
      clock  : OUT    std_ulogic ;
      reset  : OUT    std_ulogic ;
      rotary : OUT    unsigned (rotaryBitNb-1 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : rotaryToUnsigned USE ENTITY Common.rotaryToUnsigned;
   FOR ALL : rotaryToUnsigned_tester USE ENTITY Common_test.rotaryToUnsigned_tester;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   I_DUT : rotaryToUnsigned
      GENERIC MAP (
         rotaryBitNb  => rotaryBitNb,
         outputBitNb  => outputBitNb,
         counterBitNb => deglitchCounterBitNb
      )
      PORT MAP (
         clock  => clock,
         reset  => reset,
         number => number,
         rotary => rotary
      );
   I_tb : rotaryToUnsigned_tester
      GENERIC MAP (
         rotaryBitNb => rotaryBitNb,
         outputBitNb => outputBitNb
      )
      PORT MAP (
         number => number,
         clock  => clock,
         reset  => reset,
         rotary => rotary
      );

END struct;