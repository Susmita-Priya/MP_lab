; 1
; 1 2
; 1 2 3 
; 1 2
; 1

include 'emu8086.inc'
org 100h
mov cx,1
mov bx,1
mov dx,1
for:
    for1: 
    mov ax,dx
    call print_num
    print ' ' 
    inc dx
    cmp dx,bx
    jg j
    jmp for1
    j:
    printn
    mov dx,1
    inc bx
    mov cx,bx 
    cmp cx,5
    jg exit
  loop for
exit: 

mov cx,4
mov dx,1 
for2:
    for4:
    mov ax,dx
    call print_num
    print ' '
    inc dx
    cmp dx,cx
    jg j1
    jmp for4
    j1:
    printn
    mov dx,1
    loop for2
    

ret

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends
