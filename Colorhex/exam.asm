.model SMALL
.stack 100h
.data

Rule1  db "An Avatar: The Last Airbender AAA RPG game is reportedly in development!$"
Rule1a db "The game allows players to take on the role of an all-new Avatar, who will have to master all four elements and fight enemies. $"
Rule1b db "The report added that the project is in in collaboration with Avatar Studios.$"
CRLF   db 13,10,"$"

.code
BEGIN:
    mov ax, @data
    mov ds, ax
    mov es, ax

    ; Clear the screen
    mov al, 03h
    mov ah, 00h
    int 10h

    ; Set text color to blinking purple
    call PRINT_COLORED_TEXT1
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    ; Set text color to blinking green
    call PRINT_COLORED_TEXT2
    ; Print Rule1a
    mov dx, OFFSET Rule1a
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    ; Set text color to blinking red
    call PRINT_COLORED_TEXT3
    ; Print Rule1b
    mov dx, OFFSET Rule1b
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
   
    call PRINT_COLORED_TEXT4
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT5
    ; Print Rule1
    mov dx, OFFSET Rule1a
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT6
    ; Print Rule1
    mov dx, OFFSET Rule1b
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT7
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT8
    ; Print Rule1
    mov dx, OFFSET Rule1a
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT9
    ; Print Rule1
    mov dx, OFFSET Rule1b
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT10
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT11
    ; Print Rule1
    mov dx, OFFSET Rule1a
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    call PRINT_COLORED_TEXT12
    ; Print Rule1
    mov dx, OFFSET Rule1b
    mov ah, 09h
    int 21h
    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
   

    ; Exit the program
    mov ah, 4Ch
    int 21h

; Routine to set blinking purple text color
PRINT_COLORED_TEXT1 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 05h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT1 ENDP

; Routine to set blinking green text color
PRINT_COLORED_TEXT2 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ch
    mov cx, 160             ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT2 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT3 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 8Fh              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT3 ENDP

PRINT_COLORED_TEXT4 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl,  09h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT4 ENDP

PRINT_COLORED_TEXT5 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 8Fh              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT5 ENDP

PRINT_COLORED_TEXT6 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 07h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT6 ENDP

PRINT_COLORED_TEXT7 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 04h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT7 ENDP

PRINT_COLORED_TEXT8 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 01h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT8 ENDP

PRINT_COLORED_TEXT9 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 06h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT9 ENDP

PRINT_COLORED_TEXT10 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 03h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT10 ENDP

PRINT_COLORED_TEXT11 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ah              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT11 ENDP

PRINT_COLORED_TEXT12 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ah              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT12 ENDP


end BEGIN
