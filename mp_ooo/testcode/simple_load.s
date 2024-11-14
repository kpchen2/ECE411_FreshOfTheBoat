.section .data
data:
    .word 0x1eceb923
    .word 0xcafebabe
    .word 0xabcdaba0
    .word 0x12345678
    .word 0x87654321
    .word 0xbabecafe
    .word 0xbabababa

.section .text
.globl _start
_start:
    auipc x1, 0              # Load PC-relative address into x1

    addi x1, x1, 0x600       # Adjust address to point to data section

    addi x1, x1, 0x600

    addi x1, x1, 0x400

    lw x4, 4(x1)





    slti x0, x0, -256        # Magic instruction to end the simulation