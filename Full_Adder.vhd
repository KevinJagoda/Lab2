----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Kevin Jagoda
-- 
-- Create Date:    20:02:39 02/09/2014 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is


signal XOR_1 : std_logic;
signal XOR_2 : std_logic;
signal AND_1 : std_logic;
signal AND_2 : std_logic;
signal OR_1 : std_logic;


begin

XOR_1 <= A XOR B;
XOR_2 <= XOR_1 XOR Cin;
AND_1 <= XOR_1 AND Cin;
AND_2 <= A and B;
OR_1 <= AND_1 and AND_2;
S <= XOR_2;
Cout <= OR_1;

end Behavioral;

