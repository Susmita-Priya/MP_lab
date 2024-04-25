
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data

.code
print 'enter a number : '
call scan_num
mov ax,cx
mov bx,cx 
mov cx,100
printn
fact: 
dec bx
mul bx
cmp bx,1
je factorial
loop fact

factorial:
      print 'Factorial is :'      
      call print_num
      printn 
             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



