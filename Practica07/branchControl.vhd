LIBRARY  ieee;
USE  ieee.std_logic_1164.all;
LIBRARY  work;

entity branchControl is
  port (
	PL,JB,BC,N,Z: in std_logic;
	fd: out std_logic_vector(1 downto 0)
  ) ;
end entity ; -- branchControl

architecture bdf_type of branchControl is

begin

fd: PL & JB & BC;

end architecture ; -- bdf_type