.model small
.data
.code

main proc
    
    mov cx, 5 
    mov bx, 5
    
    top:
      mov dl, 5
      add dl, 48
      
      mov ah, 2h
      int 21h
              
    cmp bx, 5             
    loopz top
endp
end main