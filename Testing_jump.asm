
; Susmita Rani Saha
; ID : B-180305047   

include 'emu8086.inc'  

org 100h

PRINT 'Enter first Number :'
call scan_num
mov ax,cx
PRINT 'Enter second Number :'
call scan_num
mov bx,cx
PRINT 'Enter Third Number :'
call scan_num
mov cx,cx

cmp ax,bx
    jnl max1 
    mov ax,bx
max1:
    cmp ax,cx
        jnl max2
        mov ax,cx
max2: 
PRINT 'The Maximum Number of three Number is :' 
call PRINT_NUM

ret 

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends