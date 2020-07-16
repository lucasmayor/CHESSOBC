-- VHDL Entity gates.bufferUlogic.symbol
--
-- Created:
--          by - Everyone.UNKNOWN (WE5450)
--          at - 09:12:02 09-Sep-16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2015.2 (Build 5)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
LIBRARY gates;
  USE gates.gates.all;

ENTITY bufferUlogic IS
   GENERIC( 
      delay : time := gateDelay
   );
   PORT( 
      in1  : IN     std_uLogic;
      out1 : OUT    std_uLogic
   );

-- Declarations

END bufferUlogic ;

