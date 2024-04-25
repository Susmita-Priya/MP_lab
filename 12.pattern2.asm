
; 1
; 2 1
; 3 2 1

include 'emu8086.inc'
org 100h
mov cx,1
mov bx,2
for: 
    forj:
    mov ax,cx
    call print_num
    loop forj
    printn
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
