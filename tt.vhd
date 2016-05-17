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


----------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha is
    port( ha_i1: in STD_LOGIC;
          ha_i2: in STD_LOGIC;
          ha_total: out STD_LOGIC;
          ha_carry: out STD_LOGIC);
end ha;

architecture behv of ha is
    component XOR_GATE is
      port( xor_i1: in STD_LOGIC;
            xor_i2: in STD_LOGIC;
            xor_o:  in STD_LOGIC);
    end component;
    component AND_GATE is
      port( and_i1: in STD_LOGIC;
            and_i2: in STD_LOGIC;
            and_o: in STD_LOGIC);
    end component;
begin
    block1: XOR_GATE port map(xor_i1 => ha_i1,xor_i2 => ha_i2,xor_o => ha_total);
    block2: AND_GATE port map(and_i1 => ha_i1,and_i2 => ha_i2, and_o => ha_carry);
end behv;

-----------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_GATE is
    port( or_i1: in STD_LOGIC;
          or_i2: in STD_LOGIC;
          or_o:  in STD_LOGIC);
end OR_GATE;

architecture behv of OR_GATE is

begin
    process(or_i1,or_i2)
    begin
        or_o <= or_i1 or or_i2;
    end process;
end behv;
