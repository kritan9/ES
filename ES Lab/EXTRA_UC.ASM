		ORG 00H
		MOV P0,#00H
		MOV R6,#1H
		MOV R7,#6H
		MOV P2,#00H
		MOV DPTR,#LABEL1
		
MAIN:	MOV A,R6
		SETB P2.0
		ACALL DISPLAY
		MOV P0,A
		ACALL DELAY
		CLR P2.0
		MOV A,R7
		SETB P2.1
		ACALL DISPLAY
		MOV P0,A
		ACALL DELAY
		CLR P2.1
		SJMP MAIN
		
DELAY:	MOV R3,#02H
DEL1:	MOV R2,#0FAH
DEL2:	DJNZ R2,DEL2
		DJNZ R3,DEL1
		RET
		
DISPLAY:MOVC A,@A+DPTR
		RET
		
LABEL1:	DB 3FH
		DB 06H
		DB 5BH
		DB 4FH
		DB 66H
		DB 6DH
		DB 7DH
		DB 07H
		DB 7FH
		DB 6FH
		
		END