;321
;21
;1

include 'emu8086.inc'
org 100h 

.data  

.code
mov cx,5   
mov bx,5
mov dx,0
for: 
    forj:
    mov ax,cx
    call print_num
    loop forj
    printn  
    mov cx,bx 
    dec bx   
    cmp bx,0
    jz exit
loop for
exit:

ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ENDS