
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
count dw 0
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
mov bx,count
inc bx
mov count,bx
mov bx,10
cmp ax,0
jz count1
loop reverse

count1:
      mov ax,count 
      print 'Digit of the number is : '      
      call print_num
      printn 
             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



