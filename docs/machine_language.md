## Project 4: Machine Language
### Multiplication (Mult.asm)
#### API
Inputs: Value stored in R0 and R1 (RAM[0] and RAM[1])
Outputs: Value that must be stored in R2
Function: Computes the product of R0 and R1 and stores it into R2
Comment:
Assume that R0>=0, R1>=0, and R0*R1<32768. The Program need not test these assertions.

Contract: The assembly program must successfully pass the supplied Mult.tst and Mult.cmp scripts designed to test the program on representative data values. 

#### Pseudo code
R2=R0 * R1 is equivalent to R2 = R0_0 + R0_1 + R0_2 ... R0_n where n = R1





### I/O Handling (Fill.asm)
#### API
This program runs an infinite loop that listens to the keyboard. When a key is pressed (any key), the program blackens the screen by writing black in every pixel. When no key is pressed, the program clears the screen by writing white in every pixel.

How the screen is blackened and cleared, in whichever spatial pattern is up to the assembly writer, so long as pressing any key continuously long enough will result in a cleared screen, and not pressing any key for long enough will result in a cleared screen. 

Contract: The assembly program must be tested against the test script (Fill.tst). There are no compare file - it should be checked by visibly inspecting the simulated screen in the CPU emulator.

#### Pseudo code


### Notes
#### Memory access examples
```
// D = 17
@17
D = A

// RAM[100] = 17
@17
D = A
@100
M = D

// RAM[100] = RAM[200]
@200
D = M
@100
M = D
```

#### Branching 
Unconditional jump to selected ROM address
```
// goto 29
@10
0;JMP
```
Conditional jump to selected ROM address
```
// if D > 0 goto 10
@1
D=A
@10
D;JGT
```

#### Variable use examples
```
// x = -1
@x
M=-1

// count = count - 1
@count
M = M - 1

// sum = sum + x
@x
D = M
@sum
M = M + D

or similarly

// sum = sum + x
@sum
D = M
@x
D = D + M
@sum
M=D
```


### Example

Pseudo Code
```
i = 1
sum = 0
LOOP:
    if (i > R0) goto STOP
    sum = sum + i
    i = i + 1
    goto LOOP
STOP
    R1 = sum
```
Implementation:
```
// i = 1
@i
M=1

// sum = 0
@sum
M=0
(LOOP)

// if (i > R0) goto STOP
@i
D=M
@R0
D=D-M
@STOP
D;JGT

// sum = sum + i
@sum
D=M
@i
D=D+M
@sum
M=D

// i = i + 1
@i
M=M+1

// goto LOOP
@LOOP
0;JMP
(STOP)

// R1 = sum
@sum
D=M
@R1
M=D
(END)
@END
0;JMP
```
