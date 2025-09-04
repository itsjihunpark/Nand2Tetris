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
@15
A=M
0;JMP
(ADD)
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
@Sys.init$ret.0 // push return label
D=A
@SP
M=M+1
A=M-1
M=D
@RETURNFROMSAVEFRAME.0
D=A
@15
M=D
@SAVEFRAME
0;JMP
(RETURNFROMSAVEFRAME.0)
@0
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Sys.init // make jump
0;JMP
(Sys.init$ret.0)
//C_FUNCTION arg1: Sys.init arg2: 0 function Sys.init 0
(Sys.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Main.fibonacci arg2: 1 call Main.fibonacci 1
@Main.fibonacci$ret.0 // push return label
D=A
@SP
M=M+1
A=M-1
M=D
@RETURNFROMSAVEFRAME.1
D=A
@15
M=D
@SAVEFRAME
0;JMP
(RETURNFROMSAVEFRAME.1)
@1
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Main.fibonacci // make jump
0;JMP
(Main.fibonacci$ret.0)
//C_LABEL arg1: END arg2: None label END
(Sys.init$END)//C_GOTO arg1: END arg2: None goto END
@Sys.init$END
0;JMP
//C_FUNCTION arg1: Main.fibonacci arg2: 0 function Main.fibonacci 0
(Main.fibonacci)
//@0
//D=A
//@SP
//M=M+D
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.0
D=A
@15
M=D
@LT
0;JMP
(ARITHMETIC_LT.0)
//C_IF arg1: N_LT_2 arg2: None if-goto N_LT_2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@13
M=D
@13
D=M
@Main.fibonacci$N_LT_2
D;JNE
//C_GOTO arg1: N_GE_2 arg2: None goto N_GE_2
@Main.fibonacci$N_GE_2
0;JMP
//C_LABEL arg1: N_LT_2 arg2: None label N_LT_2
(Main.fibonacci$N_LT_2)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_LABEL arg1: N_GE_2 arg2: None label N_GE_2
(Main.fibonacci$N_GE_2)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.0
D=A
@15
M=D
@SUB
0;JMP
(ARITHMETIC_SUB.0)
//C_CALL arg1: Main.fibonacci arg2: 1 call Main.fibonacci 1
@Main.fibonacci$ret.1 // push return label
D=A
@SP
M=M+1
A=M-1
M=D
@RETURNFROMSAVEFRAME.2
D=A
@15
M=D
@SAVEFRAME
0;JMP
(RETURNFROMSAVEFRAME.2)
@1
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Main.fibonacci // make jump
0;JMP
(Main.fibonacci$ret.1)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.1
D=A
@15
M=D
@SUB
0;JMP
(ARITHMETIC_SUB.1)
//C_CALL arg1: Main.fibonacci arg2: 1 call Main.fibonacci 1
@Main.fibonacci$ret.2 // push return label
D=A
@SP
M=M+1
A=M-1
M=D
@RETURNFROMSAVEFRAME.3
D=A
@15
M=D
@SAVEFRAME
0;JMP
(RETURNFROMSAVEFRAME.3)
@1
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Main.fibonacci // make jump
0;JMP
(Main.fibonacci$ret.2)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.0
D=A
@15
M=D
@ADD
0;JMP
(ARITHMETIC_ADD.0)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
