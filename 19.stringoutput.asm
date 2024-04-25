
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.data
str1 db 'Hello$'  
slen dw $-str1
str2 db 5 dup (?)
.code
mov ax,@data
mov ds,ax
mov es,ax
mov si,0 
mov di,0

for:  
cmp si,5
je exit
mov dl,str1[si] 
mov str2[di],dl
mov ah,02h
int 21h
inc si
inc di 
jmp for
exit: 
mov di,0 
printn
for2:
cmp di,5
je ex
mov dl,str2[di]
mov ah,02h
int 21h
inc di
jmp for2
ex:
ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


