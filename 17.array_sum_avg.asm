
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data

array2 db 5 dup(?)
sum db 0

.code 
mov si,0
  
for1:
cmp si,5
je j
call scan_num
printn
mov array2[si],cl
inc si
jmp for1 
j:
printn
mov si,0
for:  
cmp si,5  
je exit         
mov al,array2[si] 
call print_num
print ','  
mov bl,sum  
add bl,al
mov sum,bl
inc si     
jmp for
exit:
mov al,sum
cbw
print 'Sum is : '
call print_num
printn
mov dx,0
mov al,sum 
cbw
mov cx,5
div cx
print 'Average is : '
call print_num
printn 

ret
define_scan_num
define_print_num
define_print_num_uns



   
