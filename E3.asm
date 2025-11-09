.model small
.stack
.data
    a   dw 5
    b   dw 15
    mcd dw ?

.code
main PROC 
WHILE:
    mov ax, a
    mov bx, b
    cmp ax, bx
    je EX           ; Si iguales, terminar
    
    jg IF           ; Si a > b
    
    ; ELSE (b > a)
    sub b, ax       ; b = b - a (directamente)
    jmp WHILE

IF:
    sub a, bx       ; a = a - b (directamente)  
    jmp WHILE

EX:
    mov ax, a
    mov mcd, ax     ; Guardar resultado
    .exit
main ENDP
end main
