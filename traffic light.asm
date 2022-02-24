NR EQU P1.0;  
NY EQU P1.1; 
NG EQU P1.2; 
SR EQU P1.3; 
SY EQU P1.4; 
SG EQU P1.5; 
ER EQU P1.6; 
EY EQU P1.7; 
EG EQU P3.0; 
RW EQU P3.1; 
YW EQU P3.2; 
GW EQU P3.3 
MOV P1, #00H; Initialize P1 
MOV P3, #00H; initialize P3 
TOP: SETB NR; North red ON 
SETB SR; South red ON 
SETB EG; East green ON 
SETB GW; West green ON 
ACALL DELAY20; Absolute call delay subroutine of 30 secs  
CLR EG; East green OFF 
CLR GW; West green OFF 
SETB EY; East yellow ON 
SETB YW; West yellow ON 
ACALL Y_DELAY6; Absolute call delay subroutine of 6 secs 
CLR EY; East yellow OFF 
CLR YW; West yellow OFF 
SETB ER; East red ON 
SETB RW; West red ON  
CLR NR; North red OFF 
CLR SR; South red OFF 
SETB NG; North green ON 
SETB SG; South green ON 
ACALL DELAY20; Absolute call delay subroutine of 30 secs 
CLR NG; North green OFF 
CLR SG; South green OFF 
SETB NY; North yellow ON 
SETB SY; South yellow ON 
ACALL Y_DELAY6; Absolute call delay subroutine of 6 secs 
CLR NY; North yellow OFF 
CLR SY; South yellow OFF 
CLR ER; East red OFF 
CLR RW; West red OFF 
AJMP TOP; Absolute jump to TOP 
DELAY20:MOV R1, #0E0H 
L1: MOV R2, #0FFH 
L2: MOV R3, #0FFH 
L3: DJNZ R3, L3 
L4: DJNZ R2, L2 
DJNZ R1, L1 
RET; 
Y_DELAY6:MOV R1, #030H; 
L5: MOV R2, #0FFH; 
L6: MOV R3, #0FFH; 
L7: DJNZ R3, L7; 
L8: DJNZ R2, L6; 
DJNZ R1, L5; 
RET; 
