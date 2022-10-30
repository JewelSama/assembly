.model small
.data
.code

main proc
        mov dl, 2
        add dl, 4
        sub dl, 1       
        
        
        add dl, 48 ;code for print char
        mov ah, 2h ; prints value of "dl"
        int 21h
    
endp
end main