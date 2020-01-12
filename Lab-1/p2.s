;Write an ALP to demonstrate logical operations
.text
    mov r0, #0xff
    mov r1, #0x00
    orr r2, r0, r1
    and r3, r0, r1
    eor r4, r0, r1
    mvn r5, r0
    mvn r6, r1
.end
