library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity print is
    port (
        input_val: in std_logic_vector(7 downto 0);
        dec: out std_logic_vector(3 downto 0);
        uni: out std_logic_vector(3 downto 0)
    );
end entity print;

architecture behavioral of print is
    signal unsigned_input: unsigned(7 downto 0);
begin
    unsigned_input <= unsigned(input_val);

    dec <= std_logic_vector(unsigned_input/10)(3 downto 0);
    uni <= std_logic_vector(unsigned_input mod 10)(3 downto 0);
end architecture behavioral;