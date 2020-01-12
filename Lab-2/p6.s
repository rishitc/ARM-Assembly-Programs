;Question 6
.text
    ;r1 and r2 hold the address of the two numbers m and n
    ldr r1, =a
    ldr r2, =b
    
    ;r3 and r4 hold the values of the two numbers m and n
    ldr r3, [r1]
    ldr r4, [r2]
    
    ;Euclid's algorithm has been implemented here
    L1:
    ;implementation of modulus
    ;the value in r3 is copied into r0 for this, as we do not want to change the original value
    mov r0, r3
    modulus:
    SUBS    r0,r0,r4
    bpl modulus  
    
    ;right now r0 is negative so we need to add r4 once to make it positive or zero
    add r0, r0, r4
    ;now r0 has the modulus
    
    mov r3, r4
    mov r4, r0
    cmp r0, #0
    bne L1
    
    ;Answer: now r3 has the result

.data
    a: .word 5
    b: .word 4
    
