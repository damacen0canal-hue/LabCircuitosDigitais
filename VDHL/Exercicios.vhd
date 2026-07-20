entity NOME is
    port (
        a, b : in  std_logic;
        s    : out std_logic
    );
end entity;

architecture rtl of NOME is
begin
    s <= a and b;  -- atribuição concorrente
end architecture;

