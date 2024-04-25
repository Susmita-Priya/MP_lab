include 'emu8086.inc'
 
org 100h

mov al,1d
mov bx,0d
mov dl,1d

PRINT 'Enter The Number :'
call scan_num        

PRINT 'result : '
call PRINT_NUM
fibo:  
    mul al
    mul al   
    add bx,ax 
    inc dl
    mov al,dl
loop fibo
    mov ax,bx
    call PRINT_NUM
ret
 
DEFINE_SCAN_NUM 
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 

ends


ret




