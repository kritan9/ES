;ES LAB3 EXERCISE B TIMER 0 MODE 0
		ORG 00H

		MOV TMOD,#00 ; TIMER 0 MODE 0 ;2
		
REPEAT:	MOV R2,#02H		;2
LOOP1:	MOV R1,#06H		;2

HERE1:	MOV TL0,#0DH	;2	
		MOV TH0,#10H	;2
		ACALL DELAY		;2
		DJNZ R1,HERE1	;2

		CPL P0.0		;1
		DJNZ R2,LOOP1	;2

		MOV R2,#0AH		;2
LOOP2:	MOV R1,#06H		;2

HERE2:	MOV TL0,#02H	;2	
		MOV TH0,#0D0H	;2
		ACALL DELAY		;2
		DJNZ R1,HERE2	;2

		CPL P0.0		;1
		DJNZ R2,LOOP2	;1
		SJMP REPEAT		;2
		
DELAY:	SETB TR0		;1
AGAIN:	JNB TF0, AGAIN	; X = 7666 FOR 100ms AND 1533 FOR 20ms
		CLR TR0			;1
		CLR TF0			;1
		RET				;2
		
		END