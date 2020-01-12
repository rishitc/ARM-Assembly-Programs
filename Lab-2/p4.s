;Question 4
.text
    ldr r1, =a
    ldr r2, =b
    mov r3, #4
    
    L1: ldr r4, [r1], #4
    str r4, [r2], #4
    subs r3, r3, #1
    bne L1
    
.data
    a: .word 10, 20, 30, 40
    b: .word 00, 00, 00, 00
