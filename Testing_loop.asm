; Susmita Rani Saha
; ID : B-180305047

include 'emu8086.inc'
 
org 100h

mov ax,00d
mov bx,01d

PRINT 'Enter The Number of Fibonacci Series :'
call scan_num 
dec cx       

PRINT 'Fibonacci Series : '
call PRINT_NUM
fibo:  
    mov dx,bx
    add bx,ax
    mov ax,dx 
    PRINT ','
    call PRINT_NUM
loop fibo


ret
 
DEFINE_SCAN_NUM 
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 

ends
