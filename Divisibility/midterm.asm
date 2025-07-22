.model small
.stack 100h
.data
    num db 0              ; Number to be checked
    msg_even db 'The number is even$', 13, 10, 0
    msg_odd db 'The number is odd$', 13, 10, 0
    msg_prime db 'The number is prime$', 13, 10, 0
    msg_composite db 'The number is composite$', 13, 10, 0
    msg_prompt db 'Enter a number (1-9, 0 to exit):$', 0
    msg_invalid db 'Invalid input! Enter a number between 1 and 9$', 13, 10, 0
    CRLF   db 13,10,"$"

.code
main proc
    mov ax, @data
    mov ds, ax
   

start_loop:
    
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    ; Prompt for input
    lea dx, msg_prompt
    mov ah, 9
    int 21h

    ; Get input
    mov ah, 1
    int 21h
    cmp al, '0'             ; Check if user entered 0 to exit
    je exit_program
    sub al, '0'
    cmp al, 1               ; Ensure input is a valid number
    jl invalid_input
    cmp al, 9
    jg invalid_input
    mov num, al             ; Store the input number

    ; Check even or odd
    mov al, num
    and al, 1
    jz even
    jmp odd

even:
    
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    lea dx, msg_even
    mov ah, 9
    int 21h
    jmp check_prime

odd:
    
    mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    lea dx, msg_odd
    mov ah, 9
    int 21h

check_prime:
     mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h
    
    mov al, num
    cmp al, 1               ; 1 is neither prime nor composite
    je composite

    xor cx, cx              ; Clear CX
    mov cl, num             ; Load num into the lower byte of CX
    mov bl, 2               ; Start divisor from 2

is_prime:
    
    mov ah, 0               ; Clear high byte of AX
    mov al, num             ; Load the number into AX
    div bl                  ; AX / BL (remainder in DX)
    cmp dx, 0               ; If remainder is 0, it's composite
    je composite
    inc bl                  ; Increment divisor
    loop is_prime           ; Repeat until CX = 0 (i.e., we've checked all divisors)

    ; If we completed the loop without finding any divisor, the number is prime
    lea dx, msg_prime
    mov ah, 9
    int 21h
    jmp start_loop

composite:
    
    lea dx, msg_composite
    mov ah, 9
    int 21h
    jmp start_loop

invalid_input:
    
    lea dx, msg_invalid
    mov ah, 9
    int 21h
    jmp start_loop

exit_program:
    mov ah, 4Ch
    int 21h
main endp
end main
