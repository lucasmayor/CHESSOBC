-- VHDL Entity gates.transLogUlog.symbol
--
-- Created:
--          by - francois.users (Aphelia)
--          at - 18:48:38 02/22/10
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;
LIBRARY gates;
  USE gates.gates.all;

ENTITY transLogUlog IS
   GENERIC( 
      delay      : time     := gateDelay;
      dataNbBits : positive := 8
   );
   PORT( 
      in1  : IN     std_logic_vector (dataNbBits-1 DOWNTO 0);
      out1 : OUT    std_ulogic_vector (dataNbBits-1 DOWNTO 0)
   );

-- Declarations

END transLogUlog ;

