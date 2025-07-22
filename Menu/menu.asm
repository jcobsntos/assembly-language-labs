.MODEL SMALL
.STACK 100H
.DATA
menu db "Menu:", 13, 10
     db "1. Burger - 5", 13, 10
     db "2. Pizza - 8", 13, 10
     db "3. Soda - 2", 13, 10
     db "4. Exit", 13, 10, "$"

prompt db "Choose an item (1-4): $"
quantity_prompt db 13, 10, "Enter quantity (1-9): $"
total_msg db 13, 10, "Total Amount: $", "$"
amount dw 0           ; Stores total amount
quantity db 0        ; Variable to store quantity input

burger_price dw 5
pizza_price dw 8
soda_price dw 2

.CODE
MAIN PROC
    MOV AX, @DATA        ; Initialize DS register
    MOV DS, AX

START:
    ; Display menu
    MOV DX, OFFSET menu
    MOV AH, 09H
    INT 21H

    ; Prompt for choice
    MOV DX, OFFSET prompt
    MOV AH, 09H
    INT 21H

    ; Get user's choice
    MOV AH, 01H          ; Function to take a single character input
    INT 21H
    SUB AL, '0'          ; Convert ASCII to number
    CMP AL, 1
    JB START             ; Jump to START if less than 1
    CMP AL, 4
    JA START             ; Jump to START if greater than 4

CHOICE_OK:
    ; Store the choice temporarily
    MOV BL, AL           ; Save user's choice in BL

    ; If choice is Exit (4), go to display total
    CMP BL, 4
    JE DISPLAY_TOTAL

    ; Prompt for quantity
    CALL GET_QUANTITY

    ; Check choice
    CMP BL, 1
    JE ADD_BURGER
    CMP BL, 2
    JE ADD_PIZZA
    CMP BL, 3
    JE ADD_SODA

    JMP START            ; In case of invalid choice

ADD_BURGER:
    MOV AX, burger_price ; Load price of burger
    MOV CL, quantity     ; Load quantity
    MUL CL               ; Multiply price by quantity
    ADD amount, AX       ; Add price to total amount
    JMP START

ADD_PIZZA:
    MOV AX, pizza_price  ; Load price of pizza
    MOV CL, quantity     ; Load quantity
    MUL CL               ; Multiply price by quantity
    ADD amount, AX       ; Add price to total amount
    JMP START

ADD_SODA:
    MOV AX, soda_price   ; Load price of soda
    MOV CL, quantity     ; Load quantity
    MUL CL               ; Multiply price by quantity
    ADD amount, AX       ; Add price to total amount
    JMP START

DISPLAY_TOTAL:
    MOV DX, OFFSET total_msg
    MOV AH, 09H
    INT 21H

    ; Display the total amount
    MOV AX, amount
    CALL DISPLAY_NUMBER

    ; Exit program
    MOV AH, 4CH
    INT 21H

GET_QUANTITY PROC
    ; Prompt for quantity
    MOV DX, OFFSET quantity_prompt
    MOV AH, 09H
    INT 21H

    ; Get quantity input
    MOV AH, 01H          ; Function to take a single character input
    INT 21H
    SUB AL, '0'          ; Convert ASCII to number
    CMP AL, 1            ; Check if quantity is less than 1
    JB INVALID_QUANTITY   ; Jump if invalid
    CMP AL, 9            ; Check if quantity is greater than 9
    JA INVALID_QUANTITY   ; Jump if invalid
    MOV quantity, AL     ; Store valid quantity
    RET

INVALID_QUANTITY:
    ; Invalid quantity message (optional)
    JMP GET_QUANTITY     ; Re-prompt for quantity
GET_QUANTITY ENDP

DISPLAY_NUMBER PROC
    ; Display AX value as decimal
    PUSH AX
    MOV CX, 0            ; Initialize digit count

DISPLAY_LOOP:
    MOV DX, 0
    MOV BX, 10
    DIV BX               ; AX / 10, remainder in DX, quotient in AX
    PUSH DX              ; Push remainder (digit) onto stack
    INC CX               ; Increment digit count
    OR AX, AX
    JNZ DISPLAY_LOOP     ; Continue until AX = 0

    ; Pop and display digits
DISPLAY_DIGITS:
    POP DX
    ADD DL, '0'          ; Convert to ASCII
    MOV AH, 02H
    INT 21H
    LOOP DISPLAY_DIGITS

    POP AX
    RET
DISPLAY_NUMBER ENDP

MAIN ENDP
END MAIN
