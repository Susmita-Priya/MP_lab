; Name : Susmita Rani Saha 
; ID : B-180305047

include 'emu8086.inc' 

org 100h
    
mov cx,8 
mov dx,4 

PRINT 'Two numbers are : '
mov ax,cx
call PRINT_NUM
PRINT ' and '
mov ax,dx
call PRINT_NUM
PRINTN  

call ADDNUM
call SUBNUM
call MULNUM
call DIVNUM    

ret

ADDNUM proc
    mov ax,cx
    mov bx,dx
    ADD ax,bx
    PRINT 'Summation of this two numbers is : '
    call PRINT_NUM
    PRINTN
    ret
    ADDNUM endp

SUBNUM proc
    mov ax,cx
    mov bx,dx
    SUB bx,ax
    mov ax,bx
    PRINT 'Subtraction of the first number from second number : '
    call PRINT_NUM 
    PRINTN
    ret
    SUBNUM endp

MULNUM proc 
    mov ax,cx
    mov bx,dx
    MUL bx
    PRINT 'Multiplication of this two numbers is : '
    call PRINT_NUM 
    PRINTN
    ret
    MULNUM endp

DIVNUM proc
    mov ax,8
    mov bx,4
    DIV bx  
    
    PRINT 'Division of the first number by second number is : '
    call PRINT_NUM 
    PRINTN
    ret
    DIVNUM endp


DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
ends