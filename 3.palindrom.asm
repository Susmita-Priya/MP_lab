
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h

.data
sum dw 0   
var1 dw ?   
var2 dw ?
vdx dw ?

.code
print 'enter a number : '
call scan_num
mov ax,cx 
mov var1,ax
mov var2,ax
mov bx,10
mov cx,100
printn

reverse:
mov dx,0
div bx 
mov vdx,dx
mov var1,ax                
mov ax,sum  
mul bx 
mov dx,vdx
add ax,dx    
mov sum,ax
mov ax,var1
cmp ax,0
jz palindrom
loop reverse

palindrom:
      mov ax,sum 
      print 'reverse :'      
      call print_num
      printn 
      mov bx,var2
      cmp ax,bx
      je printp  
                                                                                         `
printnp:
    print 'not palindrom'
    jmp exit 
printp:           
  print 'palindrom' 
exit:
  printn               
ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends



