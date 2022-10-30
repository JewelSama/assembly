 .model tiny
 .data
    count1 db 4
 .code 
 main proc
    mov dl, count1
    
    add dl, 48 
    
    mov ah, 2h
    int 21h      
    
 endp
 end main