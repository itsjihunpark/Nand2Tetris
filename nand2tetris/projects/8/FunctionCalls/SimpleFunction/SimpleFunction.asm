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
(SAVEFRAME)
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
@13
A=M
0;JMP
(BOOTSTRAP)
//C_FUNCTION arg1: SimpleFunction.test arg2: 2 function SimpleFunction.test 2
(SimpleFunction.test)
//@2
//D=A
//@SP
//M=M+D
@0
D=A
@SP
M=M+1
A=M-1
M=D
@0
D=A
@SP
M=M+1
A=M-1
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
//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
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
//C_ARITHMETIC arg1: not arg2: None not
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
//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
