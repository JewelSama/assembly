data segment
    first equ '!'
    last equ '\'    
data ends      

code_seg segment
        
        assume cs:code_seg, ds:data
        
        start:
            ;mov ax, seg data
             mov dx, ax
             
             mov dl, first ;begin with '!'
             mov ah, 02h   ; display char
         
        again:
            cmp dl, last
            ja exit    ;YES, hense exit
            
            int 21h ; NO, display it
            inc dl  ;make next one
            jmp again
            
        exit:
            mov ax, 4c00h
            int 21h
             
             
        
    code_seg ends
end start