LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY small_ckt IS PORT (
	A, B, C, D: IN STD_LOGIC;
	F:OUT STD_LOGIC
);
END small_ckt;

ARCHITECTURE structural OF small_ckt IS
	SIGNAL A_B, C_D: STD_LOGIC;
COMPONENT and_1 IS PORT (
	i1,i2: IN STD_LOGIC;
	o1: OUT STD_LOGIC
);
END COMPONENT;

COMPONENT and_2 IS PORT (
	i1,i2: IN STD_LOGIC;
	o1: OUT STD_LOGIC
);
END COMPONENT;

COMPONENT or_1 IS PORT (
	i1,i2: IN STD_LOGIC;
	o1: OUT STD_LOGIC
);
END COMPONENT;

BEGIN
	C1: and_1 PORT MAP (i1 => A, i2 => B, o1 => A_B);
	C2: and_2 PORT MAP (i1 => C, i2 => D, o1 => C_D);
	C3: or_1 PORT MAP (i1 => A_B, i2 => C_D, o1 => F);
END structural;