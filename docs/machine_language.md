## Project 4: Machine Language
### Multiplication (Mult.asm)
File name: projects/4/Mult.asm

Multiplies R0 and R1 and stores the result in R2.<br>
(R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)<br>
The algorithm is based on repetitive addition.<br>

// Pseudo code:
```
R0 = 10
R1 = 10
i = 0
LOOP
    if (i==R1) goto END
    R2 =  R2 + R0
    i = i + 1
    goto LOOP
END
    goto END
```




### I/O Handling (Fill.asm)
Runs an infinite loop that listens to the keyboard input. <br>
When a key is pressed (any key), the program blackens the screen,<br>
i.e. writes "black" in every pixel. When no key is pressed, <br>
the screen should be cleared.<br>
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
@sum
D = M
@x
D = D + M
@sum
M=D
```


### Example
#### 1. Add.asm
Pseudo Code
```
// Program: Add.asm
// Computes: RAM[0] + RAM[1] + 17
// Usage: put values in RAM[0] and in RAM[1]

D = RAM[0]
D = D + RAM[1]
D = D + 17
RAM[2] = D
```
Implementation
```
// Program: Add.asm
// Computes: RAM[0] + RAM[1] + 17
// Usage: put values in RAM[0] and in RAM[1]

//D = RAM[0]
@R0
D = M

//D = D + RAM[1]
@R1
D = D + M

//D = D + 17
@17
D = D + A

//RAM[2] = D
@R2
M = D
```

#### 2. Sum1ToN.asm
Pseudo Code
```
// File: Sum1ToN.asm
// Computes: RAM[1]=1+2+3+...+RAM[0]
// Usage: put a value>=1 in RAM[0]

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
Implementation
```
// File: Sum1ToN.asm
// Computes RAM[1]=1+2+3+...+RAM[0]
// Usage: put a value>=1 in RAM[0]

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
#### 3. PointerDemo.asm
Pseudo Code
```
// PointerDemo
// Starting at base address R0, sets the first R1 words to -1
n = 0
LOOP:
    if (n==R1) goto END
    *(R0 + n) = -1
    n = n + 1
    goto LOOP
END:
```
Implementation
```
// PointerDemo
// Starting at base address R0, sets the first R1 words to -1
// n = 0
@n
M = 0
(LOOP)
    // if (n==R1) goto END
    @n
    D = M
    @R1
    D = M-D
    @END
    D;JEQ

    //*(R0 + n) = -1
    @R0
    D = M
    @n
    A = D + M
    M = -1

    //n = n + 1
    @n
    M = M + 1

    @LOOP
    0;JMP

(END)
    @END
    0;JMP
```
