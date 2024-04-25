
; 1
; 2 2
; 3 3 3

include 'emu8086.inc'
org 100h
mov cx,1
mov bx,2
mov ax,1
mov dx,1
for: 
    forj:
    mov ax,cx
    call print_num 
    inc dx 
    cmp dx,bx 
   
    je j
    jmp forj 
    j:
    printn
    mov dx,1
    inc bx
    mov cx,bx
    cmp bx,7
    je exit
   loop for
exit:


ret

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends
