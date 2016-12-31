LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY and_1 IS PORT (
	i1,i2: IN STD_LOGIC;
	o1: OUT STD_LOGIC
);
END and_1;

ARCHITECTURE dataflow OF and_1 IS
BEGIN
	o1 <= i1 AND NOT i2;
END dataflow;