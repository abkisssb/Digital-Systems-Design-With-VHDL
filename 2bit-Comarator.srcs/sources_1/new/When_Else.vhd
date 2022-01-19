----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2021 05:49:06 PM
-- Design Name: Abiola T Rashidi
-- Module Name: When_Else - Behavioral
-- Project Name: LAB1
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

entity When_Else is
    Port ( 
          in1,in2: in std_logic_vector(1 downto 0); 
          ls_o: out std_logic; 
          eq_o: out std_logic;
          gr_o: out std_logic);
end When_Else;

architecture Behavioral of When_Else is

begin

 eq_o <= '1' when (in1 = in2) else '0';
 ls_o <= '1' when (in1 < in2) else '0';
 gr_o <= '1' when (in1 > in2) else '0';


end Behavioral;
