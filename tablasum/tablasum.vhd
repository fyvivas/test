library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tablasum is
    Port (      SUM : in STD_LOGIC_VECTOR (4 downto 0);
                D : out STD_LOGIC_VECTOR (3 downto 0);
                U : out STD_LOGIC_VECTOR (3 downto 0));
end tablasum;

architecture Behavioral of tablasum is
     
begin 
  
  with SUM select
    D  <=     "0000" when "00000",
                "0000" when "00001",
                "0000" when "00010",
                "0000" when "00011",
                "0000" when "00100",
                "0000" when "00101",
                "0000" when "00110",
                "0000" when "00111",
                "0000" when "01000",
                "0000" when "01001",
                "0001" when "01010",
                "0001" when "01011",
                "0001" when "01100",
                "0001" when "01101",
                "0001" when "01110",
                "0001" when "01111",
                "0001" when "10000",
                "0001" when "10001",
                "0001" when "10010",
                "0001" when "10011",
                "0010" when "10100",
                "0010" when "10101",
                "0010" when "10110",
                "0010" when "10111",
                "0010" when "11000",
                "0010" when "11001",
                "0010" when "11010",
                "0010" when "11011",
                "0010" when "11100",
                "0010" when "11101",
                "0011" when "11110",
                "0011" when "11111";

    U  <=        "0000" when (SUM ="00000") else
                "0000" when (SUM ="00001") else
                "0000" when (SUM ="00010") else
                "0000" when (SUM ="00011") else
                "0000" when (SUM ="00100") else
                "0000" when (SUM ="00101") else
                "0000" when (SUM ="00110") else
                "0000" when (SUM ="00111") else
                "0000" when (SUM ="01000") else
                "0001" when (SUM ="01001") else
                "0001" when (SUM ="01010") else
                "0001" when (SUM ="01011") else
                "0001" when (SUM ="01100") else
                "0001" when (SUM ="01101") else
                "0001" when (SUM ="01110") else
                "0001" when (SUM ="01111") else
                "0001" when (SUM ="10000") else
                "0001" when (SUM ="10001") else
                "0001" when (SUM ="10010") else
                "0010" when (SUM ="10011") else
                "0010" when (SUM ="10100") else
                "0010" when (SUM ="10101") else
                "0010" when (SUM ="10110") else
                "0010" when (SUM ="10111") else
                "0010" when (SUM ="11000") else
                "0010" when (SUM ="11001") else
                "0010" when (SUM ="11010") else
                "0010" when (SUM ="11011") else
                "0010" when (SUM ="11100") else
                "0010" when (SUM ="11101") else
                "0011" when (SUM ="11110") else
                "0011" when (SUM ="11111");

end Behavioral;