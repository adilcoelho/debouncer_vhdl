library ieee;
use ieee.std_logic_1164.all;

ENTITY debounce IS
	GENERIC(
				time_ms : integer := 3;
				freq_clk: integer := 1000
	);
	PORT(
		  button : in std_logic;
		  clk : in std_logic;
		  debounced_out : out std_logic
	);
END ENTITY;

ARCHITECTURE arch OF debounce IS
BEGIN

	PROCESS (clk)
	VARIABLE counter_max: integer := time_ms * (freq_clk / 1e3);
	VARIABLE counter: integer := 0;
	BEGIN
		IF button = '0' THEN
			counter := 0;
			debounced_out <= '0';
		ELSIF clk'event and clk = '1' THEN
			IF counter < counter_max THEN
				counter := counter + 1;
			ELSE
				debounced_out <= '1';
			END IF;	
		END IF;
	END PROCESS;
	
END ARCHITECTURE;