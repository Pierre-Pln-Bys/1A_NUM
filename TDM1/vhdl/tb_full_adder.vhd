library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_adder is
end entity tb_full_adder;

architecture tb of tb_full_adder is
  signal S_A, S_B, S_C : STD_LOGIC;
  signal S_SUM, S_CARRY : STD_LOGIC;

begin
  UUT: entity work.full_adder
    port map (A => S_A, 
              B => S_B, 
              C => S_C, 
              SUM => S_SUM, 
              CARRY => S_CARRY);
  S_A <= '0', '1' after 40 ns;
  S_B <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
  S_C <= '0', '1' after 10 ns, '0' after 10 ns, '1', '0' after 10 ns, '1' after 10 ns, '0' after 10 ns, '1' after 10 ns;
end architecture tb;