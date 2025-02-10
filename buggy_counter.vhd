```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity buggy_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer
  );
end entity;

architecture behavioral of buggy_counter is
  signal count : integer := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      count <= 0;
    elsif rising_edge(clk) then
      count <= count + 1;
    end if;
  end process;
  count_out <= count;
end architecture;
```