-- VHDL Entity gates.zeroSigned.symbol
--
-- Created:
--          by - francois.users (Aphelia)
--          at - 11:26:32 11/17/16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;
LIBRARY gates;
  USE gates.gates.all;

ENTITY zeroSigned IS
   GENERIC( 
      dataBitNb : positive := 8
   );
   PORT( 
      zero : OUT    signed (dataBitNb-1 DOWNTO 0)
   );

-- Declarations

END zeroSigned ;

