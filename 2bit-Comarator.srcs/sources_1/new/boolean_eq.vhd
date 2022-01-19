library IEEE;
use IEEE.std_logic_1164.all;
----------ENTITY-------
entity boolean_eq is
port (
 in1,in2: in std_logic_vector(1 downto 0); 
 ls_o: out std_logic; 
 eq_o: out std_logic;
 gr_o: out std_logic
 );
end boolean_eq;
---------------ARCHITECTURE----------------
architecture behavior of boolean_eq is
signal t0,t1,t2,t3,t4,t5,t6,t7,t8,t9: std_logic;
begin
   --------A EQUALS TO B-----------
 eq_o <= t0 OR t1 OR t2 OR t3;
 
 t0 <= ( (not in1(1)) AND (not in1(0)) AND (not in2(1)) AND (not in2(0)) );
 t1 <= ( (not in1(1)) AND in1(0) AND (not in2(1)) AND in2(0) );
 t2 <= ( in1(1) AND (not in1(0)) AND in2(1) AND (not in2(0)) );
 t3 <= ( in1(1) AND in1(0) AND in2(1) AND in2(0) );
 
  --------A LESS_THAN B-----------
 ls_o <= t4 OR t5 OR t6;
 
 t4 <= ( (not in1(0)) AND in2(1) AND in2(0) );
 t5 <= ( (not in1(1)) AND (not in1(0)) AND in2(0) );
 t6 <= ( (not in1(1)) AND in2(1) );
 
 --------A GREATER_THAN B-----------
 gr_o <= t7 OR t8 OR t9;
 
 t7 <= ( in1(1) AND in1(0) AND (not in2(0)) );
 t8 <= ( in1(1) AND (not in2(1)) );
 t9 <= ( in1(0) AND (not in2(1)) AND (not in2(0)) );
 
end behavior;