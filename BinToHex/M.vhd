LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity M is
  port(
    a,b: in std_logic_vector(0 to 3);
    s: in std_logic_vector(1 downto 0);
    r1, r2: out std_logic_vector(0 to 3)
  );
end entity;

architecture bdf_type of M is
  signal res: std_logic_vector(4 downto 0);
  begin
    with s select
      res <=
        ('0'&a)+('0'&b)   		when "00",
        ('0'&a)-('0'&b)   		when "01",
        ('0'&a)xor("00101")    	when "10",
        ('0'&a)+('0'&a)         when "11",
        "XXXXX"           		when others;
    r2 <= res(3 downto 0);
    r1(0) <= res(4);
    r1(1) <= '0';
    r1(2) <= '0';
    r1(3) <= '0';
end bdf_type;