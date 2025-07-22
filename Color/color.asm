.model SMALL
.stack 100h
.data

Rule1  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule1a db "The instructor should be the first person to come in and the last one to leave the lab. No computer lab shall be opened if there will be no instructor or $"
Rule1b db "IT personnel present in the lab.$"
Rule11  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule12  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule13  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule14  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule15  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule16  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule17  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule18  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule19  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule110  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule111  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule112  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule113  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule114  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule115  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule116  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
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

	call PRINT_COLORED_TEXT11
    ; Print Rule1
    mov dx, OFFSET Rule11
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT12
    ; Print Rule1
    mov dx, OFFSET Rule12
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT13
    ; Print Rule1
    mov dx, OFFSET Rule113
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT14
    ; Print Rule1
    mov dx, OFFSET Rule15
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT16
    ; Print Rule1
    mov dx, OFFSET Rule16
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT17
    ; Print Rule1
    mov dx, OFFSET Rule17
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT18
    ; Print Rule1
    mov dx, OFFSET Rule18
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT19
    ; Print Rule1
    mov dx, OFFSET Rule19
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT110
    ; Print Rule1
    mov dx, OFFSET Rule110
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT111
    ; Print Rule1
    mov dx, OFFSET Rule111
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT112
    ; Print Rule1
    mov dx, OFFSET Rule112
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT113
    ; Print Rule1
    mov dx, OFFSET Rule113
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT114
    ; Print Rule1
    mov dx, OFFSET Rule114
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT115
    ; Print Rule1
    mov dx, OFFSET Rule115
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
	
	call PRINT_COLORED_TEXT116
    ; Print Rule1
    mov dx, OFFSET Rule116
    mov ah, 09h
    int 21h
	


    ; Print new line (CRLF)
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
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

    ; Exit the program
    mov ah, 4Ch
    int 21h

; Routine to set blinking purple text color
PRINT_COLORED_TEXT1 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 8Ah              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT1 ENDP

; Routine to set blinking green text color
PRINT_COLORED_TEXT2 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
	mov bl, 8Bh
    mov cx, 160             ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT2 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT3 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 83h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT3 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT11 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 00h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT11 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT12 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 01h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT12 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT13 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 02h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT13 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT14 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 03h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT14 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT15 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 04h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT15 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT16 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 05h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT16 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT17 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 06h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT17 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT18 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 07h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT18 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT19 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 08h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT19 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT110 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 09h              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT110 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT111 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ah              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT111 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT112 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Bh              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT112 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT113 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ch              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT113 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT114 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Dh              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT114 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT115 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Eh              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT115 ENDP

; Routine to set blinking red text color
PRINT_COLORED_TEXT116 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Fh              ; Light red with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT116 ENDP
end BEGIN
