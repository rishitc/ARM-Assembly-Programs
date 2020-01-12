;Question 2
.text
    ldr r0, =a
    ldr r2, [r0]
    cmp r2, #0
    moveq r1, #1
    beq L1
    movmi r1, #3
    bmi L1
    mov r1, #2
    L1: swi 0x011
    
.data
    a: .word 10
