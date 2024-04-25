
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
sum dw ?
.code
print 'enter a number : '
call scan_num
mov ax,0
mov bx,1
printn

series: 
add ax,bx
inc bx
loop series

print 'Sum is :'      
call print_num
printn 
             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



