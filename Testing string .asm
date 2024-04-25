;susmita

include 'emu8086.inc'

org 100h     

.data
str1 db 'I am Robot','$'
strlen dw $-str1
str2 db 20 dup('?') 

.code
    mov ax,@data
    mov ds,ax
    mov es,ax
    mov cx,strlen
    add cx,-2
    lea si,str1
    lea di,str2 
    add si,strlen
    add si,-2
    
    loop1:
    mov al,[si]
    mov [di],al
    dec si
    inc di
    loop loop1 
    mov al,[si]
    mov [di],al
    inc di
    mov dl,'$'
    mov [di],dl
    
    print:  
    
    mov ah,09h
    lea dx,str2
    int 21h 
    
    mov ax,4c00h
    int 21h

ret
