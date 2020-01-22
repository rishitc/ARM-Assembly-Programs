;Question 3
.text
    ldr r0, =a
    ldr r1, =b
    ldr r3, =c
    ldr r4, [r1]
    ldr r5, [r0]
    add r6, r4, r5
    str r6, [r3]
.data
a: .word 10
b: .word 20
c: .word 0

