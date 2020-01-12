;Compare the values of r0 and r1m add if r0 = r1, else subtract
.text
    mov r0, #2
    mov r1, #3
    subs r2, r0, r1
    beq L1
    ;sub r3, r0, r1
    mov r3, r2
    b L2
    L1: add r3, r0, r1
    L2: swi 0x011
.end
