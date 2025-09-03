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
//C_CALL arg1: Memory.init arg2: 0 call Memory.init 0
@Memory.init$ret.0
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
@Memory.init
0;JMP
(Memory.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Math.init arg2: 0 call Math.init 0
@Math.init$ret.0
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
@Math.init
0;JMP
(Math.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Screen.init arg2: 0 call Screen.init 0
@Screen.init$ret.0
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
@Screen.init
0;JMP
(Screen.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Output.init arg2: 0 call Output.init 0
@Output.init$ret.0
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
@Output.init
0;JMP
(Output.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Keyboard.init arg2: 0 call Keyboard.init 0
@Keyboard.init$ret.0
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
@Keyboard.init
0;JMP
(Keyboard.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Main.main arg2: 0 call Main.main 0
@Main.main$ret.0
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
@Main.main
0;JMP
(Main.main$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Sys.halt arg2: 0 call Sys.halt 0
@Sys.halt$ret.0
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
@Sys.halt
0;JMP
(Sys.halt$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Sys.halt arg2: 0 function Sys.halt 0
(Sys.halt)
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Sys.halt$WHILE_END0
D;JNE
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Sys.halt$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Sys.wait arg2: 1 function Sys.wait 1
(Sys.wait)
@0
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT2
D;JLT
D=0
@ENDLT2
0;JMP
(LT2)
D=-1
(ENDLT2)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Sys.wait$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Sys.wait$IF_TRUE0)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.0
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
@Sys.error
0;JMP
(Sys.error$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Sys.wait$IF_FALSE0)
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Sys.wait$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT3
D;JGT
D=0
@ENDGT3
0;JMP
(GT3)
D=-1
(ENDGT3)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Sys.wait$WHILE_END0
D;JNE
//C_PUSH arg1: constant arg2: 50 push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT5
D;JGT
D=0
@ENDGT5
0;JMP
(GT5)
D=-1
(ENDGT5)
@14
M=D
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
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Sys.wait$WHILE_END1
D;JNE
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Sys.wait$WHILE_END1)
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Sys.wait$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Sys.error arg2: 0 function Sys.error 0
(Sys.error)
//C_PUSH arg1: constant arg2: 69 push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.0
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
@Output.printChar
0;JMP
(Output.printChar$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.1
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
@Output.printChar
0;JMP
(Output.printChar$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.2
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
@Output.printChar
0;JMP
(Output.printChar$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_CALL arg1: Output.printInt arg2: 1 call Output.printInt 1
@Output.printInt$ret.0
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
@Output.printInt
0;JMP
(Output.printInt$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Sys.halt arg2: 0 call Sys.halt 0
@Sys.halt$ret.1
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
@Sys.halt
0;JMP
(Sys.halt$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Array.new arg2: 0 function Array.new 0
(Array.new)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT9
D;JGT
D=0
@ENDGT9
0;JMP
(GT9)
D=-1
(ENDGT9)
@14
M=D
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
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Array.new$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Array.new$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Array.new$IF_TRUE0)
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.1
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
@Sys.error
0;JMP
(Sys.error$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Array.new$IF_FALSE0)
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
//C_CALL arg1: Memory.alloc arg2: 1 call Memory.alloc 1
@Memory.alloc$ret.0
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
@Memory.alloc
0;JMP
(Memory.alloc$ret.0)
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
//C_FUNCTION arg1: Array.dispose arg2: 0 function Array.dispose 0
(Array.dispose)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Memory.deAlloc arg2: 1 call Memory.deAlloc 1
@Memory.deAlloc$ret.0
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
@Memory.deAlloc
0;JMP
(Memory.deAlloc$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Keyboard.init arg2: 0 function Keyboard.init 0
(Keyboard.init)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Keyboard.keyPressed arg2: 0 function Keyboard.keyPressed 0
(Keyboard.keyPressed)
//C_PUSH arg1: constant arg2: 24576 push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@Memory.peek$ret.0
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
@Memory.peek
0;JMP
(Memory.peek$ret.0)
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
//C_FUNCTION arg1: Keyboard.readChar arg2: 2 function Keyboard.readChar 2
(Keyboard.readChar)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.3
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
@Output.printChar
0;JMP
(Output.printChar$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ11
D;JEQ
D=0
@ENDEQ11
0;JMP
(EQ11)
D=-1
(ENDEQ11)
@14
M=D
@14
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT12
D;JGT
D=0
@ENDGT12
0;JMP
(GT12)
D=-1
(ENDGT12)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Keyboard.readChar$WHILE_END0
D;JNE
//C_CALL arg1: Keyboard.keyPressed arg2: 0 call Keyboard.keyPressed 0
@Keyboard.keyPressed$ret.0
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
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT15
D;JGT
D=0
@ENDGT15
0;JMP
(GT15)
D=-1
(ENDGT15)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Keyboard.readChar$WHILE_END0)
//C_CALL arg1: String.backSpace arg2: 0 call String.backSpace 0
@String.backSpace$ret.0
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
@String.backSpace
0;JMP
(String.backSpace$ret.0)
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.4
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
@Output.printChar
0;JMP
(Output.printChar$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
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
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.5
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
@Output.printChar
0;JMP
(Output.printChar$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
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
//C_FUNCTION arg1: Keyboard.readLine arg2: 5 function Keyboard.readLine 5
(Keyboard.readLine)
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
//C_PUSH arg1: constant arg2: 80 push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: String.new arg2: 1 call String.new 1
@String.new$ret.0
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
@String.new
0;JMP
(String.new$ret.0)
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
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@Output.printString$ret.0
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
@Output.printString
0;JMP
(Output.printString$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: String.newLine arg2: 0 call String.newLine 0
@String.newLine$ret.0
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
@String.newLine
0;JMP
(String.newLine$ret.0)
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
//C_CALL arg1: String.backSpace arg2: 0 call String.backSpace 0
@String.backSpace$ret.1
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
@String.backSpace
0;JMP
(String.backSpace$ret.1)
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Keyboard.readLine$WHILE_END0
D;JNE
//C_CALL arg1: Keyboard.readChar arg2: 0 call Keyboard.readChar 0
@Keyboard.readChar$ret.0
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
@Keyboard.readChar
0;JMP
(Keyboard.readChar$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ18
D;JEQ
D=0
@ENDEQ18
0;JMP
(EQ18)
D=-1
(ENDEQ18)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
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
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ20
D;JEQ
D=0
@ENDEQ20
0;JMP
(EQ20)
D=-1
(ENDEQ20)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)
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
//C_CALL arg1: String.eraseLastChar arg2: 1 call String.eraseLastChar 1
@String.eraseLastChar$ret.0
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
@String.eraseLastChar
0;JMP
(String.eraseLastChar$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Keyboard.readLine$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)
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
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@String.appendChar$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.0)
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
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Keyboard.readLine$IF_END1)
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Keyboard.readLine$WHILE_END0)
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
//C_FUNCTION arg1: Keyboard.readInt arg2: 2 function Keyboard.readInt 2
(Keyboard.readInt)
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
//C_CALL arg1: Keyboard.readLine arg2: 1 call Keyboard.readLine 1
@Keyboard.readLine$ret.0
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
@Keyboard.readLine
0;JMP
(Keyboard.readLine$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_CALL arg1: String.intValue arg2: 1 call String.intValue 1
@String.intValue$ret.0
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
@String.intValue
0;JMP
(String.intValue$ret.0)
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
//C_CALL arg1: String.dispose arg2: 1 call String.dispose 1
@String.dispose$ret.0
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
@String.dispose
0;JMP
(String.dispose$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
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
//C_FUNCTION arg1: Math.init arg2: 1 function Math.init 1
(Math.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.0
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
@Array.new
0;JMP
(Array.new$ret.0)
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Math.1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.1
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
@Array.new
0;JMP
(Array.new$ret.1)
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Math.0
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.init$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT22
D;JLT
D=0
@ENDLT22
0;JMP
(LT22)
D=-1
(ENDLT22)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.init$WHILE_END0
D;JNE
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.init$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Math.abs arg2: 0 function Math.abs 0
(Math.abs)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT31
D;JLT
D=0
@ENDLT31
0;JMP
(LT31)
D=-1
(ENDLT31)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.abs$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.abs$IF_TRUE0)
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.abs$IF_FALSE0)
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
//C_FUNCTION arg1: Math.multiply arg2: 5 function Math.multiply 5
(Math.multiply)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT33
D;JLT
D=0
@ENDLT33
0;JMP
(LT33)
D=-1
(ENDLT33)
@14
M=D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT34
D;JGT
D=0
@ENDGT34
0;JMP
(GT34)
D=-1
(ENDGT34)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT36
D;JGT
D=0
@ENDGT36
0;JMP
(GT36)
D=-1
(ENDGT36)
@14
M=D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT37
D;JLT
D=0
@ENDLT37
0;JMP
(LT37)
D=-1
(ENDLT37)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@Math.abs$ret.0
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
@Math.abs
0;JMP
(Math.abs$ret.0)
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@Math.abs$ret.1
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
@Math.abs
0;JMP
(Math.abs$ret.1)
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT40
D;JLT
D=0
@ENDLT40
0;JMP
(LT40)
D=-1
(ENDLT40)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.multiply$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.multiply$IF_TRUE0)
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.multiply$IF_FALSE0)
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT43
D;JLT
D=0
@ENDLT43
0;JMP
(LT43)
D=-1
(ENDLT43)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.multiply$WHILE_END0
D;JNE
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ47
D;JEQ
D=0
@ENDEQ47
0;JMP
(EQ47)
D=-1
(ENDEQ47)
@14
M=D
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
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.multiply$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Math.multiply$IF_TRUE1)
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Math.multiply$IF_FALSE1)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.multiply$WHILE_END0)
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
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.multiply$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Math.multiply$IF_TRUE2)
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Math.multiply$IF_FALSE2)
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
//C_FUNCTION arg1: Math.divide arg2: 4 function Math.divide 4
(Math.divide)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ55
D;JEQ
D=0
@ENDEQ55
0;JMP
(EQ55)
D=-1
(ENDEQ55)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.divide$IF_TRUE0)
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.2
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
@Sys.error
0;JMP
(Sys.error$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.divide$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT56
D;JLT
D=0
@ENDLT56
0;JMP
(LT56)
D=-1
(ENDLT56)
@14
M=D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT57
D;JGT
D=0
@ENDGT57
0;JMP
(GT57)
D=-1
(ENDGT57)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT59
D;JGT
D=0
@ENDGT59
0;JMP
(GT59)
D=-1
(ENDGT59)
@14
M=D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT60
D;JLT
D=0
@ENDLT60
0;JMP
(LT60)
D=-1
(ENDLT60)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@Math.abs$ret.2
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
@Math.abs
0;JMP
(Math.abs$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@Math.abs$ret.3
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
@Math.abs
0;JMP
(Math.abs$ret.3)
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.divide$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT64
D;JLT
D=0
@ENDLT64
0;JMP
(LT64)
D=-1
(ENDLT64)
@14
M=D
@14
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
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$WHILE_END0
D;JNE
//C_PUSH arg1: constant arg2: 32767 push constant 32767
@32767
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT73
D;JLT
D=0
@ENDLT73
0;JMP
(LT73)
D=-1
(ENDLT73)
@14
M=D
@14
D=M
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
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Math.divide$IF_TRUE1)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT84
D;JGT
D=0
@ENDGT84
0;JMP
(GT84)
D=-1
(ENDGT84)
@14
M=D
@14
D=M
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
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Math.divide$IF_TRUE2)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Math.divide$IF_FALSE2)
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Math.divide$IF_FALSE1)
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.divide$WHILE_END0)
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Math.divide$WHILE_EXP1)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT88
D;JGT
D=0
@ENDGT88
0;JMP
(GT88)
D=-1
(ENDGT88)
@14
M=D
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
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$WHILE_END1
D;JNE
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT93
D;JGT
D=0
@ENDGT93
0;JMP
(GT93)
D=-1
(ENDGT93)
@14
M=D
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
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Math.divide$IF_TRUE3)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Math.divide$IF_FALSE3)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Math.divide$WHILE_END1)
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
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.divide$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(Math.divide$IF_TRUE4)
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
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
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(Math.divide$IF_FALSE4)
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
//C_FUNCTION arg1: Math.sqrt arg2: 4 function Math.sqrt 4
(Math.sqrt)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT101
D;JLT
D=0
@ENDLT101
0;JMP
(LT101)
D=-1
(ENDLT101)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.sqrt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.sqrt$IF_TRUE0)
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.3
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
@Sys.error
0;JMP
(Sys.error$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.sqrt$IF_FALSE0)
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT103
D;JGT
D=0
@ENDGT103
0;JMP
(GT103)
D=-1
(ENDGT103)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.sqrt$WHILE_END0
D;JNE
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.0)
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
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT107
D;JGT
D=0
@ENDGT107
0;JMP
(GT107)
D=-1
(ENDGT107)
@14
M=D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT109
D;JLT
D=0
@ENDLT109
0;JMP
(LT109)
D=-1
(ENDLT109)
@14
M=D
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
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.sqrt$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Math.sqrt$IF_TRUE1)
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Math.sqrt$IF_FALSE1)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.sqrt$WHILE_END0)
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
//C_FUNCTION arg1: Math.max arg2: 0 function Math.max 0
(Math.max)
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
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT113
D;JGT
D=0
@ENDGT113
0;JMP
(GT113)
D=-1
(ENDGT113)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.max$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.max$IF_TRUE0)
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.max$IF_FALSE0)
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
//C_FUNCTION arg1: Math.min arg2: 0 function Math.min 0
(Math.min)
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT114
D;JLT
D=0
@ENDLT114
0;JMP
(LT114)
D=-1
(ENDLT114)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Math.min$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.min$IF_TRUE0)
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.min$IF_FALSE0)
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
//C_FUNCTION arg1: Memory.init arg2: 0 function Memory.init 0
(Memory.init)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@Memory.0
M=D
//C_PUSH arg1: constant arg2: 2048 push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
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
//C_PUSH arg1: constant arg2: 14334 push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 2049 push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
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
//C_PUSH arg1: constant arg2: 2050 push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Memory.peek arg2: 0 function Memory.peek 0
(Memory.peek)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_FUNCTION arg1: Memory.poke arg2: 0 function Memory.poke 0
(Memory.poke)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Memory.alloc arg2: 2 function Memory.alloc 2
(Memory.alloc)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT119
D;JLT
D=0
@ENDLT119
0;JMP
(LT119)
D=-1
(ENDLT119)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Memory.alloc$IF_TRUE0)
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.4
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
@Sys.error
0;JMP
(Sys.error$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Memory.alloc$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ120
D;JEQ
D=0
@ENDEQ120
0;JMP
(EQ120)
D=-1
(ENDEQ120)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Memory.alloc$IF_TRUE1)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Memory.alloc$IF_FALSE1)
//C_PUSH arg1: constant arg2: 2048 push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 16383 push constant 16383
@16383
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT121
D;JLT
D=0
@ENDLT121
0;JMP
(LT121)
D=-1
(ENDLT121)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT123
D;JLT
D=0
@ENDLT123
0;JMP
(LT123)
D=-1
(ENDLT123)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$WHILE_END0
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ128
D;JEQ
D=0
@ENDEQ128
0;JMP
(EQ128)
D=-1
(ENDEQ128)
@14
M=D
@14
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
//C_PUSH arg1: constant arg2: 16382 push constant 16382
@16382
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT129
D;JGT
D=0
@ENDGT129
0;JMP
(GT129)
D=-1
(ENDGT129)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ132
D;JEQ
D=0
@ENDEQ132
0;JMP
(EQ132)
D=-1
(ENDEQ132)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Memory.alloc$IF_TRUE2)
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: IF_END2 arg2: None goto IF_END2
@Memory.alloc$IF_END2
0;JMP
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Memory.alloc$IF_FALSE2)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ141
D;JEQ
D=0
@ENDEQ141
0;JMP
(EQ141)
D=-1
(ENDEQ141)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Memory.alloc$IF_TRUE3)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: IF_END3 arg2: None goto IF_END3
@Memory.alloc$IF_END3
0;JMP
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Memory.alloc$IF_FALSE3)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: IF_END3 arg2: None label IF_END3
(Memory.alloc$IF_END3)
//C_LABEL arg1: IF_END2 arg2: None label IF_END2
(Memory.alloc$IF_END2)
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Memory.alloc$WHILE_END0)
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
//C_PUSH arg1: constant arg2: 16379 push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT147
D;JGT
D=0
@ENDGT147
0;JMP
(GT147)
D=-1
(ENDGT147)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@Memory.alloc$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(Memory.alloc$IF_TRUE4)
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.5
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
@Sys.error
0;JMP
(Sys.error$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(Memory.alloc$IF_FALSE4)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT150
D;JGT
D=0
@ENDGT150
0;JMP
(GT150)
D=-1
(ENDGT150)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE5 arg2: None if-goto IF_TRUE5
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE5
D;JNE
//C_GOTO arg1: IF_FALSE5 arg2: None goto IF_FALSE5
@Memory.alloc$IF_FALSE5
0;JMP
//C_LABEL arg1: IF_TRUE5 arg2: None label IF_TRUE5
(Memory.alloc$IF_TRUE5)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ158
D;JEQ
D=0
@ENDEQ158
0;JMP
(EQ158)
D=-1
(ENDEQ158)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE6 arg2: None if-goto IF_TRUE6
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.alloc$IF_TRUE6
D;JNE
//C_GOTO arg1: IF_FALSE6 arg2: None goto IF_FALSE6
@Memory.alloc$IF_FALSE6
0;JMP
//C_LABEL arg1: IF_TRUE6 arg2: None label IF_TRUE6
(Memory.alloc$IF_TRUE6)
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: IF_END6 arg2: None goto IF_END6
@Memory.alloc$IF_END6
0;JMP
//C_LABEL arg1: IF_FALSE6 arg2: None label IF_FALSE6
(Memory.alloc$IF_FALSE6)
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: IF_END6 arg2: None label IF_END6
(Memory.alloc$IF_END6)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: IF_FALSE5 arg2: None label IF_FALSE5
(Memory.alloc$IF_FALSE5)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_FUNCTION arg1: Memory.deAlloc arg2: 2 function Memory.deAlloc 2
(Memory.deAlloc)
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ174
D;JEQ
D=0
@ENDEQ174
0;JMP
(EQ174)
D=-1
(ENDEQ174)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Memory.deAlloc$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ186
D;JEQ
D=0
@ENDEQ186
0;JMP
(EQ186)
D=-1
(ENDEQ186)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Memory.deAlloc$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Memory.deAlloc$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Memory.deAlloc$IF_END1)
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Memory.deAlloc$IF_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.init arg2: 0 function Output.init 0
(Output.init)
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: static arg2: 4 pop static 4
@SP
M=M-1
A=M
D=M
@Output.4
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
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
@Output.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@Output.0
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: String.new arg2: 1 call String.new 1
@String.new$ret.1
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
@String.new
0;JMP
(String.new$ret.1)
//C_POP arg1: static arg2: 3 pop static 3
@SP
M=M-1
A=M
D=M
@Output.3
M=D
//C_CALL arg1: Output.initMap arg2: 0 call Output.initMap 0
@Output.initMap$ret.0
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
@Output.initMap
0;JMP
(Output.initMap$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_CALL arg1: Output.createShiftedMap arg2: 0 call Output.createShiftedMap 0
@Output.createShiftedMap$ret.0
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
@Output.createShiftedMap
0;JMP
(Output.createShiftedMap$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Output.initMap arg2: 0 function Output.initMap 0
(Output.initMap)
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.2
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
@Array.new
0;JMP
(Array.new$ret.2)
//C_POP arg1: static arg2: 5 pop static 5
@SP
M=M-1
A=M
D=M
@Output.5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.0
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.1
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 33 push constant 33
@33
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.2
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 34 push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 20 push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.3
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.4
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 36 push constant 36
@36
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.5
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 37 push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.6
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.6)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 38 push constant 38
@38
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.7
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.7)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 39 push constant 39
@39
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.8
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 40 push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.9
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.9)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 41 push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.10
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 42 push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.11
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.11)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.12
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.12)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 44 push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.13
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.13)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.14
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.14)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 46 push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.15
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.15)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 47 push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.16
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.16)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.17
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.17)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
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
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.18
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.18)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 50 push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.19
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.19)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.20
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.20)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 52 push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 26 push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 25 push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.21
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.21)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 53 push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.22
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.22)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.23
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.23)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.24
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.24)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.25
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.25)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 57 push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.26
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.26)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 58 push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.27
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.27)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.28
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.28)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.29
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.29)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 61 push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.30
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.30)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.31
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.31)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 64 push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.32
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.32)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.33
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.33)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 65 push constant 65
@65
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.34
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.34)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 66 push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.35
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.35)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 67 push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.36
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.36)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 68 push constant 68
@68
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
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.37
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.37)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 69 push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
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
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.38
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.38)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 70 push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
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
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.39
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.39)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 71 push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 44 push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.40
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.40)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 72 push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.41
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.41)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 73 push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.42
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.42)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 74 push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.43
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.43)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 75 push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
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
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.44
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.44)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 76 push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.45
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.45)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 77 push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 33 push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.46
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.46)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 78 push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.47
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.47)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 79 push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.48
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.48)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 80 push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.49
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.49)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 81 push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.50
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.50)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.51
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.51)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 83 push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.52
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.52)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 84 push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.53
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.53)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 85 push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.54
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.54)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 86 push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.55
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.55)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 87 push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.56
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.56)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 88 push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.57
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.57)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 89 push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.58
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.58)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 90 push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.59
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.59)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 91 push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.60
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.60)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 92 push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.61
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.61)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 93 push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.62
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.62)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 94 push constant 94
@94
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
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.63
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.63)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 95 push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.64
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.64)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 96 push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.65
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.65)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 97 push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.66
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.66)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 98 push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.67
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.67)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.68
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.68)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 100 push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.69
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.69)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.70
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.70)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 102 push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 38 push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.71
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.71)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 103 push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.72
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.72)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 104 push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.73
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.73)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 105 push constant 105
@105
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.74
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.74)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 106 push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.75
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.75)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 107 push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
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
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.76
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.76)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 108 push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.77
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.77)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 109 push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 29 push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.78
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.78)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 110 push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 29 push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.79
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.79)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 111 push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.80
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.80)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 112 push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.81
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.81)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 113 push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.82
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.82)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 114 push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 29 push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.83
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.83)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 115 push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.84
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.84)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 116 push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.85
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.85)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 117 push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.86
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.86)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 118 push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.87
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.87)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 119 push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.88
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.88)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 120 push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.89
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.89)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 121 push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.90
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.90)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 122 push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.91
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.91)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 123 push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.92
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.92)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 124 push constant 124
@124
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.93
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.93)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 125 push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.94
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.94)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 126 push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 38 push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 25 push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@Output.create$ret.95
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
@12
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(Output.create$ret.95)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Output.create arg2: 1 function Output.create 1
(Output.create)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.3
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
@Array.new
0;JMP
(Array.new$ret.3)
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: static arg2: 5 push static 5
@Output.5
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_PUSH arg1: argument arg2: 4 push argument 4
@4
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
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
//C_PUSH arg1: argument arg2: 5 push argument 5
@5
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
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
//C_PUSH arg1: argument arg2: 6 push argument 6
@6
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
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
//C_PUSH arg1: argument arg2: 7 push argument 7
@7
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
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
//C_PUSH arg1: argument arg2: 8 push argument 8
@8
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
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
//C_PUSH arg1: argument arg2: 9 push argument 9
@9
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 9 push constant 9
@9
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
//C_PUSH arg1: argument arg2: 10 push argument 10
@10
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
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
//C_PUSH arg1: argument arg2: 11 push argument 11
@11
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.createShiftedMap arg2: 4 function Output.createShiftedMap 4
(Output.createShiftedMap)
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
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.4
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
@Array.new
0;JMP
(Array.new$ret.4)
//C_POP arg1: static arg2: 6 pop static 6
@SP
M=M-1
A=M
D=M
@Output.6
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT204
D;JLT
D=0
@ENDLT204
0;JMP
(LT204)
D=-1
(ENDLT204)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.createShiftedMap$WHILE_END0
D;JNE
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
//C_PUSH arg1: static arg2: 5 push static 5
@Output.5
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.5
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
@Array.new
0;JMP
(Array.new$ret.5)
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
//C_PUSH arg1: static arg2: 6 push static 6
@Output.6
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)
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
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT208
D;JLT
D=0
@ENDLT208
0;JMP
(LT208)
D=-1
(ENDLT208)
@14
M=D
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
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.createShiftedMap$WHILE_END1
D;JNE
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Output.createShiftedMap$WHILE_END1)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ213
D;JEQ
D=0
@ENDEQ213
0;JMP
(EQ213)
D=-1
(ENDEQ213)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.createShiftedMap$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
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
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.createShiftedMap$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.createShiftedMap$IF_END0)
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Output.createShiftedMap$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.getMap arg2: 1 function Output.getMap 1
(Output.getMap)
@0
D=A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT215
D;JLT
D=0
@ENDLT215
0;JMP
(LT215)
D=-1
(ENDLT215)
@14
M=D
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
//C_PUSH arg1: constant arg2: 126 push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT216
D;JGT
D=0
@ENDGT216
0;JMP
(GT216)
D=-1
(ENDGT216)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.getMap$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.getMap$IF_TRUE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.getMap$IF_FALSE0)
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.getMap$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Output.getMap$IF_TRUE1)
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
//C_PUSH arg1: static arg2: 5 push static 5
@Output.5
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Output.getMap$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Output.getMap$IF_FALSE1)
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
//C_PUSH arg1: static arg2: 6 push static 6
@Output.6
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Output.getMap$IF_END1)
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
//C_FUNCTION arg1: Output.drawChar arg2: 4 function Output.drawChar 4
(Output.drawChar)
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
//C_CALL arg1: Output.getMap arg2: 1 call Output.getMap 1
@Output.getMap$ret.0
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
@Output.getMap
0;JMP
(Output.getMap$ret.0)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT220
D;JLT
D=0
@ENDLT220
0;JMP
(LT220)
D=-1
(ENDLT220)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.drawChar$WHILE_END0
D;JNE
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.drawChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.drawChar$IF_TRUE0)
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
//C_PUSH arg1: static arg2: 4 push static 4
@Output.4
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
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
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.drawChar$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.drawChar$IF_FALSE0)
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
//C_PUSH arg1: static arg2: 4 push static 4
@Output.4
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
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
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.drawChar$IF_END0)
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
//C_PUSH arg1: static arg2: 4 push static 4
@Output.4
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Output.drawChar$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.moveCursor arg2: 0 function Output.moveCursor 0
(Output.moveCursor)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT232
D;JLT
D=0
@ENDLT232
0;JMP
(LT232)
D=-1
(ENDLT232)
@14
M=D
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
//C_PUSH arg1: constant arg2: 22 push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT233
D;JGT
D=0
@ENDGT233
0;JMP
(GT233)
D=-1
(ENDGT233)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT235
D;JLT
D=0
@ENDLT235
0;JMP
(LT235)
D=-1
(ENDLT235)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT237
D;JGT
D=0
@ENDGT237
0;JMP
(GT237)
D=-1
(ENDGT237)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.moveCursor$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.moveCursor$IF_TRUE0)
//C_PUSH arg1: constant arg2: 20 push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.6
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
@Sys.error
0;JMP
(Sys.error$ret.6)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.moveCursor$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.0)
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
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
//C_PUSH arg1: constant arg2: 352 push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.2
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.2)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
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
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.3
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.3)
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ241
D;JEQ
D=0
@ENDEQ241
0;JMP
(EQ241)
D=-1
(ENDEQ241)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.drawChar arg2: 1 call Output.drawChar 1
@Output.drawChar$ret.0
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
@Output.drawChar
0;JMP
(Output.drawChar$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Output.printChar arg2: 0 function Output.printChar 0
(Output.printChar)
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
//C_CALL arg1: String.newLine arg2: 0 call String.newLine 0
@String.newLine$ret.1
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
@String.newLine
0;JMP
(String.newLine$ret.1)
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ242
D;JEQ
D=0
@ENDEQ242
0;JMP
(EQ242)
D=-1
(ENDEQ242)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.printChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.printChar$IF_TRUE0)
//C_CALL arg1: Output.println arg2: 0 call Output.println 0
@Output.println$ret.0
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
@Output.println
0;JMP
(Output.println$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.printChar$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.printChar$IF_FALSE0)
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
//C_CALL arg1: String.backSpace arg2: 0 call String.backSpace 0
@String.backSpace$ret.2
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
@String.backSpace
0;JMP
(String.backSpace$ret.2)
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ243
D;JEQ
D=0
@ENDEQ243
0;JMP
(EQ243)
D=-1
(ENDEQ243)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.printChar$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Output.printChar$IF_TRUE1)
//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
@Output.backSpace$ret.0
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
@Output.backSpace
0;JMP
(Output.backSpace$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Output.printChar$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Output.printChar$IF_FALSE1)
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
//C_CALL arg1: Output.drawChar arg2: 1 call Output.drawChar 1
@Output.drawChar$ret.1
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
@Output.drawChar
0;JMP
(Output.drawChar$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
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
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.printChar$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Output.printChar$IF_TRUE2)
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Output.printChar$IF_FALSE2)
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ247
D;JEQ
D=0
@ENDEQ247
0;JMP
(EQ247)
D=-1
(ENDEQ247)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.printChar$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Output.printChar$IF_TRUE3)
//C_CALL arg1: Output.println arg2: 0 call Output.println 0
@Output.println$ret.1
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
@Output.println
0;JMP
(Output.println$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END3 arg2: None goto IF_END3
@Output.printChar$IF_END3
0;JMP
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Output.printChar$IF_FALSE3)
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
//C_LABEL arg1: IF_END3 arg2: None label IF_END3
(Output.printChar$IF_END3)
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Output.printChar$IF_END1)
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.printChar$IF_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.printString arg2: 2 function Output.printString 2
(Output.printString)
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
//C_CALL arg1: String.length arg2: 1 call String.length 1
@String.length$ret.0
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
@String.length
0;JMP
(String.length$ret.0)
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Output.printString$WHILE_EXP0)
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT249
D;JLT
D=0
@ENDLT249
0;JMP
(LT249)
D=-1
(ENDLT249)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.printString$WHILE_END0
D;JNE
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
//C_CALL arg1: String.charAt arg2: 2 call String.charAt 2
@String.charAt$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.charAt
0;JMP
(String.charAt$ret.0)
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@Output.printChar$ret.6
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
@Output.printChar
0;JMP
(Output.printChar$ret.6)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Output.printString$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.printInt arg2: 0 function Output.printInt 0
(Output.printInt)
//C_PUSH arg1: static arg2: 3 push static 3
@Output.3
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
//C_CALL arg1: String.setInt arg2: 2 call String.setInt 2
@String.setInt$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.setInt
0;JMP
(String.setInt$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_PUSH arg1: static arg2: 3 push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@Output.printString$ret.1
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
@Output.printString
0;JMP
(Output.printString$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Output.println arg2: 0 function Output.println 0
(Output.println)
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 352 push constant 352
@352
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
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@Output.0
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 8128 push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ255
D;JEQ
D=0
@ENDEQ255
0;JMP
(EQ255)
D=-1
(ENDEQ255)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.println$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.println$IF_TRUE0)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
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
@Output.1
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.println$IF_FALSE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Output.backSpace arg2: 0 function Output.backSpace 0
(Output.backSpace)
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.backSpace$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.backSpace$IF_TRUE0)
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT256
D;JGT
D=0
@ENDGT256
0;JMP
(GT256)
D=-1
(ENDGT256)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.backSpace$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Output.backSpace$IF_TRUE1)
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Output.backSpace$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Output.backSpace$IF_FALSE1)
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
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
@Output.0
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ259
D;JEQ
D=0
@ENDEQ259
0;JMP
(EQ259)
D=-1
(ENDEQ259)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Output.backSpace$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Output.backSpace$IF_TRUE2)
//C_PUSH arg1: constant arg2: 8128 push constant 8128
@8128
D=A
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
@Output.1
M=D
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Output.backSpace$IF_FALSE2)
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 321 push constant 321
@321
D=A
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Output.backSpace$IF_END1)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.backSpace$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.backSpace$IF_FALSE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.backSpace$IF_END0)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Output.drawChar arg2: 1 call Output.drawChar 1
@Output.drawChar$ret.2
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
@Output.drawChar
0;JMP
(Output.drawChar$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Screen.init arg2: 1 function Screen.init 1
(Screen.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
D=A
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
@Screen.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
M=D
//C_PUSH arg1: constant arg2: 17 push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.6
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
@Array.new
0;JMP
(Array.new$ret.6)
//C_POP arg1: static arg2: 0 pop static 0
@SP
M=M-1
A=M
D=M
@Screen.0
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.init$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT264
D;JLT
D=0
@ENDLT264
0;JMP
(LT264)
D=-1
(ENDLT264)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.init$WHILE_END0
D;JNE
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.init$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.clearScreen arg2: 1 function Screen.clearScreen 1
(Screen.clearScreen)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 8192 push constant 8192
@8192
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT273
D;JLT
D=0
@ENDLT273
0;JMP
(LT273)
D=-1
(ENDLT273)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.clearScreen$WHILE_END0
D;JNE
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.clearScreen$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.updateLocation arg2: 0 function Screen.updateLocation 0
(Screen.updateLocation)
//C_PUSH arg1: static arg2: 2 push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.updateLocation$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Screen.updateLocation$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Screen.updateLocation$IF_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.setColor arg2: 0 function Screen.setColor 0
(Screen.setColor)
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
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
//C_FUNCTION arg1: Screen.drawPixel arg2: 3 function Screen.drawPixel 3
(Screen.drawPixel)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT284
D;JLT
D=0
@ENDLT284
0;JMP
(LT284)
D=-1
(ENDLT284)
@14
M=D
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
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT285
D;JGT
D=0
@ENDGT285
0;JMP
(GT285)
D=-1
(ENDGT285)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT287
D;JLT
D=0
@ENDLT287
0;JMP
(LT287)
D=-1
(ENDLT287)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT289
D;JGT
D=0
@ENDGT289
0;JMP
(GT289)
D=-1
(ENDGT289)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawPixel$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.7
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
@Sys.error
0;JMP
(Sys.error$ret.7)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.1)
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.4
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.4)
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.5
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.5)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Screen.drawConditional arg2: 0 function Screen.drawConditional 0
(Screen.drawConditional)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawConditional$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@Screen.drawPixel$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(Screen.drawPixel$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Screen.drawConditional$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@Screen.drawPixel$ret.1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(Screen.drawPixel$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Screen.drawConditional$IF_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.drawLine arg2: 11 function Screen.drawLine 11
(Screen.drawLine)
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
@0
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT294
D;JLT
D=0
@ENDLT294
0;JMP
(LT294)
D=-1
(ENDLT294)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT295
D;JGT
D=0
@ENDGT295
0;JMP
(GT295)
D=-1
(ENDGT295)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT297
D;JLT
D=0
@ENDLT297
0;JMP
(LT297)
D=-1
(ENDLT297)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT299
D;JGT
D=0
@ENDGT299
0;JMP
(GT299)
D=-1
(ENDGT299)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawLine$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawLine$IF_TRUE0)
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.8
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
@Sys.error
0;JMP
(Sys.error$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawLine$IF_FALSE0)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@Math.abs$ret.4
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
@Math.abs
0;JMP
(Math.abs$ret.4)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@Math.abs$ret.5
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
@Math.abs
0;JMP
(Math.abs$ret.5)
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT303
D;JLT
D=0
@ENDLT303
0;JMP
(LT303)
D=-1
(ENDLT303)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 6 pop local 6
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@6
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT304
D;JLT
D=0
@ENDLT304
0;JMP
(LT304)
D=-1
(ENDLT304)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT307
D;JLT
D=0
@ENDLT307
0;JMP
(LT307)
D=-1
(ENDLT307)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawLine$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawLine$IF_TRUE1)
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
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
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
//C_POP arg1: argument arg2: 2 pop argument 2
@SP
M=M-1
A=M
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
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_POP arg1: argument arg2: 3 pop argument 3
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@3
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawLine$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Screen.drawLine$IF_TRUE2)
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
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 8 pop local 8
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@8
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT310
D;JGT
D=0
@ENDGT310
0;JMP
(GT310)
D=-1
(ENDGT310)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 7 pop local 7
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@7
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
//C_GOTO arg1: IF_END2 arg2: None goto IF_END2
@Screen.drawLine$IF_END2
0;JMP
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 8 pop local 8
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@8
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT311
D;JGT
D=0
@ENDGT311
0;JMP
(GT311)
D=-1
(ENDGT311)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 7 pop local 7
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@7
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
//C_LABEL arg1: IF_END2 arg2: None label IF_END2
(Screen.drawLine$IF_END2)
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.6
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.6)
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
//C_POP arg1: local arg2: 5 pop local 5
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@5
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.7
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.7)
//C_POP arg1: local arg2: 9 pop local 9
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@9
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.8
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.8)
//C_POP arg1: local arg2: 10 pop local 10
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@10
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.drawConditional arg2: 3 call Screen.drawConditional 3
@Screen.drawConditional$ret.0
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawConditional
0;JMP
(Screen.drawConditional$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)
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
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT314
D;JLT
D=0
@ENDLT314
0;JMP
(LT314)
D=-1
(ENDLT314)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawLine$WHILE_END0
D;JNE
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT316
D;JLT
D=0
@ENDLT316
0;JMP
(LT316)
D=-1
(ENDLT316)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawLine$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Screen.drawLine$IF_TRUE3)
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 9 push local 9
@9
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
//C_POP arg1: local arg2: 5 pop local 5
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@5
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
//C_GOTO arg1: IF_END3 arg2: None goto IF_END3
@Screen.drawLine$IF_END3
0;JMP
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 10 push local 10
@10
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
//C_POP arg1: local arg2: 5 pop local 5
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@5
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
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawLine$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(Screen.drawLine$IF_TRUE4)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: IF_END4 arg2: None goto IF_END4
@Screen.drawLine$IF_END4
0;JMP
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(Screen.drawLine$IF_FALSE4)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_END4 arg2: None label IF_END4
(Screen.drawLine$IF_END4)
//C_LABEL arg1: IF_END3 arg2: None label IF_END3
(Screen.drawLine$IF_END3)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.drawConditional arg2: 3 call Screen.drawConditional 3
@Screen.drawConditional$ret.1
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawConditional
0;JMP
(Screen.drawConditional$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawLine$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.drawRectangle arg2: 9 function Screen.drawRectangle 9
(Screen.drawRectangle)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT322
D;JGT
D=0
@ENDGT322
0;JMP
(GT322)
D=-1
(ENDGT322)
@14
M=D
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT323
D;JGT
D=0
@ENDGT323
0;JMP
(GT323)
D=-1
(ENDGT323)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT325
D;JLT
D=0
@ENDLT325
0;JMP
(LT325)
D=-1
(ENDLT325)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT327
D;JGT
D=0
@ENDGT327
0;JMP
(GT327)
D=-1
(ENDGT327)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT329
D;JLT
D=0
@ENDLT329
0;JMP
(LT329)
D=-1
(ENDLT329)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT331
D;JGT
D=0
@ENDGT331
0;JMP
(GT331)
D=-1
(ENDGT331)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawRectangle$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
//C_PUSH arg1: constant arg2: 9 push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.9
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
@Sys.error
0;JMP
(Sys.error$ret.9)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.2
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.2)
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.9
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.9)
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
//C_POP arg1: local arg2: 7 pop local 7
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@7
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.3
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.3)
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.10
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.10)
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
//C_POP arg1: local arg2: 8 pop local 8
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@8
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
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 6 pop local 6
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@6
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
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 5 pop local 5
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@5
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.11
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.11)
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT343
D;JGT
D=0
@ENDGT343
0;JMP
(GT343)
D=-1
(ENDGT343)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawRectangle$WHILE_END0
D;JNE
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ347
D;JEQ
D=0
@ENDEQ347
0;JMP
(EQ347)
D=-1
(ENDEQ347)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawRectangle$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
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
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Screen.drawRectangle$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.2
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.2)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT350
D;JLT
D=0
@ENDLT350
0;JMP
(LT350)
D=-1
(ENDLT350)
@14
M=D
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
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawRectangle$WHILE_END1
D;JNE
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.3
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.3)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
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
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.4
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Screen.drawRectangle$IF_END1)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.drawHorizontal arg2: 11 function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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
@0
D=A
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.min arg2: 2 call Math.min 2
@Math.min$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.min
0;JMP
(Math.min$ret.0)
//C_POP arg1: local arg2: 7 pop local 7
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@7
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.max arg2: 2 call Math.max 2
@Math.max$ret.0
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.max
0;JMP
(Math.max$ret.0)
//C_POP arg1: local arg2: 8 pop local 8
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@8
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT358
D;JGT
D=0
@ENDGT358
0;JMP
(GT358)
D=-1
(ENDGT358)
@14
M=D
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
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT359
D;JLT
D=0
@ENDLT359
0;JMP
(LT359)
D=-1
(ENDLT359)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 512 push constant 512
@512
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT361
D;JLT
D=0
@ENDLT361
0;JMP
(LT361)
D=-1
(ENDLT361)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT364
D;JGT
D=0
@ENDGT364
0;JMP
(GT364)
D=-1
(ENDGT364)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawHorizontal$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.max arg2: 2 call Math.max 2
@Math.max$ret.1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.max
0;JMP
(Math.max$ret.1)
//C_POP arg1: local arg2: 7 pop local 7
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@7
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
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.min arg2: 2 call Math.min 2
@Math.min$ret.1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.min
0;JMP
(Math.min$ret.1)
//C_POP arg1: local arg2: 8 pop local 8
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@8
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
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.4
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.4)
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
//C_PUSH arg1: local arg2: 7 push local 7
@7
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.12
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.12)
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
//C_POP arg1: local arg2: 9 pop local 9
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@9
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
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.5
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.5)
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
//C_PUSH arg1: local arg2: 8 push local 8
@8
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.13
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.13)
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
//C_POP arg1: local arg2: 10 pop local 10
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@10
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
//C_PUSH arg1: local arg2: 9 push local 9
@9
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 5 pop local 5
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@5
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
//C_PUSH arg1: local arg2: 10 push local 10
@10
D=A
@LCL
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.14
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.14)
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_POP arg1: local arg2: 6 pop local 6
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@6
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ377
D;JEQ
D=0
@ENDEQ377
0;JMP
(EQ377)
D=-1
(ENDEQ377)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawHorizontal$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)
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
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.5
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Screen.drawHorizontal$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)
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
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.6
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.6)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT380
D;JLT
D=0
@ENDLT380
0;JMP
(LT380)
D=-1
(ENDLT380)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawHorizontal$WHILE_END0
D;JNE
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.7
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.7)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)
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
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@Screen.updateLocation$ret.8
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Screen.drawHorizontal$IF_END1)
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: Screen.drawSymetric arg2: 0 function Screen.drawSymetric 0
(Screen.drawSymetric)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.0
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.1
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
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
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.2
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
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
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.3
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: Screen.drawCircle arg2: 3 function Screen.drawCircle 3
(Screen.drawCircle)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT396
D;JLT
D=0
@ENDLT396
0;JMP
(LT396)
D=-1
(ENDLT396)
@14
M=D
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
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT397
D;JGT
D=0
@ENDGT397
0;JMP
(GT397)
D=-1
(ENDGT397)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT399
D;JLT
D=0
@ENDLT399
0;JMP
(LT399)
D=-1
(ENDLT399)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT401
D;JGT
D=0
@ENDGT401
0;JMP
(GT401)
D=-1
(ENDGT401)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawCircle$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.10
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
@Sys.error
0;JMP
(Sys.error$ret.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT404
D;JLT
D=0
@ENDLT404
0;JMP
(LT404)
D=-1
(ENDLT404)
@14
M=D
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT406
D;JGT
D=0
@ENDGT406
0;JMP
(GT406)
D=-1
(ENDGT406)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT409
D;JLT
D=0
@ENDLT409
0;JMP
(LT409)
D=-1
(ENDLT409)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT412
D;JGT
D=0
@ENDGT412
0;JMP
(GT412)
D=-1
(ENDGT412)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawCircle$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)
//C_PUSH arg1: constant arg2: 13 push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.11
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
@Sys.error
0;JMP
(Sys.error$ret.11)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
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
//C_CALL arg1: Screen.drawSymetric arg2: 4 call Screen.drawSymetric 4
@Screen.drawSymetric$ret.0
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawSymetric
0;JMP
(Screen.drawSymetric$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)
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
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT415
D;JGT
D=0
@ENDGT415
0;JMP
(GT415)
D=-1
(ENDGT415)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawCircle$WHILE_END0
D;JNE
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT417
D;JLT
D=0
@ENDLT417
0;JMP
(LT417)
D=-1
(ENDLT417)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@Screen.drawCircle$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.15
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.15)
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_GOTO arg1: IF_END2 arg2: None goto IF_END2
@Screen.drawCircle$IF_END2
0;JMP
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.16
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.16)
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
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_LABEL arg1: IF_END2 arg2: None label IF_END2
(Screen.drawCircle$IF_END2)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_CALL arg1: Screen.drawSymetric arg2: 4 call Screen.drawSymetric 4
@Screen.drawSymetric$ret.1
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawSymetric
0;JMP
(Screen.drawSymetric$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawCircle$WHILE_END0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: String.new arg2: 0 function String.new 0
(String.new)
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Memory.alloc arg2: 1 call Memory.alloc 1
@Memory.alloc$ret.1
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
@Memory.alloc
0;JMP
(Memory.alloc$ret.1)
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT425
D;JLT
D=0
@ENDLT425
0;JMP
(LT425)
D=-1
(ENDLT425)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.new$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.new$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.new$IF_TRUE0)
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.12
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
@Sys.error
0;JMP
(Sys.error$ret.12)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.new$IF_FALSE0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT426
D;JGT
D=0
@ENDGT426
0;JMP
(GT426)
D=-1
(ENDGT426)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.new$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@String.new$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(String.new$IF_TRUE1)
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
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.7
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
@Array.new
0;JMP
(Array.new$ret.7)
//C_POP arg1: this arg2: 1 pop this 1
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@1
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(String.new$IF_FALSE1)
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
//C_POP arg1: this arg2: 0 pop this 0
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: this arg2: 2 pop this 2
@SP
M=M-1
A=M
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
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
//C_FUNCTION arg1: String.dispose arg2: 0 function String.dispose 0
(String.dispose)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: this arg2: 0 push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT427
D;JGT
D=0
@ENDGT427
0;JMP
(GT427)
D=-1
(ENDGT427)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.dispose$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.dispose$IF_TRUE0)
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.dispose arg2: 1 call Array.dispose 1
@Array.dispose$ret.0
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
@Array.dispose
0;JMP
(Array.dispose$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.dispose$IF_FALSE0)
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Memory.deAlloc arg2: 1 call Memory.deAlloc 1
@Memory.deAlloc$ret.1
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
@Memory.deAlloc
0;JMP
(Memory.deAlloc$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: String.length arg2: 0 function String.length 0
(String.length)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
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
//C_FUNCTION arg1: String.charAt arg2: 0 function String.charAt 0
(String.charAt)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT428
D;JLT
D=0
@ENDLT428
0;JMP
(LT428)
D=-1
(ENDLT428)
@14
M=D
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT429
D;JGT
D=0
@ENDGT429
0;JMP
(GT429)
D=-1
(ENDGT429)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ431
D;JEQ
D=0
@ENDEQ431
0;JMP
(EQ431)
D=-1
(ENDEQ431)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.charAt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.charAt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.charAt$IF_TRUE0)
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.13
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
@Sys.error
0;JMP
(Sys.error$ret.13)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.charAt$IF_FALSE0)
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
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_FUNCTION arg1: String.setCharAt arg2: 0 function String.setCharAt 0
(String.setCharAt)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT434
D;JLT
D=0
@ENDLT434
0;JMP
(LT434)
D=-1
(ENDLT434)
@14
M=D
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT435
D;JGT
D=0
@ENDGT435
0;JMP
(GT435)
D=-1
(ENDGT435)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ437
D;JEQ
D=0
@ENDEQ437
0;JMP
(EQ437)
D=-1
(ENDEQ437)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setCharAt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.setCharAt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.setCharAt$IF_TRUE0)
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.14
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
@Sys.error
0;JMP
(Sys.error$ret.14)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.setCharAt$IF_FALSE0)
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
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: String.appendChar arg2: 0 function String.appendChar 0
(String.appendChar)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: this arg2: 0 push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ440
D;JEQ
D=0
@ENDEQ440
0;JMP
(EQ440)
D=-1
(ENDEQ440)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.appendChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.appendChar$IF_TRUE0)
//C_PUSH arg1: constant arg2: 17 push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.15
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
@Sys.error
0;JMP
(Sys.error$ret.15)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.appendChar$IF_FALSE0)
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
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
//C_POP arg1: this arg2: 2 pop this 2
@SP
M=M-1
A=M
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
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
//C_FUNCTION arg1: String.eraseLastChar arg2: 0 function String.eraseLastChar 0
(String.eraseLastChar)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ443
D;JEQ
D=0
@ENDEQ443
0;JMP
(EQ443)
D=-1
(ENDEQ443)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.eraseLastChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.16
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
@Sys.error
0;JMP
(Sys.error$ret.16)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
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
//C_POP arg1: this arg2: 2 pop this 2
@SP
M=M-1
A=M
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_FUNCTION arg1: String.intValue arg2: 5 function String.intValue 5
(String.intValue)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ445
D;JEQ
D=0
@ENDEQ445
0;JMP
(EQ445)
D=-1
(ENDEQ445)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.intValue$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.intValue$IF_TRUE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.intValue$IF_FALSE0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ448
D;JEQ
D=0
@ENDEQ448
0;JMP
(EQ448)
D=-1
(ENDEQ448)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.intValue$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(String.intValue$IF_TRUE1)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_POP arg1: local arg2: 4 pop local 4
@SP
M=M-1
A=M
D=M
@13 // memory space needed by VM translator
M=D // load value from the top of stack
@4
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(String.intValue$IF_FALSE1)
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(String.intValue$WHILE_EXP0)
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT450
D;JLT
D=0
@ENDLT450
0;JMP
(LT450)
D=-1
(ENDLT450)
@14
M=D
@14
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
//C_ARITHMETIC arg1: and arg2: None and
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
//AND
@13 // first pop value
D=M
@14 // second pop value
M = M&D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.intValue$WHILE_END0
D;JNE
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
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT455
D;JLT
D=0
@ENDLT455
0;JMP
(LT455)
D=-1
(ENDLT455)
@14
M=D
@14
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
//C_PUSH arg1: constant arg2: 9 push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT456
D;JGT
D=0
@ENDGT456
0;JMP
(GT456)
D=-1
(ENDGT456)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: or arg2: None or
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
//OR
@13 // first pop value
D=M
@14 // second pop value
M = M|D
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
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.intValue$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@String.intValue$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(String.intValue$IF_TRUE2)
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.17
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.17)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(String.intValue$IF_FALSE2)
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(String.intValue$WHILE_END0)
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
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.intValue$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@String.intValue$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(String.intValue$IF_TRUE3)
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
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
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(String.intValue$IF_FALSE3)
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
//C_FUNCTION arg1: String.setInt arg2: 4 function String.setInt 4
(String.setInt)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
M=M-1
A=M
D=M
@3
M=D
//C_PUSH arg1: this arg2: 0 push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ462
D;JEQ
D=0
@ENDEQ462
0;JMP
(EQ462)
D=-1
(ENDEQ462)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.setInt$IF_TRUE0)
//C_PUSH arg1: constant arg2: 19 push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.17
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
@Sys.error
0;JMP
(Sys.error$ret.17)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.setInt$IF_FALSE0)
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@Array.new$ret.8
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
@Array.new
0;JMP
(Array.new$ret.8)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT463
D;JLT
D=0
@ENDLT463
0;JMP
(LT463)
D=-1
(ENDLT463)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@String.setInt$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(String.setInt$IF_TRUE1)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_ARITHMETIC arg1: neg arg2: None neg
@SP
M=M-1
A=M
D=M
@13
M=D
//NEG
@14 // X
M=-M
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(String.setInt$IF_FALSE1)
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
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(String.setInt$WHILE_EXP0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: gt arg2: None gt
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
//GT
@13  // Y
D=M
@14 // X
D=M-D
@GT466
D;JGT
D=0
@ENDGT466
0;JMP
(GT466)
D=-1
(ENDGT466)
@14
M=D
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
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$WHILE_END0
D;JNE
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@Math.divide$ret.6
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(Math.divide$ret.6)
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
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@Math.multiply$ret.18
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.18)
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@String.setInt$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(String.setInt$WHILE_END0)
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
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@String.setInt$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(String.setInt$IF_TRUE2)
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
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
M=M-1
A=M
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
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(String.setInt$IF_FALSE2)
//C_PUSH arg1: this arg2: 0 push this 0
@0
D=A
@THIS
A=M+D
D=M
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT474
D;JLT
D=0
@ENDLT474
0;JMP
(LT474)
D=-1
(ENDLT474)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@String.setInt$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(String.setInt$IF_TRUE3)
//C_PUSH arg1: constant arg2: 19 push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@Sys.error$ret.18
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
@Sys.error
0;JMP
(Sys.error$ret.18)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(String.setInt$IF_FALSE3)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_ARITHMETIC arg1: eq arg2: None eq
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
//EQ
@13 // y
D=M
@14 // x
D=M-D
@EQ475
D;JEQ
D=0
@ENDEQ475
0;JMP
(EQ475)
D=-1
(ENDEQ475)
@14
M=D
@14
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@String.setInt$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(String.setInt$IF_TRUE4)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_POP arg1: this arg2: 2 pop this 2
@SP
M=M-1
A=M
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
//C_GOTO arg1: IF_END4 arg2: None goto IF_END4
@String.setInt$IF_END4
0;JMP
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(String.setInt$IF_FALSE4)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//C_POP arg1: this arg2: 2 pop this 2
@SP
M=M-1
A=M
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
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(String.setInt$WHILE_EXP1)
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
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
//C_ARITHMETIC arg1: lt arg2: None lt
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
//LT
@13  // Y
D=M
@14 // X
D=M-D
@LT477
D;JLT
D=0
@ENDLT477
0;JMP
(LT477)
D=-1
(ENDLT477)
@14
M=D
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
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@String.setInt$WHILE_END1
D;JNE
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
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
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: that arg2: 0 push that 0
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
M=M-1
A=M
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
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
//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
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
//C_POP arg1: this arg2: 2 pop this 2
@SP
M=M-1
A=M
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
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@String.setInt$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(String.setInt$WHILE_END1)
//C_LABEL arg1: IF_END4 arg2: None label IF_END4
(String.setInt$IF_END4)
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
//C_CALL arg1: Array.dispose arg2: 1 call Array.dispose 1
@Array.dispose$ret.1
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
@Array.dispose
0;JMP
(Array.dispose$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//C_FUNCTION arg1: String.newLine arg2: 0 function String.newLine 0
(String.newLine)
//C_PUSH arg1: constant arg2: 128 push constant 128
@128
D=A
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
//C_FUNCTION arg1: String.backSpace arg2: 0 function String.backSpace 0
(String.backSpace)
//C_PUSH arg1: constant arg2: 129 push constant 129
@129
D=A
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
//C_FUNCTION arg1: String.doubleQuote arg2: 0 function String.doubleQuote 0
(String.doubleQuote)
//C_PUSH arg1: constant arg2: 34 push constant 34
@34
D=A
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
