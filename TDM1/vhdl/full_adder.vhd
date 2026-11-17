library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is 
  Port ( A,B,C : in STD_LOGIC;
	SUM, CARRY : out STD_LOGIC);
end entity full_adder;

architecture rtl of full_adder is
begin 
  SUM <= A XOR B XOR C;
  CARRY <= (A AND B) OR (B AND C) OR (C AND A);
end architecture rtl;
