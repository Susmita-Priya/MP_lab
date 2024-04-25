
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
a dw ?
.code
print 'enter a number : '
call scan_num     
sub cx,2
printn        
mov bx,0    
mov ax,bx
call print_num
print ','
mov ax,1 
mov a,ax
call print_num 

fibo:
add ax,bx
mov bx,a
mov a,ax
print ','
call print_num
loop fibo 
printn
print 'Nth fibonacci is :'      
call print_num
printn 
             
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



