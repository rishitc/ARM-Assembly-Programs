.text
    ldr r2, =a
    mov r0, #0
    mov r1, #1
    
    @ To get totally 10 fibonacci numbers, I have to only generate 8 more numbers of the series as the first 2 numbers of the series are by default 0 and 1
    mov r4, #8
    
    str r0, [r2], #4
    str r1, [r2], #4
    
    fibo: add r3, r0, r1
    mov r0, r1
    mov r1, r3
    str r3, [r2], #4
    
    @ if the value of r2 after decrementing becomes 0 the exit the program
    subs r4, r4, #1
        swieq 0x011
    b fibo
    
    swi 0x011

.data
    a: .word
