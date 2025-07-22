.MODEL SMALL
.STACK 100h
.DATA

choice_msg  db 13,10,'Enter operation (+, -, *, /):',13,10,'$' 
first_msg   db 13,10,'Enter the first number:',13,10,'$'
second_msg  db 13,10,'Enter the second number:',13,10,'$'
result_msg  db 13,10,'The result is:',13,10,'$'
new_line    db 13,10,'$'
val1        db ? 
num1        db ? 
num2        db ? 
num3        db ?        ; purely a buffer variable 
ten         db 10   
t1          db 0
t2          db 0     
result      db 0

.CODE                   ; where the code is written
start:  

    mov ax, @data           ; Moves the address of the variables under .DATA into ax
    mov ds,ax               ; moves ax into ds. 

    mov ah,09
    mov dx, offset choice_msg
    int 21h                 ; displays the string in choice_msg

    mov ah,01
    int 21h                 ; copies a value into the al

    cmp al, '+'             ; compares the entered value with "+"
    je addition             ; if it equals "+", jump to addition
    cmp al, '-'             ; compares with "-"
    je subtraction          ; if it equals "-", jump to subtraction
    cmp al, '*'             ; compares with "*"
    je multiplication       ; if it equals "*", jump to multiplication
    cmp al, '/'             ; compares with "/"
    je division             ; if it equals "/", jump to division
    jmp exit                ; if none matches, exit

addition: 

    call read               ; Read the input
    call endl               ; output new line

    mov bl, num2            ; move the value of num2 into bl
    add num1, bl            ; adds num2 and num1 to form the sum
    mov al, num1            ; move num1 to al
    mov result, al          ; store the result of the sum in result

    call write              ; write the output 
    jmp exit

subtraction:

    call read               ; Read the input
    call endl               ; output new line

    mov bl, num2            ; move value of num2 to bl
    sub num1, bl            ; subtracts the value in num2 from the value in num1
    mov al, num1            ; move result to a register
    mov result, al          ; move the result of the subtraction to result

    call write              ; display result with write procedure
    jmp exit

multiplication:

    call read               ; Read the input
    call endl               ; output new line

    mov al, num1            ; load first number into al
    mov bl, num2            ; load second number into bl
    mul bl                  ; multiply al by bl, result in ax (lower byte in al, higher byte in ah)
    mov result, al          ; store the result in result

    call write              ; display result with write procedure
    jmp exit

division:

    call read               ; Read the input
    call endl               ; output new line

    mov al, num1            ; load first number into al
    mov bl, num2            ; load second number into bl
    xor ah, ah              ; clear ah for division
    cmp bl, 0               ; check if divisor is zero
    je zero_division        ; jump to zero_division if divisor is zero
    div bl                  ; divide al by bl, quotient in al, remainder in ah
    mov result, al          ; store the result in result
    call write              ; display result with write procedure
    jmp exit

zero_division:
    ; Handle division by zero case
    mov dx, offset new_line
    mov ah, 09
    int 21h
    db 'Error: Division by zero!', 0
    call endl
    jmp exit

;-----------------------
; procedure declarations: 

proc endl
    mov ah, 09
    mov dx, offset new_line
    int 21h                ; goes to next line, i.e. "enter"
    ret
endp

proc read
    mov ah, 09
    mov dx, offset first_msg
    int 21h                ; displays the string in first_msg

    mov ah, 01             ; read char
    int 21h                ; copies a value into the al
    sub al, 48             ; subtract 48 from the value in al
    mov num1, al           ; moves the value in al to the variable num1

    mov ah, 01             ; read second char
    int 21h                ; copies a value into the al
    sub al, 48             ; subtract 48 from the value in al
    mov num2, al           ; moves the value in al to the variable num2

    mov al, num1           ; moves the value in num1 into al
    mul ten                ; multiplies the value in al by ten
    add al, num2           ; adds the value in num2 to al, to get the two-digit number
    mov num1, al           ; moves the two-digit value into num1

    call endl

    mov ah, 09
    mov dx, offset second_msg ; displays the string in second_msg
    int 21h             

    mov ah, 01
    int 21h                ; copies a value into the al
    sub al, 48             ; subtract 48 from the value in al
    mov num2, al           ; moves the new value in al into variable num2

    mov ah, 01
    int 21h                ; copies a value into the al
    sub al, 48             ; subtract 48 from the value in al
    mov num3, al           ; moves the new value in al into variable num3

    mov al, num2           ; moves the value in num2 into al
    mul ten                ; multiplies the value in al by ten
    add al, num3           ; adds the value in num3 to al, to get a two-digit number
    mov num2, al           ; moves the value in al into the variable num2

    ret                     ; first number in num1, second in num2    
endp

proc write
    mov dx, offset result_msg
    mov ah, 09h
    int 21h                ; display the result_msg string

    mov al, result         ; move the result from add/sub/mul/div to al
    mov ah, 00             ; initialize ah
    div ten                ; divide al by ten, quotient is in al, remainder is stored in ah

    mov dl, ah             ; move the remainder to dl
    mov t2, dl             ; store the remainder in t2

    mov dl, al             ; move quotient into dl
    add dl, 48             ; add 48 to dl, to convert it to ascii
    mov ah, 02h            ; char display interrupt code
    int 21h                ; display char in dl register

    mov dl, t2             ; move remainder to dl
    add dl, 48             ; convert it to ascii by adding 48
    mov ah, 02h            ; display character in dl interrupt code
    int 21h                ; displays contents of dl 

    call endl              ; output a new line
    ret                    

endp

exit:
    mov ax, 4c00h          ; This is just a failsafe exit
    int 21h

END
