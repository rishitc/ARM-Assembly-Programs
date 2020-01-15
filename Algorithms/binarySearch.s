@ Program to perform binary search on an list of numbers in ARM assembly
.text
    @ Registers Usage Table:
    @ 0. r0 : register to hold the value of the key
    @ 1. r1 : register to hold the value of high index
    @ 2. r2 : register to hold the value of low index
    @ 3. r3 : register to hold the value of middle index
    @ 4. r4 : register to hold the value held in memory address of middle index
    @ 5. r5 : register to hold the length of the array
    @ 6. r6 : register to hold temporary values
    @ 7. r7 : register to hold the index of the element found, and hold -1 if the element is not found in the list

    @ in this program we will be searching for 100 in the list of numbers in memory [element present in the array]
    @ mov r0, #100

     @ in this program we will be searching for 110 in the list of numbers in memory [element not present in the array]
    mov r0, #110

    @ we will also set r7 to -1 initially
    mov r7, #-1

    @ low is set to index 0
    mov r2, #0
    @ the length of the array is 10
    mov r5, #10
    @ the index of the last element of the list is = (length of the list of numbers - 1)
    sub r6, r5, #1
    @ the index of the last element of the list is moved into the high register, i.e. register r1
    mov r1, r6

    @ we now begin our binary search loop
    binarySearch:
        @ compare the high and low index and if high < low then exit the loop
        cmp r1, r2
            bmi exitSearch

        @ calculate the value of middle index based on the current value of high and low indices
        add r6, r1, r2
        @ div r6, r6, #2
        lsr r6, r6, #1
        mov r3, r6

        @ get the value of the element at the middle index in memory
        ldr r4, =a
        @ we multiply the index by 4 as each element occupies 4 bytes of memory
        mov r6, #4
        mul r6, r3, r6
        ldr r4, [r4, r6]

        @ now we compare the key with the element at the middle index to check if they are equal
        @ or if some adjustment to high and low are required
        cmp r4, r0
            @ if r4 and r0 are equal then we move the value of middle index to r7 and exit
            moveq r7, r3
            beq exitSearch

            @ if r4 is lesser than r0 then we set low as, low = middle + 1
            addmi r6, r3, #1
            movmi r2, r6
            bmi binarySearch

            @ if r4 is greater than r0 then we set high as, high = middle - 1
            sub r6, r3, #1
            mov r1, r6
            b binarySearch

    exitSearch:
        swi 0x011



@ This is the data in memory that we will be searching in for our key
.data
    a: .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100