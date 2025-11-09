.model small
.stack
.data
    a    dw 13
    b    dw 16
    temp dw ?      ; variable temporal para el intercambio

.code
main PROC 

; ---- Bucle WHILE (a > 10) ----
WHILE:
    mov ax, a
    cmp ax, 10
    jle END_WHILE   ; Si a <= 10, terminar el bucle

    dec a           ; a = a - 1
    add b, 2        ; b = b + 2
    jmp WHILE

END_WHILE:

; ---- Condición IF (a < b) ----
mov ax, a
cmp ax, b
jge ELSE           ; Si a >= b, ir al else

; ---- swap(a, b) ----
mov ax, a
mov temp, ax
mov ax, b
mov a, ax
mov ax, temp
mov b, ax
jmp EX

; ---- ELSE ----
ELSE:
mov ax, a
dec ax
mov b, ax

; ---- Fin del programa ----
EX:
.exit
main ENDP
end main
