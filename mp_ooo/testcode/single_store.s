.section .data
values:      .word 10, 20, 30, 40, 50  # Array of integers

.section .text
.global _start

_start:
    la x10, values      # Load address of the array into x10
    addi x11, x0, 10
    sw x11, 4(x10)      # Load the first word (10) into x11
    lw x12, 8(x10)
    

end:
    slti x0, x0, -256   # Set x0 if x0 < -256, ends the program
