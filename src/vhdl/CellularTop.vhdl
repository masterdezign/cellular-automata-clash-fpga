-- A wrapper
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CellularTop is
    port (
        clk100 : in std_logic;
        reset : in std_logic;

        -- LEDs
        led : out std_logic_vector(15 downto 0)
    );
end CellularTop;

architecture Wrapper of CellularTop is

component Cellular is
  port(
       CLOCK      : in std_logic;
       RST : in std_logic;
       en : in boolean;
       current_state   : out std_logic_vector(15 downto 0));
end component;

begin
    CELLULAR_inst : Cellular
    port map
    (
       -- clock
       CLOCK => clk100,
       RST => reset,
       en => true,
       current_state => led
    );

end Wrapper;
