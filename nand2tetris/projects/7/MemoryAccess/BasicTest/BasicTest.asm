@BOOTSTRAP
0;JMP
(RETURN)
@LCL //frame = LCL
D=M
@13 // frame
M=D
@5 //retAddr = frame-5
D=A
@13
D=M-D // RAM address that has the return address (ROM)
A=D
D=M //return address itself
@14 // retAddr
M=D
@SP // reposition return value to arg 0
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG //SP = ARG+1
D=M
@SP
M=D+1
@13 //THAT = *frame-1
D=M-1
A=D
D=M
@THAT
M=D
@13 //THIS = *frame-2
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@13 //ARG = *frame-3
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@13 //LCL = *frame-4
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@14 //goto retAddr
A=M
0;JMP
(CALL)
@SP // push return label
M=M+1
A=M-1
M=D
@LCL // push LCL pointer
D=M
@SP
M=M+1
A=M-1
M=D
@ARG // push ARG pointer
D=M
@SP
M=M+1
A=M-1
M=D
@THIS // push THIS pointer
D=M
@SP
M=M+1
A=M-1
M=D
@THAT // push THAT pointer
D=M
@SP
M=M+1
A=M-1
M=D
@SP // reposition ARG pointer to be SP - 5 - nArgs
D=M
@5
D=D-A
@14
D=D-M
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@15 // make jump to function
A=M
0;JMP
(ADD)
@15
M=D
@SP // pop from stack to memory address 13 and 14
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(SUB)
@15
M=D
@SP // pop from stack to memory address 13 and 14
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(NEG)
@15
M=D
@SP // pop from stack to memory address 13
AM=M-1
D=M
@13
M=D
@14 // X
M=-M
@14 // push memory address 14 to stack 
D=M
@SP
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(GT)
@15
M=D
@SP // pop from stack to memory address 13 and 14
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@14
M=D
@13  // Y
D=M
@14 // X
D=M-D
@ISGT
D;JGT
D=0
@ENDGT
0;JMP
(ISGT)
D=-1
(ENDGT)
@14
M=D
@14 // push memory address 14 to stack
D=M
@SP
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(LT)
@15
M=D
@SP // pop from stack to memory address 13 and 14
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@14
M=D
@13  // Y
D=M
@14 // X
D=M-D
@ISLT
D;JLT
D=0
@ENDLT
0;JMP
(ISLT)
D=-1
(ENDLT)
@14
M=D
@14 // push memory address 14 to stack 
D=M
@SP
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(AND)
@15
M=D
@SP // pop from stack to memory address 13 and 14
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@14
M=D
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14 // push memory address 14 to stack 
D=M
@SP
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(OR)
@15
M=D
@SP // pop from stack to memory address 13 and 14
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@14
M=D
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14 // push memory address 14 to stack 
D=M
@SP
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(NOT)
@15
M=D
@SP // pop from stack to memory address 13
AM=M-1
D=M
@13
M=D
@14 // first pop value
M=!M
@14 // push memory address 14 to stack 
D=M
@SP
M=M+1
A=M-1
M=D
@15
A=M
0;JMP
(BOOTSTRAP)
@256
D=A
@SP
M=D
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@0
D=A
@LCL
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_PUSH arg1: constant arg2: 21 push constant 21
@21
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 22 push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 2 pop argument 2
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@2
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@1
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
//C_PUSH arg1: constant arg2: 36 push constant 36
@36
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: this arg2: 6 pop this 6
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@6
D=A
@THIS
D=D+M
@14
M=D // load target memory segment address
@13
D=M
@14
A=M
M=D
//C_PUSH arg1: constant arg2: 42 push constant 42
@42
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 5 pop that 5
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@5
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
//C_POP arg1: that arg2: 2 pop that 2
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 510 push constant 510
@510
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 6 pop temp 6
@SP
AM=M-1
D=M
@11
M=D
//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: that arg2: 5 push that 5
@5
D=A
@THAT
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.0
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.0)
//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.0
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.0)
//C_PUSH arg1: this arg2: 6 push this 6
@6
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 6 push this 6
@6
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.1
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.1)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.1
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.1)
//C_PUSH arg1: temp arg2: 6 push temp 6
@11
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.2
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.2)
