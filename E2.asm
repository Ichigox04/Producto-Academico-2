.model small
.stack
.data
    n     dw 5
    fant  dw 1
    f     dw 1
    i     dw 2

.code
main PROC 
WHILE:
    mov ax, i       ; Cargar i en AX
    cmp ax, n       ; Comparar i con n
    jg EX           ; Si i > n, salir del bucle

    ; Versión optimizada (sin variable temporal)
    mov ax, f       ; ax = f
    mov bx, fant    ; bx = fant
    mov fant, ax    ; fant = f
    add ax, bx      ; ax = f + fant
    mov f, ax       ; f = f + fant

    inc i           ; i = i + 1
    jmp WHILE       ; Repetir el ciclo

EX:
    .exit
main ENDP
end main
