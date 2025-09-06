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
(EQ)
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
@13 // y
D=M
@14 // x
D=M-D
@ISEQ
D;JEQ
D=0
@ENDEQ
0;JMP
(ISEQ)
D=-1
(ENDEQ)
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
(BOOTSTRAP)
//C_PUSH arg1: constant arg2: 3030 push constant 3030
@3030
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
D=M
@3
M=D
//C_PUSH arg1: constant arg2: 3040 push constant 3040
@3040
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@2
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
//C_PUSH arg1: constant arg2: 46 push constant 46
@46
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 6 pop that 6
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@6
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
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: pointer arg2: 1 push pointer 1
@4
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
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
//C_PUSH arg1: that arg2: 6 push that 6
@6
D=A
@THAT
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
