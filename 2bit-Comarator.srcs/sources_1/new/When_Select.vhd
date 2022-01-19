----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2021 09:14:47 PM
-- Design Name: 
-- Module Name: When_Select - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity When_Select is
    Port ( 
    in1,in2: in std_logic_vector(1 downto 0); 
    ls_o: out std_logic; 
    eq_o: out std_logic;
    gr_o: out std_logic);
    
end When_Select;

architecture Behavioral of When_Select is
begin

with in1=in2 select eq_o <='1' when true,
    '0' when others;
with in1<in2 select ls_o <='1' when true,
    '0' when others;
with in1>in2 select gr_o <='1' when true,
    '0' when others;

end Behavioral;
