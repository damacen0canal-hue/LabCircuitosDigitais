entity and_gate is
    port (
        a, b : in std_logic;
        y : out std_logic
    );
end entity;

architecture rtl of and_gate is
    begin
        y <= a and b;
    end architecture;

entity reg4 is
    port (
        clock, reset, enable : in std_logic;
        d : in std_logic_vector (3 downto 0);
        q : out std_logic_vector (3 downto 0)
    );
    end entity;

architecture rtl of reg4 is
    begin
        process (clock)
        begin
            if rising_edge(clock) then
                if reset = '1' then
                    q <= (others => '0');
                elsif enable = '1' then
                    q <= d;
                end if;
            end if;
    end process;
                end architecture;


entity third is
    port (
        load, clear, clock : in std_logic;
        info : in std_logic_vector (7 downto 0);
        registrador : out std_logic_vector (7 downto 0)
    );
end entity;

architecture third3 of third is
    begin
        process (clock)
        begin
            if rising_edge(clock) then
                if load = '1' then registrador <= info;
                end if;
            elsif falling_edge(clock) then
                if clear = '1' then registrador <= (others => '0');
                end if;
                end if;
                end process;
                end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador4bits is
    port (
        clock, enable, reset : in std_logic;
        contador : buffer std_logic_vector (3 downto 0)
    );
end entity;

architecture mechanism of contador4bits is
    begin
        process (clock)
        begin
            if rising_edge(clock) then
                if enable = '1' then
                    contador <= std_logic_vector(unsigned(contador) + 1);
                end if;
            elsif falling_edge(clock) then
                if reset = '1' then
                    contador <= (others => '0');
                    end if;
                end if;
                end process;
                end architecture;

                    

                
