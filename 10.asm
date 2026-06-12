.MODEL SMALL
.STACK 100H 
.DATA
.CODE
MAIN PROC 
    
    MOV CL, 5
    MOV BL, 1
    OUTER_LOOP:
    MOV CH, BL
    INNER_LOOP:
    MOV DL, '*'
    MOV AH, 2
    INT 21H
    
    DEC CH
    JNZ INNER_LOOP
    
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    INC BL
    DEC CL
    JNZ OUTER_LOOP
    
    

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN