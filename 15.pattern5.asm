;     1
;   1 2
; 1 2 3 
;   1 2
;     1

include 'emu8086.inc'
org 100h
.data
b dw 0
.code    
mov cx,5
mov dx,1
mov bx,1
for2:
    for4:    
    mov ax,1    
    inc dx
    cmp dx,cx     
    jg for5  
    print ' '
    jmp for4 
    
    for5:    
    call print_num 
    inc ax         
    cmp ax,bx
    jg j1 
    jmp for5
    
    j1:
    printn 
    inc bx
    mov dx,1
    loop for2 
    
        
mov cx,4
mov dx,1
mov bx,5
for21:
    
    for51:       
    cmp bx,cx
    jle for41
    print ' ' 
    dec bx
    jmp for51
    
    for41:    
    mov ax,dx
    call print_num   
    inc dx
    cmp dx,cx     
    jg j11        
    jmp for41 
    
    j11:
    printn
    mov bx,5
    mov dx,1
    loop for21 
exit: 



    

ret

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends
