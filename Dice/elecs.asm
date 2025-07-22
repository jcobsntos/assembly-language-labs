.model small
.stack 100h
.data

prompt1 db 'Press any key to roll for Player 1...$'
prompt2 db 13, 10, 'Press any key to roll for Player 2...$'
prompt3 db 13, 10, 'Press any key to roll for Player 3...$'
winnerMsg db 13, 10, 'The winner is Player ', '$'
tieMsg db 13, 10, 'It''s a tie! $'
rolledMsg db 13, 10, 'You rolled: $'

player1 db 0
player2 db 0
player3 db 0

.code
main:

    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Roll dice for player 1
    mov ah, 09h
    lea dx, prompt1
    int 21h
    call waitForKey
    call rollDice
    mov player1, al
    call displayRollResult

    ; Roll dice for player 2
    mov ah, 09h
    lea dx, prompt2
    int 21h
    call waitForKey
    call rollDice
    mov player2, al
    call displayRollResult

    ; Roll dice for player 3
    mov ah, 09h
    lea dx, prompt3
    int 21h
    call waitForKey
    call rollDice
    mov player3, al
    call displayRollResult

    ; Determine the winner or tie
    call determineWinner

    ; Exit program
    mov ah, 4Ch
    int 21h

; Roll a die (1 to 6)
rollDice:
    ; Generate random number between 1 and 6
    mov ah, 2Ch
    int 21h
    ; Get the random number from the time
    mov al, dl
    and al, 07h        ; Mask to get value between 0 and 7
    add al, 1          ; Ensure the range is between 1 and 6
    ret

; Wait for any key press
waitForKey:
    mov ah, 08h       ; Read a character from the keyboard
    int 21h
    ret

; Compare the dice rolls and print the winner or handle ties
determineWinner:
    ; Assume Player 1 is the highest initially
    mov al, player1
    mov bl, player2
    mov dl, player3

    ; Check for three-way tie
    cmp al, bl
    jne check_two_way_tie
    cmp al, dl
    jne check_two_way_tie
    ; If all three are the same
    mov ah, 09h
    lea dx, tieMsg
    int 21h
    ret

check_two_way_tie:
    ; Check if Player 1 and Player 2 are tied and highest
    cmp al, bl
    je two_way_tie_1_2

    ; Check if Player 2 and Player 3 are tied and highest
    cmp bl, dl
    je two_way_tie_2_3

    ; Check if Player 1 and Player 3 are tied and highest
    cmp al, dl
    je two_way_tie_1_3

    ; If no tie, determine the highest player
    ; Compare Player 1 with Player 2 and Player 3
    cmp al, bl
    ja player1_wins
    cmp al, dl
    ja player1_wins
    ; Player 2 or Player 3 is the highest
    jmp player2_or_3_wins

two_way_tie_1_2:
    ; Player 1 and Player 2 are tied and the highest
    mov ah, 09h
    lea dx, tieMsg
    int 21h
    ret

two_way_tie_2_3:
    ; Player 2 and Player 3 are tied and the highest
    mov ah, 09h
    lea dx, tieMsg
    int 21h
    ret

two_way_tie_1_3:
    ; Player 1 and Player 3 are tied and the highest
    mov ah, 09h
    lea dx, tieMsg
    int 21h
    ret

player1_wins:
    mov ah, 09h
    lea dx, winnerMsg
    int 21h
    ; Display Player 1 as the winner
    mov al, '1'
    call displayWinner
    ret

player2_or_3_wins:
    ; Determine which player has the highest roll
    mov al, player2
    mov bl, player3
    cmp al, bl
    ja player2_wins
    ; Player 3 wins
    jmp player3_wins

player2_wins:
    mov ah, 09h
    lea dx, winnerMsg
    int 21h
    ; Display Player 2 as the winner
    mov al, '2'
    call displayWinner
    ret

player3_wins:
    mov ah, 09h
    lea dx, winnerMsg
    int 21h
    ; Display Player 3 as the winner
    mov al, '3'
    call displayWinner
    ret

; Display the winner's player number
displayWinner:
    mov dl, al
    mov ah, 02h
    int 21h
    ret

; Display the roll result
displayRollResult:
    mov ah, 09h
    lea dx, rolledMsg    ; Display the "You rolled: " message
    int 21h

    ; Convert the number in AL to its ASCII equivalent and display it
    add al, '0'           ; Convert the number to ASCII (e.g., 5 -> '5')
    mov dl, al            ; Move the ASCII value into DL for printing
    mov ah, 02h           ; DOS interrupt to print character
    int 21h

    ret

end main
