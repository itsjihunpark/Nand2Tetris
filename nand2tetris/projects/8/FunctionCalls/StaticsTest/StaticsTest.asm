@256
D=A
@SP
M=D
@Sys.init$ret.0 // push return label
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push LCL pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push ARG pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push THIS pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push THAT pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // reposition ARG pointer to be SP - 5 - nArgs
D=M
@5
D=D-A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Class1.set arg2: 2 call Class1.set 2
@Class1.set$ret.0 // push return label
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push LCL pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push ARG pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push THIS pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push THAT pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // reposition ARG pointer to be SP - 5 - nArgs
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Class1.set // make jump
0;JMP
(Class1.set$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 23 push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Class2.set arg2: 2 call Class2.set 2
@Class2.set$ret.0 // push return label
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push LCL pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push ARG pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push THIS pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push THAT pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // reposition ARG pointer to be SP - 5 - nArgs
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Class2.set // make jump
0;JMP
(Class2.set$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Class1.get arg2: 0 call Class1.get 0
@Class1.get$ret.0 // push return label
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push LCL pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push ARG pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push THIS pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push THAT pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // reposition ARG pointer to be SP - 5 - nArgs
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Class1.get // make jump
0;JMP
(Class1.get$ret.0)
//C_CALL arg1: Class2.get arg2: 0 call Class2.get 0
@Class2.get$ret.0 // push return label
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // push LCL pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG // push ARG pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push THIS pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push THAT pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // reposition ARG pointer to be SP - 5 - nArgs
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP // reposition LCL pointer to be that of SP
D=M
@LCL
M=D
@Class2.get // make jump
0;JMP
(Class2.get$ret.0)
//C_LABEL arg1: END arg2: None label END
(Sys.init$END)//C_GOTO arg1: END arg2: None goto END
@Sys.init$END
0;JMP
//C_FUNCTION arg1: Class1.set arg2: 0 function Class1.set 0
(Class1.set)
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
A=M
M=D
@SP
M=M+1
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Class1.0
M=D
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Class1.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_RETURN arg1: None arg2: None return
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
//C_FUNCTION arg1: Class1.get arg2: 0 function Class1.get 0
(Class1.get)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 0 push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 1 push static 1
@Class1.1
D=M
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
//C_RETURN arg1: None arg2: None return
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
//C_FUNCTION arg1: Class2.set arg2: 0 function Class2.set 0
(Class2.set)
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
A=M
M=D
@SP
M=M+1
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Class2.0
M=D
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Class2.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_RETURN arg1: None arg2: None return
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
//C_FUNCTION arg1: Class2.get arg2: 0 function Class2.get 0
(Class2.get)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 0 push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 1 push static 1
@Class2.1
D=M
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
//C_RETURN arg1: None arg2: None return
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
