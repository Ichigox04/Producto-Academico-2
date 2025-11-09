.model small
.stack
.data
    x dw 5      ; valor inicial de x
    y dw 2      ; valor inicial de y

.code

main PROC 
    mov ax, x   ; Cargar x en AX
    mov bx, y   ; Cargar y en BX
    cmp ax, bx  ; Comparar x con y
    jge IF      ; Si x >= y, saltar a IF

ELSE:
    ; Caso ELSE: x < y
    sub ax, 2   ; x = x - 2
    mov x, ax
    mov ax, y   ; Cargar y en AX (usa variable directa, no BX)
    sub ax, 2   ; y = y - 2
    mov y, ax
    jmp EX

IF:
    ; Caso IF: x >= y
    mov ax, x   ; Recargar x antes de operar (buen hábito)
    add ax, 2   ; x = x + 2
    mov x, ax
    mov ax, y   ; Cargar y en AX
    add ax, 2   ; y = y + 2
    mov y, ax

EX:
    .exit
main ENDP

end main

