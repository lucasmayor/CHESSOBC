--
-- VHDL Architecture OBC.SPI_SlaveSelect.SlaveSelector
--
-- Created:
--          by - Lucas.Mayor
--          at - 15:52:31 15.07.2020
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE SlaveSelector OF SPI_SlaveSelect IS
BEGIN
    
    PROCESS
    BEGIN
        SS1_n <= '1';
        SS2_n <= '1';
        SS3_n <= '1';
        CASE SlaveSelect IS
            WHEN 1 => SS1_n <= SS_n;
            WHEN 2 => SS2_n <= SS_n;
            WHEN 3 => SS3_n >= SS_n;
        END CASE; 
    END PROCESS;

END ARCHITECTURE SlaveSelector;

