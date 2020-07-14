-- VHDL Entity Memory.bramDualportWritefirst.symbol
--
-- Created:
--          by - francois.francois (Aphelia)
--          at - 13:45:15 08/28/19
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.1 (Build 12)
--
LIBRARY ieee;
    USE ieee.std_logic_1164.all;
    USE ieee.numeric_std.all;

ENTITY bramDualportWritefirst IS
   GENERIC( 
      addressBitNb : positive := 8;
      dataBitNb    : positive := 8;
      initFile     : string   := "bramInit.txt"
   );
   PORT( 
      clockA   : IN     std_ulogic;
      enA      : IN     std_ulogic;
      writeEnA : IN     std_ulogic;
      addressA : IN     std_ulogic_vector (addressBitNb-1 DOWNTO 0);
      dataInA  : IN     std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      dataOutA : OUT    std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      clockB   : IN     std_ulogic;
      enB      : IN     std_ulogic;
      writeEnB : IN     std_ulogic;
      addressB : IN     std_ulogic_vector (addressBitNb-1 DOWNTO 0);
      dataInB  : IN     std_ulogic_vector (dataBitNb-1 DOWNTO 0);
      dataOutB : OUT    std_ulogic_vector (dataBitNb-1 DOWNTO 0)
   );

-- Declarations

END bramDualportWritefirst ;
