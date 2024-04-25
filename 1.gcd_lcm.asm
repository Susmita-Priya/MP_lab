
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h 

.data
lcm dw ?
var1 dw ?
var2 dw ?

.code
print 'enter two value' 
printn 
call scan_num
mov ax,cx 
mov var1,ax
printn             
call scan_num
mov bx,cx  
mov var2,bx


  
printn
mov cx,100    

gcd:
   mov dx,0
   div bx
   mov ax,bx
   mov bx,dx 
   cmp bx,0
   jz gcdp
   loop gcd
gcdp:  
   print 'gcd is : '
   call print_num 

mov lcm,ax  
mov ax,var1 
mov bx,var2
mul bx
mov bx,lcm
mov dx,0
div bx

print 'lcm is : '
call print_num

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends

