.text
    ldr r0, =a
    ldr r1, =b
    
    mov r3, #0
    
    @ r7 hold the final answer
    mov r7, #0
    
    convolution:
            cmp r3, #5
                swieq 0x011
                
            ldr r4, [r0], #4
            ldr r5, [r1], #4
            
            @ r6 holds the temporary value of the product
            mul r6, r4, r5
            
            add r7, r7, r6
            add r3, r3, #1
            b convolution
            
    
.data
    a: .word 1, 2, 3, 4, 5
    b: .word 6, 7, 8, 9, 10
