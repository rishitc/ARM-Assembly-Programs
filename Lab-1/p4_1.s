;write a program to check if a number is even or odd
.text
    mov r1, #5
    ands r2, r1, #1
    beq L1
    mov r0, #0xff
    b L2
    L1: mov r0, #0x00
    L2: swi 0x011
.end
    
