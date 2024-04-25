
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
sum1 dw 0

.code
PRINT 'ENTER A NUMBER : '
CALL SCAN_NUM
mov ax,cx
mov bx,10
mov cx,100
printn

sum:
mov dx,0
div bx 
mov bx,sum1
add bx,dx  
mov sum1,bx
mov bx,10
cmp ax,0
jz printf
loop sum

printf:
print 'sum of digit :'
mov ax,sum1
call print_num 

ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 
ends