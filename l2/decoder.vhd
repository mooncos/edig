library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
Port (dec_in : in STD_LOGIC_VECTOR (2 downto 0);
		en : in STD_LOGIC;
		dec_out : out STD_LOGIC_VECTOR (7 downto 0));
end decoder;

architecture Behavioural of decoder is

signal temp: std_logic_vector(7 downto 0);


begin

with dec_in select temp <= "00000001" when "000",
										"00000010" when "001",
										"00000100" when "010",
										"00001000" when "011",
										"00010000" when "100",
										"00100000" when "101",
										"01000000" when "110",
										"10000000" when "111",
										"00000000" when others;
with en select dec_out <= temp when '1', "00000000" when others;						

end Behavioural;
