-- VHDL Entity gates.mux2to1ULogicVector.symbol
--
-- Created:
--          by - francois.users (Aphelia)
--          at - 11:27:52 11/17/16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.numeric_std.all;
LIBRARY gates;
  USE gates.gates.all;

ENTITY mux2to1ULogicVector IS
   GENERIC( 
      dataBitNb : positive := 8;
      delay     : time     := gateDelay
   );
   PORT( 
      in0    : IN     std_uLogic_vector (dataBitNb-1 DOWNTO 0);
      in1    : IN     std_uLogic_vector (dataBitNb-1 DOWNTO 0);
      sel    : IN     std_uLogic;
      muxOut : OUT    std_uLogic_vector (dataBitNb-1 DOWNTO 0)
   );

-- Declarations

END mux2to1ULogicVector ;
