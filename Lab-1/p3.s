;write a program to add 5 numbers where values are present in register
.text
    mov r0, #64
    mov r1, #9
    mov r2, #78
    mov r3, #22
    mov r4, #128
    
    add r5, r0, r1
    add r5, r5, r2
    add r5, r5, r3
    add r5, r5, r4
.end
