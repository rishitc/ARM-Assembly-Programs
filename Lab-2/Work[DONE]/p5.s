;Question 4
.text
    ldr r1, =a
    mov r3, #4
    
    ;r0 is the sum
    mov r0, #0
    
    L1: ldr r4, [r1], #4
    add r0, r0, r4
    subs r3, r3, #1
    bne L1
    
.data
    a: .word 15, 25, 35, 45
