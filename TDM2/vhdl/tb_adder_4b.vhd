library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_adder_4b is
end entity tb_adder_4b;

architecture tb of tb_adder_4b is
  signal S_A, S_B : STD_LOGIC_VECTOR(3 downto 0);
  signal S_S : STD_LOGIC_VECTOR(3 downto 0);
  signal S_OVF : STD_LOGIC;

begin
  UUT: entity work.adder_4b
    port map (A => S_A, 
              B => S_B, 
              S => S_S,
            OVF => S_OVF);
  S_A <= "0000", "0011" after 20 ns, "0111" after 40 ns, "1111" after 60 ns, "0111" after 80 ns, "1000" after 100 ns;
  S_B <= "0000", "0010" after 20 ns, "1111" after 40 ns, "0001" after 60 ns, "0001" after 80 ns, "1111" after 100 ns;
end architecture tb;
