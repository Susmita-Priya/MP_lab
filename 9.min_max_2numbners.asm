
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
var dw ?
.code
print 'enter two numbers : '
call scan_num
mov ax,cx
printn
call scan_num
mov bx,cx
printn

cmp ax,bx
jl min  
call print_num
print ' is max'
printn 
mov ax,bx
call print_num
print ' is min'
jmp exit 

min:     
call print_num
print ' is min'
printn 
mov ax,bx
call print_num
print ' is max'

exit:
printn 
             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



