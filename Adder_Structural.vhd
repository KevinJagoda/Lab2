----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Kevin Jagoda
-- 
-- Create Date:    13:59:55 02/10/2014 
-- Design Name: 
-- Module Name:    Adder_Structural - Structural 
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

entity Adder_Structural is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  Cout : out STD_LOGIC_VECTOR (3 downto 0));
end Adder_Structural;

architecture Structural of Adder_Structural is


component Full_Adder is
	port(A : in STD_LOGIC;
		  B : in STD_LOGIC;
		  Cin : in STD_LOGIC;
		  Cout : out STD_LOGIC;
		  S : out STD_LOGIC);
end component Full_Adder;


--signal C_0 : std_logic;
--signal C_1 : std_logic;
--signal C_2 : std_logic;
--signal C_3 : std_logic;


begin

	Adder_0: Full_Adder PORT MAP(
	A => A(0),
	B => B(0),
	Cin => Cin(0),
	Cout=> Cout(0),
	S => S(0)
	);
	
	Adder_1: Full_Adder PORT MAP(
	A => A(1),
	B => B(1),
	Cin => Cin(1),
	Cout => Cout(1),
	S => S(1)
	);
	
	Adder_2: Full_Adder PORT MAP(
	A => A(2),
	B => B(2),
	Cin => Cin(2),
	Cout => Cout(2),
	S => S(2)
	);
	
	Adder_3: Full_Adder PORT MAP(
	A => A(3),
	B => B(3),
	Cin => Cin(3),
	Cout => Cout(3),
	S => S(3)
	);


end Structural;

