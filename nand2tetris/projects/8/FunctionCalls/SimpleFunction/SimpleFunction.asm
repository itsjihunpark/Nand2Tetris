@256
D=A
@SP
M=D
@Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$ret.0)
//C_FUNCTION arg1: SimpleFunction.test arg2: 2 function SimpleFunction.test 2
(SimpleFunction.test)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: add arg2: None add
@SP
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
//ADD
@13 // Y
D=M
@14 // X
M=M+D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: not arg2: None not
@SP
M=M-1
A=M
D=M
@13
M=D
//NOT
@14 // first pop value
M=!M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//C_ARITHMETIC arg1: add arg2: None add
@SP
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
//ADD
@13 // Y
D=M
@14 // X
M=M+D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//C_ARITHMETIC arg1: sub arg2: None sub
@SP
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
//SUB
@13 // Y
D=M
@14 // X
M=M-D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_RETURN arg1: None arg2: None return
//frame = LCL
@LCL
D=M
@13 // frame
M=D
//retAddr = frame-5
@5
D=A
@13
D=M-D // RAM address that has the return address (ROM)
A=D
D=M //return address itself
@14 // retAddr
M=D
@SP
M=M-1
A=M
D=M
@15
M=D
@15
D=M
@ARG
A=M
M=D
//SP = ARG+1
@ARG
D=M
@SP
M=D+1
//THAT = *frame-1
@13
D=M-1
A=D
D=M
@THAT
M=D
//THIS = *frame-2
@13
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
//ARG = *frame-3
@13
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
//LCL = *frame-4
@13
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
//goto retAddr
@14
A=M
0;JMP
