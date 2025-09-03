//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: that arg2: 0 pop that 0
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@0
D=A
@THAT
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: that arg2: 1 pop that 1
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@1
D=A
@THAT
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: sub arg2: None sub
@SP // pop from stack to memory address 13 and 14
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@14
M=D
@13 // Y
D=M
@14 // X
M=M-D
@14 // push memory address 14 to stack 
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@0
D=A
@ARG
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_LABEL arg1: LOOP arg2: None label LOOP
(FibonacciSeries.$LOOP)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: COMPUTE_ELEMENT arg2: None if-goto COMPUTE_ELEMENT
@SP // pop from stack to memory address 13
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@FibonacciSeries.$COMPUTE_ELEMENT
D;JNE
//C_GOTO arg1: END arg2: None goto END
@FibonacciSeries.$END
0;JMP
//C_LABEL arg1: COMPUTE_ELEMENT arg2: None label COMPUTE_ELEMENT
(FibonacciSeries.$COMPUTE_ELEMENT)//C_PUSH arg1: that arg2: 0 push that 0
@0
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: that arg2: 1 push that 1
@1
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: add arg2: None add
@SP // pop from stack to memory address 13 and 14
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@14
M=D
@13 // Y
D=M
@14 // X
M=M+D
@14 // push memory address 14 to stack 
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: that arg2: 2 pop that 2
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@2
D=A
@THAT
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_PUSH arg1: pointer arg2: 1 push pointer 1
@4
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: add arg2: None add
@SP // pop from stack to memory address 13 and 14
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@14
M=D
@13 // Y
D=M
@14 // X
M=M+D
@14 // push memory address 14 to stack 
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: sub arg2: None sub
@SP // pop from stack to memory address 13 and 14
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@14
M=D
@13 // Y
D=M
@14 // X
M=M-D
@14 // push memory address 14 to stack 
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@0
D=A
@ARG
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_GOTO arg1: LOOP arg2: None goto LOOP
@FibonacciSeries.$LOOP
0;JMP
//C_LABEL arg1: END arg2: None label END
(FibonacciSeries.$END)