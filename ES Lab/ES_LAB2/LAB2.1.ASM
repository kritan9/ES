;SINGLE DIGIT DECIMAL COUNTER 0 - 10 - 0
		ORG 00H
		
		MOV 40H,#03FH
		MOV 41H,#06H
		MOV 42H,#5BH
		MOV 43H,#4FH
		MOV 44H,#66H
		MOV 45H,#6DH
		MOV 46H,#7DH
		MOV 47H,#07H
		MOV 48H,#7FH
		MOV 49H,#6FH
		
		MOV P2,#01H
AGAIN:	MOV R0,#40H
		MOV R2,#0AH
C_INC:	MOV P0,@R0
		INC R0
		ACALL DELAY
		DJNZ R2,C_INC
		DEC R0
		
		MOV R2,#08H
C_DEC:	DEC R0
		MOV P0,@R0
		ACALL DELAY
		DJNZ R2,C_DEC
		AJMP AGAIN
		
DELAY: 	MOV R3,#5
HERE1:	MOV R4,#255
HERE2: 	MOV R5,#255
HERE3:	DJNZ R5,HERE3
		DJNZ R4,HERE2
		DJNZ R3,HERE1
		RET
		
		END
		