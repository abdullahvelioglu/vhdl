library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_GATE is
    port( and_i1: in STD_LOGIC;
          and_i2: in STD_LOGIC;
          and_o: in STD_LOGIC);
end AND_GATE;

architecture behv of AND_GATE is

begin
    process(and_i1,and_i2)
    begin
        and_o <= and_i1 and and_i2;
    end process;
end behv;


---------------------------------------------------
