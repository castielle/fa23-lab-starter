.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (defined above).
# The return value should be stored in a0
f:
    # Your code here
    # index t0: add 3 to input to get index of array; t0 is index
    addi t0, a0, 3
    # offset in bytes t1: multiply index by the size of the elements of the array; t1 is index in # of bytes
    slli t1, t0, 2
    # address of element t2: add this offset to the address of the array to get the address of the element we wish to read
    add t2, a1, t1
    # element t3: read the element
    lw t3, 0(t2)    
    # store element in return
    mv a0, t3
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
