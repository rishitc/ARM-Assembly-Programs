.text
    ldr r0, =a
    mov r1, #10
    addLoop:
        ldrb r2, [r0], #1
        add r3, r3, r2
        subs r1, r1, #1
        bne addLoop
.data
    a: .byte 10, 20, 30, 40 ,50 ,60 ,70, 80, 90, 100
