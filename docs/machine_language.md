## Project 4: Machine Language
### Multiplication (Mult.asm)
Inputs: Value stored in R0 and R1 (RAM[0] and RAM[1])
Outputs: Value that must be stored in R2
Function: Computes the product of R0 and R1 and stores it into R2
Comment:
Assume that R0>=0, R1>=0, and R0*R1<32768. The Program need not test these assertions.

Contract: The assembly program must successfully pass the supplied Mult.tst and Mult.cmp scripts designed to test the program on representative data values. 

### I/O Handling (Fill.asm)
This program runs an infinite loop that listens to the keyboard. When a key is pressed (any key), the program blackens the screen by writing black in every pixel. When no key is pressed, the program clears the screen by writing white in every pixel.

How the screen is blackened and cleared, in whichever spatial pattern is up to the assembly writer, so long as pressing any key continuously long enough will result in a cleared screen, and not pressing any key for long enough will result in a cleared screen. 

Contract: The assembly program must be tested against the test script (Fill.tst). There are no compare file - it should be checked by visibly inspecting the simulated screen in the CPU emulator.


