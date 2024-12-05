.section .text
.globl _start

# Step 1: Initialize registers
_start:
    addi x4, x0, 10

end_program:
    addi x4, x4, -1
    ble x4, x0, done
    jal end_program
done:
    slti x0, x0, -256           # Halt the program