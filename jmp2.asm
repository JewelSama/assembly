.model small
.data
.code

main proc
    top:
    mov dl, 3
    add dl, 48
    
    mov ah, 2h
    int 21h
    
    jmp down
    
    mov dl,7
    add dl, 48
    
    mov ah, 2h
    int 21h 
    
    down:
    mov dl, 5
    add dl, 48
    
    mov ah, 2h
    int 21h
    
endp
end main