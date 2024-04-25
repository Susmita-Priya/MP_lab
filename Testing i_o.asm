; Name: Tanvir ahammed hridoy 
; Id: B180305020

include 'emu8086.inc'
org 100h  

.data
array dw 5 dup(?)
sum dw 0
ans dw 0

.code 

mov ax,@data
mov ds,ax
PRINT 'Enter 4 numbers : '
mov cx,4
mov si,offset array  

l1:   
mov ah,01h
int 21h
sub al,48
mov [si],al
inc si
inc si
printn ""
loop l1

mov cx,4
mov si,offset array
l2:
mov ax,[si]
add sum,ax
inc si
inc si
loop l2
print "sum :"
mov ax,sum
call print_num
printn ""
print "Average :"
mov ans,ax
cwd
mov bx,4d
div bx
call print_num
ret

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends


