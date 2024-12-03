.section .text
.globl _start

# Step 1: Initialize registers
_start:
    jal end_program

end_program:
    # End program with return statement
    nop
    nop
    nop
    jal end_program
    nop
    nop
    nop
    slti x0, x0, -256           # Halt the program