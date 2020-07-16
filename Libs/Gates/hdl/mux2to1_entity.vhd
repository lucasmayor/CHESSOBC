-- VHDL Entity gates.mux2to1.symbol
--
-- Created:
--          by - francois.users (Aphelia)
--          at - 10:10:04 11/17/16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
LIBRARY gates;
  USE gates.gates.all;

ENTITY mux2to1 IS
   GENERIC( 
      delay : time := gateDelay
   );
   PORT( 
      in0    : IN     std_uLogic;
      in1    : IN     std_uLogic;
      sel    : IN     std_uLogic;
      MuxOut : OUT    std_uLogic
   );

-- Declarations

END mux2to1 ;

