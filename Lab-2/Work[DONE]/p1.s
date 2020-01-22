;Question 1
.text
    ldr r2, =a
    ldr r0, [r2]
    
    ;r3 is same as r0 same as value in a
    mov r3, r0
    ;r1 holds the result
    mov r1, #1
    
    L1: mul r1, r3, r1
    subs r3, r3, #1
    bne L1 
    
.data
    a: .word 5
