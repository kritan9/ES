;ES LAB3 EXERCISE B TIMER 0 MODE 2
		ORG 00H

		MOV TMOD,#02H 	; TIMER 0 MODE 2 ;2
		
REPEAT:	MOV R2,#02H		;2
HERE1:	MOV R1,#0B4H	;2
HER1:	MOV TL0,#0AH	;2	
		ACALL DELAY		;2
		DJNZ R1,HER1	;2
		CPL P0.0		;1
		DJNZ R2,HERE1	;2

		MOV R2,#0AH		;2
HERE2:	MOV R1,#024H	;2 ; B4/5 = 24
HER2:	MOV TL0,#0AH	;2	
		ACALL DELAY		;2
		DJNZ R1,HER2	;2
		CPL P0.0		;1
		DJNZ R2,HERE2	;2
		
		SJMP REPEAT		;2
		
DELAY:	SETB TR0		;1
AGAIN:	JNB TF0, AGAIN	; X = 245
		CLR TR0			;1
		CLR TF0			;1
		RET				;2
		
		END