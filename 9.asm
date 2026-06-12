.MODEL SMALL
.STACK 100H 
.DATA
.CODE
MAIN PROC 
    
    MOV AH, 1      
    INT 21H
    MOV BL, AL
    
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 1      
    INT 21H
    MOV CL, AL
    
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 1      
    INT 21H
    MOV DL, AL
    
    
    CMP BL, CL
    JNC SKIP
    MOV BL, CL
    SKIP:
    CMP BL, DL
    JNC PRINT
    MOV BL, DL
    PRINT:
    MOV DL, BL
    MOV AH, 2
    INT 21H
    

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN