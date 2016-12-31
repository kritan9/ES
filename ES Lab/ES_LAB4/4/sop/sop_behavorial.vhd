LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sop IS PORT (
	X1,X2,X3,X4 : IN STD_LOGIC;
	Y : OUT STD_LOGIC
);
END sop;

ARCHITECTURE behavorial OF sop IS

BEGIN

PROCESS(X1,X2,X3,X4)

BEGIN

	Y <= (NOT X1 AND NOT X3) OR (NOT X2 AND NOT X3) OR (X1 AND X2 AND X3);

END PROCESS;

END behavorial;