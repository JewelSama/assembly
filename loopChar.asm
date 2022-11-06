stack segment stack
    DW 100h DUP(?) 
stack ends

data segment
    var dw ?    
data ends    

.code 
ASSUME cs:code, ds:data

start: 
    ;mov ax, SEG data ;;load data segment
    mov ds, ax
    
    mov dl, '!'     ;;begin with '!'
    mov ah, 02h     ;get display function
    
    mov cx, 3ch     ;set counter to 60 (decimal)
    
    

again:  
    int 21h ;display character
    inc dl  ;get next character
    loop again ;display until couter is 0
    
    mov ax, 4c00h
    
    int 21h
    
    code ends
    end start
    
    
    
    