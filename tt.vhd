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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_GATE is
    port( xor_i1: in STD_LOGIC;
          xor_i2: in STD_LOGIC;
          xor_o:  in STD_LOGIC);
end XOR_GATE;

architecture behv of XOR_GATE is

begin
    process(xor_i1,xor_i2)
    begin
        xor_o <= xor_i1 xor xor_i2;
    end process;
end behv;
