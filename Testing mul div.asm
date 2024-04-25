; Name : Susmita Rani Saha
; Id : B180305047

include 'emu8086.inc'

org 100h

;;;;;MULTIPLICATION;;;;;
    
; mul for BYTE
mov ax,68h
mov bx,65h
mul bx

; mul for WORD
mov ax,6448h
mov bx,6444h
mul bx

; imul for BYTE
mov ax,-2d
mov bx,1h
mul bx 

; imul for WORD
mov ax,-6555d
mov bx,64h
mul bx 
      
;;;;;; DIVISION;;;;;;

; div for BYTE 
mov dx,0
mov ax,18h
mov bx,3h
div bx
 
; div for WORD
mov ax,6448h
mov bx,1000h
div bx 

; idiv for BYTE 
mov dx,0
mov ax,-4d
mov bx,3h
idiv bx 

; idiv for WORD
mov ax,-48d
mov bx,5h
idiv bx
 
ret