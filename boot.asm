ORG 0
BITS 16


;READ char
mov AH,00H
int 16H
mov [buffer],AL


;VIDEO MODE prints 'A'
mov AH,0EH
mov AL,[buffer]
int 10H

buffer:
    db 0


;boot section
TIMES 510 - ($-$$) db 0
    db 0x55,0xAA