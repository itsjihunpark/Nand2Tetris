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
@SP // pop from stack
AM=M-1
D=M // Y
@SP
AM=M-1
D=M+D // D = X+Y
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
@SP // pop from stack
AM=M-1
D=M // Y
@SP
AM=M-1
D=M-D //D = X-Y
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
@SP // pop from stack
AM=M-1
D=-M
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
@SP // pop from stack
AM=M-1
D=M // Y
@SP
AM=M-1
D=M-D // D = X - Y
@ISGT
D;JGT
D=0
@ENDGT
0;JMP
(ISGT)
D=-1
(ENDGT)
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
@SP // pop from stack
AM=M-1
D=M // Y
@SP
AM=M-1
D=M-D // D = X - Y
@ISLT
D;JLT
D=0
@ENDLT
0;JMP
(ISLT)
D=-1
(ENDLT)
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
@SP // pop from stack
AM=M-1
D=M
@SP
AM=M-1
D=M&D
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
@SP // pop from stack
AM=M-1
D=M
@SP
AM=M-1
D = M|D
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
@SP // pop from stack
AM=M-1
D=!M
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
@SP // pop from stack
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@ISEQ
D;JEQ
D=0
@ENDEQ
0;JMP
(ISEQ)
D=-1
(ENDEQ)
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
@0
D=A
@14
M=D
@Sys.init
D=A
@15
M=D
@Sys.init$ret.0
D=A
@CALL
0;JMP
(Sys.init$ret.0)
//C_FUNCTION arg1: Sys.init arg2: 0 function Sys.init 0
(Sys.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 4000 push constant 4000
@4000
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
//C_PUSH arg1: constant arg2: 5000 push constant 5000
@5000
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
//C_CALL arg1: Sys.main arg2: 0 call Sys.main 0
@0
D=A
@14
M=D
@Sys.main
D=A
@15
M=D
@Sys.main$ret.0
D=A
@CALL
0;JMP
(Sys.main$ret.0)
//C_POP arg1: temp arg2: 1 pop temp 1
@SP
AM=M-1
D=M
@6
M=D
//C_LABEL arg1: LOOP arg2: None label LOOP
(Sys.init$LOOP)//C_GOTO arg1: LOOP arg2: None goto LOOP
@Sys.init$LOOP
0;JMP
//C_FUNCTION arg1: Sys.main arg2: 5 function Sys.main 5
(Sys.main)
//@5
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
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 4001 push constant 4001
@4001
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
//C_PUSH arg1: constant arg2: 5001 push constant 5001
@5001
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
//C_PUSH arg1: constant arg2: 200 push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@1
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
//C_PUSH arg1: constant arg2: 40 push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@2
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@3
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
//C_PUSH arg1: constant arg2: 123 push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.add12 arg2: 1 call Sys.add12 1
@1
D=A
@14
M=D
@Sys.add12
D=A
@15
M=D
@Sys.add12$ret.0
D=A
@CALL
0;JMP
(Sys.add12$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
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
//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 4 push local 4
@4
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.1
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.1)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.2
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.2)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.3
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.3)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Sys.add12 arg2: 0 function Sys.add12 0
(Sys.add12)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 4002 push constant 4002
@4002
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
//C_PUSH arg1: constant arg2: 5002 push constant 5002
@5002
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.4
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.4)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
