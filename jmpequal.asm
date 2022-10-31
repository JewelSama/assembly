.model small
.data
.code

main proc
    mov ax,200
    mov bx, 100
    
    cmp ax, bx
    
    je l2
    ;jne l2  
    mov dx, 1
    
    l2:
    mov dx, 6
    
    
endp
end main