.model small
.stack 100h
.data
    num1 db 0                    ; Store first user input
    num2 db 0                    ; Store second user input
    num3 db 0                    ; Store third user input
    num4 db 0                    ; Store fourth user input
    randomNumber1 db 0           ; Store first random number
    randomNumber2 db 0           ; Store second random number
    randomNumber3 db 0           ; Store third random number
    randomNumber4 db 0           ; Store fourth random number
    prompt1 db 'Enter first number (0-9): $'
    prompt2 db 'Enter second number (0-9): $'
    prompt3 db 'Enter third number (0-9): $'
    prompt4 db 'Enter fourth number (0-9): $'
    matchMsg db ' Winner $'
    noMatchMsg db ' Loser $'
    CRLF db 13,10,"$"            ; Newline
.code
main:
    mov ax, @data       ; Load the data segment address
    mov ds, ax

    ; Prompt and read the first number
    lea dx, prompt1
    mov ah, 09h         ; Display string function
    int 21h

    mov ah, 01h         ; Read character function
    int 21h
    sub al, '0'         ; Convert ASCII to number
    mov num1, al        ; Store in num1
	
	mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h

    ; Prompt and read the second number
    lea dx, prompt2
    mov ah, 09h         ; Display string function
    int 21h

    mov ah, 01h         ; Read character function
    int 21h
    sub al, '0'         ; Convert ASCII to number
    mov num2, al        ; Store in num2
	
	mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h

    ; Prompt and read the third number
    lea dx, prompt3
    mov ah, 09h         ; Display string function
    int 21h

    mov ah, 01h         ; Read character function
    int 21h
    sub al, '0'         ; Convert ASCII to number
    mov num3, al        ; Store in num3
	
	mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h

    ; Prompt and read the fourth number
    lea dx, prompt4
    mov ah, 09h         ; Display string function
    int 21h

    mov ah, 01h         ; Read character function
    int 21h
    sub al, '0'         ; Convert ASCII to number
    mov num4, al        ; Store in num4
	
	mov dx, OFFSET CRLF
    mov ah, 09h
    int 21h

    ; Generate the random numbers
    call generate_random_numbers

    ; Display the generated random numbers
    lea dx, CRLF
    mov ah, 09h
    int 21h

    ; Display randomNumber1
    call display_random_number

    ; Display randomNumber2
    call display_random_number

    ; Display randomNumber3
    call display_random_number

    ; Display randomNumber4
    call display_random_number

    ; Compare numbers and display results
    call compare_numbers

    ; Exit the program
    mov ah, 4Ch         ; Function 4Ch (terminate program)
    int 21h             ; Call DOS interrupt

; Generate random numbers using BIOS timer
generate_random_numbers:
    ; Generate random number for randomNumber1
    mov ah, 2Ch         ; Get system time function
    int 21h             ; Call DOS interrupt
    and dl, 09h         ; Mask to restrict to 0-15
    cmp dl, 9           ; Ensure value is 0-9
    ja adjust1
    mov randomNumber1, dl
    jmp gen_random2
adjust1:
    sub dl, 9          ; Adjust value to fit 0-9 range
    mov randomNumber1, dl

gen_random2:
    ; Generate random number for randomNumber2
    mov ah, 2Ch         ; Get system time function
    int 21h             ; Call DOS interrupt
    and dl, 09h         ; Mask to restrict to 0-15
    cmp dl, 9           ; Ensure value is 0-9
    ja adjust2
    mov randomNumber2, dl
    jmp gen_random3
adjust2:
    sub dl, 9           ; Adjust value to fit 0-9 range
    mov randomNumber2, dl
	
gen_random3:
    ; Generate random number for randomNumber3
    mov ah, 2Ch         ; Get system time function
    int 21h             ; Call DOS interrupt
    and dl, 09h         ; Mask to restrict to 0-15
    cmp dl, 9           ; Ensure value is 0-9
    ja adjust3
    mov randomNumber3, dl
    jmp gen_random4
adjust3:
    sub dl, 9           ; Adjust value to fit 0-9 range
    mov randomNumber3, dl

gen_random4:
    ; Generate random number for randomNumber4
    mov ah, 2Ch         ; Get system time function
    int 21h             ; Call DOS interrupt
    and dl, 09h         ; Mask to restrict to 0-15
    cmp dl, 9           ; Ensure value is 0-9
    ja adjust4
    mov randomNumber4, dl
    ret
adjust4:
    sub dl, 9          ; Adjust value to fit 0-9 range
    mov randomNumber4, dl
    ret

; Compare user input to the random numbers
compare_numbers:
    ; Compare num1 with randomNumber1
    mov al, num1        ; Load num1 into AL
    cmp al, randomNumber1
    je display_match1
    lea dx, noMatchMsg
    jmp display_msg

display_match1:
    lea dx, matchMsg

display_msg:
    mov ah, 09h         ; Display string function
    int 21h
    ret

; Convert and display a random number
display_random_number:
    mov al, randomNumber1 ; Load random number into AL
    add al, '0'           ; Convert to ASCII
    mov dl, al            ; Move to DL for printing
    mov ah, 02h           ; Display character function
    int 21h
    ret
end main