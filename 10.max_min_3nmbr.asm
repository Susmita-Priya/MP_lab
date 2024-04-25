
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
a dw ?
b dw ?
c dw ?  

.code
print 'enter three numbers : '
call scan_num
mov ax,cx
mov a,cx
printn
call scan_num
mov bx,cx
mov b,bx
printn  
call scan_num
mov cx,cx
mov c,cx
printn

cmp ax,bx
jl min1
mov ax,bx
min1:
cmp ax,cx
jl min 
mov ax,cx
call print_num
print ' is min'
jmp exit
min:
call print_num
print ' is min' 
jmp exit 
exit:
printn 

mov ax,a
mov bx,a
mov cx,c
cmp ax,bx
jg max1
mov ax,bx
max1:
cmp ax,cx
jg max 
mov ax,cx
call print_num
print ' is max'
jmp exit1
max:
call print_num
print ' is max'
mov max,ax
exit1:
printn 

             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends
