-- VHDL Entity gates.or4.symbol
--
-- Created:
--          by - francois.users (Aphelia)
--          at - 15:26:18 08/20/09
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
LIBRARY gates;
  USE gates.gates.all;

ENTITY or4 IS
   GENERIC( 
      delay : time := gateDelay
   );
   PORT( 
      in1  : IN     std_uLogic;
      in2  : IN     std_uLogic;
      in3  : IN     std_uLogic;
      in4  : IN     std_uLogic;
      out1 : OUT    std_uLogic
   );

-- Declarations

END or4 ;

