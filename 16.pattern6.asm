;  *
; ***
;*****
; ***
;  *


include 'emu8086.inc'
org 100h

.data
n dw ?
.code
print 'Enter a number'
printn
call scan_num
printn                     
mov n,cx          
          
for1:
    mov bx,n 
    mov dx,n
    mov ax,cx
    for2:
    cmp ax,1
    jle for3
    print ' '
    dec ax
    jmp for2   
    for3:
    cmp bx,cx
    jl for4
    print '*'
    dec bx
    jmp for3
    for4:
    cmp dx,cx
    je j
    print '*'
    dec dx
    jmp for4    
    j:
    printn
    loop for1

mov cx,n 
dec cx
mov n,cx

for11:
    mov ax,n
    mov bx,1
    mov dx,1
    for21:
    cmp ax,cx
    jl for31
    print ' '
    dec ax
    jmp for21
    for31:
    cmp bx,cx
    jg for41
    print '*'
    inc bx
    jmp for31
    for41:
    cmp dx,cx
    je j1
    print '*'
    inc dx
    jmp for41
    j1:    
    printn
    loop for11                     

ret
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends