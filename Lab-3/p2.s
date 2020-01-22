.text
    ldr r0, =a
    
    @ register r1 holds the key to search for
    mov r1, #10
    
    mov r2, #10
    mov r3, #0
    
    linSearch:
            @ if r3 is equal to 10 then move -1 into r6 and exit
            cmp r3, #10
                moveq r6, #-1
                swieq 0x011
                
            @ if r3 and 10 are not equal do the following
            @ load the value into register r4
            @ compare the value in r4 with the key r1
            @ if they are equal move its position to r7 and then exit
            ldrne r4, [r0], #4
            cmpne r4, r1
                moveq r7, r3
                swieq 0x011
            
            @ if they are not equal then branch back to linSearch
            @ and also add 1 to the counter r3
            addne r3, r3, #1
            bne linSearch
            
            swi 0x011 
        
.data
    a: .word 1, 4 ,3 ,2 ,6 ,7 ,8 ,9 ,10, 15
