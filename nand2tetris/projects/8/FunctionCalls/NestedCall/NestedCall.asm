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
//C_FUNCTION arg1: Sys.init arg2: 0 function Sys.init 0
(Sys.init)
//C_PUSH arg1: constant arg2: 4000 push constant 4000
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: constant arg2: 5000 push constant 5000
@5000
D=A
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
//C_CALL arg1: Sys.main arg2: 0 call Sys.main 0
@Sys.main$ret.0
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
@Sys.main
0;JMP
(Sys.main$ret.0)
//C_POP arg1: temp arg2: 1 pop temp 1
@SP
M=M-1
A=M
D=M
@6
M=D
//C_LABEL arg1: LOOP arg2: None label LOOP
(Sys.init$LOOP)
//C_GOTO arg1: LOOP arg2: None goto LOOP
@Sys.init$LOOP
0;JMP
//C_FUNCTION arg1: Sys.main arg2: 5 function Sys.main 5
(Sys.main)
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
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 4001 push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: constant arg2: 5001 push constant 5001
@5001
D=A
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
//C_PUSH arg1: constant arg2: 200 push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 1 pop local 1
@SP
M=M-1
A=M
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
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 2 pop local 2
@SP
M=M-1
A=M
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
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 3 pop local 3
@SP
M=M-1
A=M
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
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.add12 arg2: 1 call Sys.add12 1
@Sys.add12$ret.0
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
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP
(Sys.add12$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 4 push local 4
@4
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
//C_FUNCTION arg1: Sys.add12 arg2: 0 function Sys.add12 0
(Sys.add12)
//C_PUSH arg1: constant arg2: 4002 push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: constant arg2: 5002 push constant 5002
@5002
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
