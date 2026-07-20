entity mux_group3 is
    port(
        a,b,c : in std_logic;
        sel : in std_logic_vector (2 downto 0);
        y : out std_logic
    );
end entity;

architecture rtl of mux_group3 is
    begin
        process (a,b,c, sel)
        begin
            case sel is
                when "000" | "001" => y <= a;
                when "010" | "011" => y <= b;
                when others => y <= c;
                end case;
            end process;
            end architecture;



entity dff_reset is
  port (
    clock, reset, d : in std_logic;
    q : out std_logic
  );
end entity;

architecture rtl of dff_reset is
    begin
        process(clock, reset)
        begin
            if reset = '1' then q <= '0';
            elsif rising_edge(clock) then q <= d;
            end if;
        end process;
    end architecture;
