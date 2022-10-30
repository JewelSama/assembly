.model tiny
.code
org 100h

main proc near
    mov ah, 09h               ; function to display string
    mov dx, offset message    ; offset of message string terminating with $  
    int 21h             ;  dos interrupt
    
    mov ah, 4ch     ;function to terminate
    mov al, 00
    int 21h     ;Dos interrupt
    
endp
message db "Hello World $"      ; Message to be displayed terminating with a $
end main
    