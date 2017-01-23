-- A wrapper
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- PLL simulation
library UNISIM;
use UNISIM.vcomponents.all;

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
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       current_state   : out std_logic_vector(15 downto 0));
end component;

begin
    CELLULAR_inst : Cellular
    port map
    (
       -- clock
       system1000 => clk100,
       system1000_rstn => not reset,
       current_state => led
    );

end Wrapper;
