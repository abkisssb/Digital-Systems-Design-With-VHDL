library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-------ENTITY--------------
entity boolean_eq_tb is
end boolean_eq_tb;

-------ARCHITECTURE--------------
architecture behavior OF boolean_eq_tb is 
component boolean_eq
   port (
         in1,in2: in std_logic_vector(1 downto 0); 
         ls_o: out std_logic; 
         eq_o: out std_logic;
         gr_o: out std_logic
 );
end component;
   signal in1, in2: std_logic_vector(1 downto 0);
   signal ls_o: std_logic;
   signal eq_o: std_logic;
   signal gr_o: std_logic ;
begin
  uut: boolean_eq port map (
   in1=> in1,
   in2=> in2,
   ls_o => ls_o,
   eq_o => eq_o,
   gr_o => gr_o );

stimuli: process
   begin		
    for i in 0 to 3 loop
          for j in 0 to 3 loop
                in1 <= std_logic_vector(to_unsigned(i,2)); 
                in2 <= std_logic_vector(to_unsigned(j,2)); 
               wait  for  10 ns;
           end  loop;
      end  loop;
    wait;
end process;
end;
 


