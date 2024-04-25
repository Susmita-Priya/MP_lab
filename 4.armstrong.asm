
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
sum dw 0
var1 dw ?   
var2 dw ?
.code
print 'enter a number : '
call scan_num
mov ax,cx
mov bx,10
mov cx,100
printn

reverse:
mov dx,0
div bx 
mov var1,ax               
mov ax,dx
mov var2,dx 
mul ax
mov bx,var2 
mul bx       
call print_num
mov dx,sum 
add ax,dx    
mov sum,ax
mov ax,var1
mov bx,10
cmp ax,0
jz armstrong
loop reverse

armstrong:
      mov ax,sum 
      print 'Armstrong :'      
      call print_num
      printn 
             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



