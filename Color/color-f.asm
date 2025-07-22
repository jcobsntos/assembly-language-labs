.model SMALL
.stack 100h
.data

Rule1  db "1.Students are not allowed to enter the Computer Laboratory without their instructor or any authorized AMA personnel.$"
Rule1a db "The instructor should be the first person to come in and the last one to leave the lab. No computer lab shall be opened if there will be no instructor or $"
Rule1b db "IT personnel present in the lab.$"
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
	
	call PRINT_COLORED_TEXT4
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT5
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT6
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT7
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT8
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT9
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT10
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT11
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT12
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT13
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT14
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT15
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT16
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT17
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT18
    ; Print Rule1
    mov dx, OFFSET Rule1
    mov ah, 09h
    int 21h
	call PRINT_COLORED_TEXT19
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

PRINT_COLORED_TEXT4 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl,  00h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT4 ENDP

PRINT_COLORED_TEXT5 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 01h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT5 ENDP

PRINT_COLORED_TEXT6 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 02h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT6 ENDP

PRINT_COLORED_TEXT7 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 03h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT7 ENDP

PRINT_COLORED_TEXT8 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 04h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT8 ENDP

PRINT_COLORED_TEXT9 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 05h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT9 ENDP

PRINT_COLORED_TEXT10 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 06h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT10 ENDP

PRINT_COLORED_TEXT11 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 07h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT11 ENDP

PRINT_COLORED_TEXT12 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 08h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT12 ENDP

PRINT_COLORED_TEXT13 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 09h              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT13 ENDP

PRINT_COLORED_TEXT14 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ah              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT14 ENDP

PRINT_COLORED_TEXT15 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Bh              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT15 ENDP

PRINT_COLORED_TEXT16 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Ch              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT16 ENDP

PRINT_COLORED_TEXT17 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Dh              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT17 ENDP

PRINT_COLORED_TEXT18 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Eh              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT18 ENDP

PRINT_COLORED_TEXT19 PROC
    mov ah, 09h
    mov al, ' '
    mov bh, 00h              ; Display page
    mov bl, 0Fh              ; Light yellow with blink
    mov cx, 160              ; Length of 1 character
    int 10h
    ret
PRINT_COLORED_TEXT19 ENDP

end BEGIN
