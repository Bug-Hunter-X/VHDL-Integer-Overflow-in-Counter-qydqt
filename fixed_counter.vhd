```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fixed_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer
  );
end entity;

architecture behavioral of fixed_counter is
  signal count : unsigned(7 downto 0) := (others => '0'); -- Use unsigned type with defined range
begin
  process (clk, rst)
  begin
    if rst = '1' then
      count <= (others => '0');
    elsif rising_edge(clk) then
      count <= count + 1;
    end if;
  end process;
  count_out <= to_integer(count); -- Convert back to integer for output
  --For better handling of potential overflow you may want to add an overflow flag 
  -- and handle it gracefully
end architecture;
```