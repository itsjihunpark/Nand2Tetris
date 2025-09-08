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
//C_CALL arg1: Memory.init arg2: 0 call Memory.init 0
@0
D=A
@14
M=D
@Memory.init
D=A
@15
M=D
@Memory.init$ret.0
D=A
@CALL
0;JMP
(Memory.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Math.init arg2: 0 call Math.init 0
@0
D=A
@14
M=D
@Math.init
D=A
@15
M=D
@Math.init$ret.0
D=A
@CALL
0;JMP
(Math.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Screen.init arg2: 0 call Screen.init 0
@0
D=A
@14
M=D
@Screen.init
D=A
@15
M=D
@Screen.init$ret.0
D=A
@CALL
0;JMP
(Screen.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Output.init arg2: 0 call Output.init 0
@0
D=A
@14
M=D
@Output.init
D=A
@15
M=D
@Output.init$ret.0
D=A
@CALL
0;JMP
(Output.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Keyboard.init arg2: 0 call Keyboard.init 0
@0
D=A
@14
M=D
@Keyboard.init
D=A
@15
M=D
@Keyboard.init$ret.0
D=A
@CALL
0;JMP
(Keyboard.init$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Main.main arg2: 0 call Main.main 0
@0
D=A
@14
M=D
@Main.main
D=A
@15
M=D
@Main.main$ret.0
D=A
@CALL
0;JMP
(Main.main$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Sys.halt arg2: 0 call Sys.halt 0
@0
D=A
@14
M=D
@Sys.halt
D=A
@15
M=D
@Sys.halt$ret.0
D=A
@CALL
0;JMP
(Sys.halt$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Sys.halt arg2: 0 function Sys.halt 0
(Sys.halt)
//@0
//D=A
//@SP
//M=M+D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Sys.halt$WHILE_EXP0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.0
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.0)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.1
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.1)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Sys.halt$WHILE_END0
D;JNE
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Sys.halt$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Sys.wait arg2: 1 function Sys.wait 1
(Sys.wait)
//@1
//D=A
//@SP
//M=M+D
@0
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.0
D=A
@LT
0;JMP
(ARITHMETIC_LT.0)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Sys.wait$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Sys.wait$IF_TRUE0)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.0
D=A
@CALL
0;JMP
(Sys.error$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Sys.wait$IF_FALSE0)//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Sys.wait$WHILE_EXP0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.0
D=A
@GT
0;JMP
(ARITHMETIC_GT.0)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.2
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.2)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Sys.wait$WHILE_END0
D;JNE
//C_PUSH arg1: constant arg2: 50 push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Sys.wait$WHILE_EXP1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.1
D=A
@GT
0;JMP
(ARITHMETIC_GT.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.3
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.3)
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP // pop from stack to memory address 13
AM=M-1
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
@ARITHMETIC_SUB.0
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Sys.wait$WHILE_END1)//C_PUSH arg1: argument arg2: 0 push argument 0
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
@SUB
0;JMP
(ARITHMETIC_SUB.1)
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Sys.wait$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Sys.error arg2: 0 function Sys.error 0
(Sys.error)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 69 push constant 69
@69
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.0
D=A
@CALL
0;JMP
(Output.printChar$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.1
D=A
@CALL
0;JMP
(Output.printChar$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.2
D=A
@CALL
0;JMP
(Output.printChar$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printInt arg2: 1 call Output.printInt 1
@1
D=A
@14
M=D
@Output.printInt
D=A
@15
M=D
@Output.printInt$ret.0
D=A
@CALL
0;JMP
(Output.printInt$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Sys.halt arg2: 0 call Sys.halt 0
@0
D=A
@14
M=D
@Sys.halt
D=A
@15
M=D
@Sys.halt$ret.1
D=A
@CALL
0;JMP
(Sys.halt$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Array.new arg2: 0 function Array.new 0
(Array.new)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.2
D=A
@GT
0;JMP
(ARITHMETIC_GT.2)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.4
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.4)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Array.new$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Array.new$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Array.new$IF_TRUE0)//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.1
D=A
@CALL
0;JMP
(Sys.error$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Array.new$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.alloc arg2: 1 call Memory.alloc 1
@1
D=A
@14
M=D
@Memory.alloc
D=A
@15
M=D
@Memory.alloc$ret.0
D=A
@CALL
0;JMP
(Memory.alloc$ret.0)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Array.dispose arg2: 0 function Array.dispose 0
(Array.dispose)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
D=M
@3
M=D
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.deAlloc arg2: 1 call Memory.deAlloc 1
@1
D=A
@14
M=D
@Memory.deAlloc
D=A
@15
M=D
@Memory.deAlloc$ret.0
D=A
@CALL
0;JMP
(Memory.deAlloc$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Keyboard.init arg2: 0 function Keyboard.init 0
(Keyboard.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Keyboard.keyPressed arg2: 0 function Keyboard.keyPressed 0
(Keyboard.keyPressed)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 24576 push constant 24576
@24576
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.0
D=A
@CALL
0;JMP
(Memory.peek$ret.0)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Keyboard.readChar arg2: 2 function Keyboard.readChar 2
(Keyboard.readChar)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.3
D=A
@CALL
0;JMP
(Output.printChar$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.0
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.3
D=A
@GT
0;JMP
(ARITHMETIC_GT.3)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.0
D=A
@OR
0;JMP
(ARITHMETIC_OR.0)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.5
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.5)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readChar$WHILE_END0
D;JNE
//C_CALL arg1: Keyboard.keyPressed arg2: 0 call Keyboard.keyPressed 0
@0
D=A
@14
M=D
@Keyboard.keyPressed
D=A
@15
M=D
@Keyboard.keyPressed$ret.0
D=A
@CALL
0;JMP
(Keyboard.keyPressed$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.4
D=A
@GT
0;JMP
(ARITHMETIC_GT.4)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Keyboard.readChar$WHILE_END0)//C_CALL arg1: String.backSpace arg2: 0 call String.backSpace 0
@0
D=A
@14
M=D
@String.backSpace
D=A
@15
M=D
@String.backSpace$ret.0
D=A
@CALL
0;JMP
(String.backSpace$ret.0)
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.4
D=A
@CALL
0;JMP
(Output.printChar$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.5
D=A
@CALL
0;JMP
(Output.printChar$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Keyboard.readLine arg2: 5 function Keyboard.readLine 5
(Keyboard.readLine)
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
//C_PUSH arg1: constant arg2: 80 push constant 80
@80
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.new arg2: 1 call String.new 1
@1
D=A
@14
M=D
@String.new
D=A
@15
M=D
@String.new$ret.0
D=A
@CALL
0;JMP
(String.new$ret.0)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@1
D=A
@14
M=D
@Output.printString
D=A
@15
M=D
@Output.printString$ret.0
D=A
@CALL
0;JMP
(Output.printString$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: String.newLine arg2: 0 call String.newLine 0
@0
D=A
@14
M=D
@String.newLine
D=A
@15
M=D
@String.newLine$ret.0
D=A
@CALL
0;JMP
(String.newLine$ret.0)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_CALL arg1: String.backSpace arg2: 0 call String.backSpace 0
@0
D=A
@14
M=D
@String.backSpace
D=A
@15
M=D
@String.backSpace$ret.1
D=A
@CALL
0;JMP
(String.backSpace$ret.1)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)//C_PUSH arg1: local arg2: 4 push local 4
@4
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.6
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.6)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.7
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.7)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readLine$WHILE_END0
D;JNE
//C_CALL arg1: Keyboard.readChar arg2: 0 call Keyboard.readChar 0
@0
D=A
@14
M=D
@Keyboard.readChar
D=A
@15
M=D
@Keyboard.readChar$ret.0
D=A
@CALL
0;JMP
(Keyboard.readChar$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.1
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.1)
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.8
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.8)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)//C_PUSH arg1: local arg2: 0 push local 0
@0
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.2
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.2)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.eraseLastChar arg2: 1 call String.eraseLastChar 1
@1
D=A
@14
M=D
@String.eraseLastChar
D=A
@15
M=D
@String.eraseLastChar$ret.0
D=A
@CALL
0;JMP
(String.eraseLastChar$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Keyboard.readLine$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
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
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.0
D=A
@CALL
0;JMP
(String.appendChar$ret.0)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Keyboard.readLine$IF_END1)//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Keyboard.readLine$WHILE_END0)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Keyboard.readInt arg2: 2 function Keyboard.readInt 2
(Keyboard.readInt)
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
//C_CALL arg1: Keyboard.readLine arg2: 1 call Keyboard.readLine 1
@1
D=A
@14
M=D
@Keyboard.readLine
D=A
@15
M=D
@Keyboard.readLine$ret.0
D=A
@CALL
0;JMP
(Keyboard.readLine$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: String.intValue arg2: 1 call String.intValue 1
@1
D=A
@14
M=D
@String.intValue
D=A
@15
M=D
@String.intValue$ret.0
D=A
@CALL
0;JMP
(String.intValue$ret.0)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: String.dispose arg2: 1 call String.dispose 1
@1
D=A
@14
M=D
@String.dispose
D=A
@15
M=D
@String.dispose$ret.0
D=A
@CALL
0;JMP
(String.dispose$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Main.main arg2: 4 function Main.main 4
(Main.main)
//@4
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
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.new arg2: 1 call String.new 1
@1
D=A
@14
M=D
@String.new
D=A
@15
M=D
@String.new$ret.1
D=A
@CALL
0;JMP
(String.new$ret.1)
//C_PUSH arg1: constant arg2: 72 push constant 72
@72
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.1
D=A
@CALL
0;JMP
(String.appendChar$ret.1)
//C_PUSH arg1: constant arg2: 111 push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.2
D=A
@CALL
0;JMP
(String.appendChar$ret.2)
//C_PUSH arg1: constant arg2: 119 push constant 119
@119
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.3
D=A
@CALL
0;JMP
(String.appendChar$ret.3)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.4
D=A
@CALL
0;JMP
(String.appendChar$ret.4)
//C_PUSH arg1: constant arg2: 109 push constant 109
@109
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.5
D=A
@CALL
0;JMP
(String.appendChar$ret.5)
//C_PUSH arg1: constant arg2: 97 push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.6
D=A
@CALL
0;JMP
(String.appendChar$ret.6)
//C_PUSH arg1: constant arg2: 110 push constant 110
@110
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.7
D=A
@CALL
0;JMP
(String.appendChar$ret.7)
//C_PUSH arg1: constant arg2: 121 push constant 121
@121
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.8
D=A
@CALL
0;JMP
(String.appendChar$ret.8)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.9
D=A
@CALL
0;JMP
(String.appendChar$ret.9)
//C_PUSH arg1: constant arg2: 110 push constant 110
@110
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.10
D=A
@CALL
0;JMP
(String.appendChar$ret.10)
//C_PUSH arg1: constant arg2: 117 push constant 117
@117
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.11
D=A
@CALL
0;JMP
(String.appendChar$ret.11)
//C_PUSH arg1: constant arg2: 109 push constant 109
@109
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.12
D=A
@CALL
0;JMP
(String.appendChar$ret.12)
//C_PUSH arg1: constant arg2: 98 push constant 98
@98
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.13
D=A
@CALL
0;JMP
(String.appendChar$ret.13)
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.14
D=A
@CALL
0;JMP
(String.appendChar$ret.14)
//C_PUSH arg1: constant arg2: 114 push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.15
D=A
@CALL
0;JMP
(String.appendChar$ret.15)
//C_PUSH arg1: constant arg2: 115 push constant 115
@115
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.16
D=A
@CALL
0;JMP
(String.appendChar$ret.16)
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.17
D=A
@CALL
0;JMP
(String.appendChar$ret.17)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.18
D=A
@CALL
0;JMP
(String.appendChar$ret.18)
//C_CALL arg1: Keyboard.readInt arg2: 1 call Keyboard.readInt 1
@1
D=A
@14
M=D
@Keyboard.readInt
D=A
@15
M=D
@Keyboard.readInt$ret.0
D=A
@CALL
0;JMP
(Keyboard.readInt$ret.0)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.0
D=A
@CALL
0;JMP
(Array.new$ret.0)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Main.main$WHILE_EXP0)//C_PUSH arg1: local arg2: 2 push local 2
@2
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.1
D=A
@LT
0;JMP
(ARITHMETIC_LT.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.9
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.9)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Main.main$WHILE_END0
D;JNE
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.0
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.0)
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.new arg2: 1 call String.new 1
@1
D=A
@14
M=D
@String.new
D=A
@15
M=D
@String.new$ret.2
D=A
@CALL
0;JMP
(String.new$ret.2)
//C_PUSH arg1: constant arg2: 69 push constant 69
@69
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.19
D=A
@CALL
0;JMP
(String.appendChar$ret.19)
//C_PUSH arg1: constant arg2: 110 push constant 110
@110
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.20
D=A
@CALL
0;JMP
(String.appendChar$ret.20)
//C_PUSH arg1: constant arg2: 116 push constant 116
@116
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.21
D=A
@CALL
0;JMP
(String.appendChar$ret.21)
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.22
D=A
@CALL
0;JMP
(String.appendChar$ret.22)
//C_PUSH arg1: constant arg2: 114 push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.23
D=A
@CALL
0;JMP
(String.appendChar$ret.23)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.24
D=A
@CALL
0;JMP
(String.appendChar$ret.24)
//C_PUSH arg1: constant arg2: 97 push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.25
D=A
@CALL
0;JMP
(String.appendChar$ret.25)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.26
D=A
@CALL
0;JMP
(String.appendChar$ret.26)
//C_PUSH arg1: constant arg2: 110 push constant 110
@110
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.27
D=A
@CALL
0;JMP
(String.appendChar$ret.27)
//C_PUSH arg1: constant arg2: 117 push constant 117
@117
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.28
D=A
@CALL
0;JMP
(String.appendChar$ret.28)
//C_PUSH arg1: constant arg2: 109 push constant 109
@109
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.29
D=A
@CALL
0;JMP
(String.appendChar$ret.29)
//C_PUSH arg1: constant arg2: 98 push constant 98
@98
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.30
D=A
@CALL
0;JMP
(String.appendChar$ret.30)
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.31
D=A
@CALL
0;JMP
(String.appendChar$ret.31)
//C_PUSH arg1: constant arg2: 114 push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.32
D=A
@CALL
0;JMP
(String.appendChar$ret.32)
//C_PUSH arg1: constant arg2: 58 push constant 58
@58
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.33
D=A
@CALL
0;JMP
(String.appendChar$ret.33)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.34
D=A
@CALL
0;JMP
(String.appendChar$ret.34)
//C_CALL arg1: Keyboard.readInt arg2: 1 call Keyboard.readInt 1
@1
D=A
@14
M=D
@Keyboard.readInt
D=A
@15
M=D
@Keyboard.readInt$ret.1
D=A
@CALL
0;JMP
(Keyboard.readInt$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.1
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.1)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.2
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.2)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.3
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.3)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Main.main$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Main.main$WHILE_END0)//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.new arg2: 1 call String.new 1
@1
D=A
@14
M=D
@String.new
D=A
@15
M=D
@String.new$ret.3
D=A
@CALL
0;JMP
(String.new$ret.3)
//C_PUSH arg1: constant arg2: 84 push constant 84
@84
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.35
D=A
@CALL
0;JMP
(String.appendChar$ret.35)
//C_PUSH arg1: constant arg2: 104 push constant 104
@104
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.36
D=A
@CALL
0;JMP
(String.appendChar$ret.36)
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.37
D=A
@CALL
0;JMP
(String.appendChar$ret.37)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.38
D=A
@CALL
0;JMP
(String.appendChar$ret.38)
//C_PUSH arg1: constant arg2: 97 push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.39
D=A
@CALL
0;JMP
(String.appendChar$ret.39)
//C_PUSH arg1: constant arg2: 118 push constant 118
@118
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.40
D=A
@CALL
0;JMP
(String.appendChar$ret.40)
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.41
D=A
@CALL
0;JMP
(String.appendChar$ret.41)
//C_PUSH arg1: constant arg2: 114 push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.42
D=A
@CALL
0;JMP
(String.appendChar$ret.42)
//C_PUSH arg1: constant arg2: 97 push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.43
D=A
@CALL
0;JMP
(String.appendChar$ret.43)
//C_PUSH arg1: constant arg2: 103 push constant 103
@103
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.44
D=A
@CALL
0;JMP
(String.appendChar$ret.44)
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.45
D=A
@CALL
0;JMP
(String.appendChar$ret.45)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.46
D=A
@CALL
0;JMP
(String.appendChar$ret.46)
//C_PUSH arg1: constant arg2: 105 push constant 105
@105
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.47
D=A
@CALL
0;JMP
(String.appendChar$ret.47)
//C_PUSH arg1: constant arg2: 115 push constant 115
@115
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.48
D=A
@CALL
0;JMP
(String.appendChar$ret.48)
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.49
D=A
@CALL
0;JMP
(String.appendChar$ret.49)
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@1
D=A
@14
M=D
@Output.printString
D=A
@15
M=D
@Output.printString$ret.1
D=A
@CALL
0;JMP
(Output.printString$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
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
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.0
D=A
@CALL
0;JMP
(Math.divide$ret.0)
//C_CALL arg1: Output.printInt arg2: 1 call Output.printInt 1
@1
D=A
@14
M=D
@Output.printInt
D=A
@15
M=D
@Output.printInt$ret.1
D=A
@CALL
0;JMP
(Output.printInt$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.init arg2: 1 function Math.init 1
(Math.init)
//@1
//D=A
//@SP
//M=M+D
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.1
D=A
@CALL
0;JMP
(Array.new$ret.1)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Math.1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.2
D=A
@CALL
0;JMP
(Array.new$ret.2)
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.init$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.2
D=A
@LT
0;JMP
(ARITHMETIC_LT.2)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.10
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.10)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.5
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.5)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.6
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.6)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.2
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.2)
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.7
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.7)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.3
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.3)
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.8
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.8)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.9
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.9)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.init$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.abs arg2: 0 function Math.abs 0
(Math.abs)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.3
D=A
@LT
0;JMP
(ARITHMETIC_LT.3)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.abs$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.abs$IF_TRUE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.0
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.0)
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.abs$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_FUNCTION arg1: Math.multiply arg2: 5 function Math.multiply 5
(Math.multiply)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.4
D=A
@LT
0;JMP
(ARITHMETIC_LT.4)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.5
D=A
@GT
0;JMP
(ARITHMETIC_GT.5)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.0
D=A
@AND
0;JMP
(ARITHMETIC_AND.0)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.6
D=A
@GT
0;JMP
(ARITHMETIC_GT.6)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.5
D=A
@LT
0;JMP
(ARITHMETIC_LT.5)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.1
D=A
@AND
0;JMP
(ARITHMETIC_AND.1)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.1
D=A
@OR
0;JMP
(ARITHMETIC_OR.1)
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@1
D=A
@14
M=D
@Math.abs
D=A
@15
M=D
@Math.abs$ret.0
D=A
@CALL
0;JMP
(Math.abs$ret.0)
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@1
D=A
@14
M=D
@Math.abs
D=A
@15
M=D
@Math.abs$ret.1
D=A
@CALL
0;JMP
(Math.abs$ret.1)
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.6
D=A
@LT
0;JMP
(ARITHMETIC_LT.6)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.multiply$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.multiply$IF_TRUE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.multiply$IF_FALSE0)//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.multiply$WHILE_EXP0)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
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
@ARITHMETIC_SUB.4
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.4)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.5
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.5)
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.7
D=A
@LT
0;JMP
(ARITHMETIC_LT.7)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.11
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.11)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.10
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.10)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.2
D=A
@AND
0;JMP
(ARITHMETIC_AND.2)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.3
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.3)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.12
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.12)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.multiply$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Math.multiply$IF_TRUE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
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
@ARITHMETIC_ADD.11
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.11)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.12
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.12)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.13
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.13)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Math.multiply$IF_FALSE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
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
@ARITHMETIC_ADD.14
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.14)
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.15
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.15)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.multiply$WHILE_END0)//C_PUSH arg1: local arg2: 4 push local 4
@4
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.multiply$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Math.multiply$IF_TRUE2)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.1
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.1)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Math.multiply$IF_FALSE2)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.divide arg2: 4 function Math.divide 4
(Math.divide)
//@4
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.4
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.4)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.divide$IF_TRUE0)//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.2
D=A
@CALL
0;JMP
(Sys.error$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.divide$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.8
D=A
@LT
0;JMP
(ARITHMETIC_LT.8)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.7
D=A
@GT
0;JMP
(ARITHMETIC_GT.7)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.3
D=A
@AND
0;JMP
(ARITHMETIC_AND.3)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.8
D=A
@GT
0;JMP
(ARITHMETIC_GT.8)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.9
D=A
@LT
0;JMP
(ARITHMETIC_LT.9)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.4
D=A
@AND
0;JMP
(ARITHMETIC_AND.4)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.2
D=A
@OR
0;JMP
(ARITHMETIC_OR.2)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.16
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.16)
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@1
D=A
@14
M=D
@Math.abs
D=A
@15
M=D
@Math.abs$ret.2
D=A
@CALL
0;JMP
(Math.abs$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@1
D=A
@14
M=D
@Math.abs
D=A
@15
M=D
@Math.abs$ret.3
D=A
@CALL
0;JMP
(Math.abs$ret.3)
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.divide$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.10
D=A
@LT
0;JMP
(ARITHMETIC_LT.10)
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.13
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.13)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.5
D=A
@AND
0;JMP
(ARITHMETIC_AND.5)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.14
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.14)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$WHILE_END0
D;JNE
//C_PUSH arg1: constant arg2: 32767 push constant 32767
@32767
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.17
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.17)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.6
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.6)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.7
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.7)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.18
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.18)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.8
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.8)
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.11
D=A
@LT
0;JMP
(ARITHMETIC_LT.11)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.15
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.15)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Math.divide$IF_TRUE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.19
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.19)
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.20
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.20)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.21
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.21)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.22
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.22)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.23
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.23)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.24
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.24)
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.25
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.25)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.9
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.9)
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
@ARITHMETIC_SUB.10
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.10)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.9
D=A
@GT
0;JMP
(ARITHMETIC_GT.9)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.16
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.16)
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Math.divide$IF_TRUE2)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.26
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.26)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Math.divide$IF_FALSE2)//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Math.divide$IF_FALSE1)//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.divide$WHILE_END0)//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Math.divide$WHILE_EXP1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.2
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.2)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.10
D=A
@GT
0;JMP
(ARITHMETIC_GT.10)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.17
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.17)
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.27
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.27)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.11
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.11)
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
@ARITHMETIC_SUB.12
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.12)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.11
D=A
@GT
0;JMP
(ARITHMETIC_GT.11)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.18
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.18)
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Math.divide$IF_TRUE3)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.28
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.28)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.29
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.29)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 1 push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.30
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.30)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.13
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.13)
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Math.divide$IF_FALSE3)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
@ARITHMETIC_SUB.14
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.14)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Math.divide$WHILE_END1)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(Math.divide$IF_TRUE4)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.3
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.3)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(Math.divide$IF_FALSE4)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.sqrt arg2: 4 function Math.sqrt 4
(Math.sqrt)
//@4
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.12
D=A
@LT
0;JMP
(ARITHMETIC_LT.12)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.sqrt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.sqrt$IF_TRUE0)//C_PUSH arg1: constant arg2: 4 push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.3
D=A
@CALL
0;JMP
(Sys.error$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.sqrt$IF_FALSE0)//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.4
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.4)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.12
D=A
@GT
0;JMP
(ARITHMETIC_GT.12)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.19
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.19)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.31
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.31)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.32
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.32)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.0
D=A
@CALL
0;JMP
(Math.multiply$ret.0)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.13
D=A
@GT
0;JMP
(ARITHMETIC_GT.13)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.20
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.20)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.13
D=A
@LT
0;JMP
(ARITHMETIC_LT.13)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.21
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.21)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.6
D=A
@AND
0;JMP
(ARITHMETIC_AND.6)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.sqrt$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Math.sqrt$IF_TRUE1)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Math.sqrt$IF_FALSE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
@ARITHMETIC_SUB.15
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.15)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Math.sqrt$WHILE_END0)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.max arg2: 0 function Math.max 0
(Math.max)
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
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.14
D=A
@GT
0;JMP
(ARITHMETIC_GT.14)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.max$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.max$IF_TRUE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.max$IF_FALSE0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
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
//C_FUNCTION arg1: Math.min arg2: 0 function Math.min 0
(Math.min)
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.14
D=A
@LT
0;JMP
(ARITHMETIC_LT.14)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.min$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Math.min$IF_TRUE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Math.min$IF_FALSE0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
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
//C_FUNCTION arg1: Memory.init arg2: 0 function Memory.init 0
(Memory.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Memory.0
M=D
//C_PUSH arg1: constant arg2: 2048 push constant 2048
@2048
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.33
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.33)
//C_PUSH arg1: constant arg2: 14334 push constant 14334
@14334
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 2049 push constant 2049
@2049
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.34
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.34)
//C_PUSH arg1: constant arg2: 2050 push constant 2050
@2050
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Memory.peek arg2: 0 function Memory.peek 0
(Memory.peek)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.35
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.35)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Memory.poke arg2: 0 function Memory.poke 0
(Memory.poke)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.36
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.36)
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Memory.alloc arg2: 2 function Memory.alloc 2
(Memory.alloc)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.15
D=A
@LT
0;JMP
(ARITHMETIC_LT.15)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Memory.alloc$IF_TRUE0)//C_PUSH arg1: constant arg2: 5 push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.4
D=A
@CALL
0;JMP
(Sys.error$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Memory.alloc$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.5
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.5)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Memory.alloc$IF_TRUE1)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Memory.alloc$IF_FALSE1)//C_PUSH arg1: constant arg2: 2048 push constant 2048
@2048
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16383 push constant 16383
@16383
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.16
D=A
@LT
0;JMP
(ARITHMETIC_LT.16)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.37
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.37)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.17
D=A
@LT
0;JMP
(ARITHMETIC_LT.17)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.7
D=A
@AND
0;JMP
(ARITHMETIC_AND.7)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.22
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.22)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$WHILE_END0
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.38
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.38)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.39
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.39)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.6
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.6)
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
//C_PUSH arg1: constant arg2: 16382 push constant 16382
@16382
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.15
D=A
@GT
0;JMP
(ARITHMETIC_GT.15)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.3
D=A
@OR
0;JMP
(ARITHMETIC_OR.3)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_ADD.40
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.40)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.7
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.7)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.4
D=A
@OR
0;JMP
(ARITHMETIC_OR.4)
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Memory.alloc$IF_TRUE2)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END2 arg2: None goto IF_END2
@Memory.alloc$IF_END2
0;JMP
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Memory.alloc$IF_FALSE2)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.41
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.41)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.42
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.42)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.16
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.16)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_ADD.43
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.43)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.44
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.44)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
@ARITHMETIC_ADD.45
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.45)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.46
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.46)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.8
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.8)
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Memory.alloc$IF_TRUE3)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.47
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.47)
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.48
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.48)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END3 arg2: None goto IF_END3
@Memory.alloc$IF_END3
0;JMP
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Memory.alloc$IF_FALSE3)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.49
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.49)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
@ARITHMETIC_ADD.50
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.50)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END3 arg2: None label IF_END3
(Memory.alloc$IF_END3)//C_LABEL arg1: IF_END2 arg2: None label IF_END2
(Memory.alloc$IF_END2)//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Memory.alloc$WHILE_END0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
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
@ARITHMETIC_ADD.51
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.51)
//C_PUSH arg1: constant arg2: 16379 push constant 16379
@16379
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.16
D=A
@GT
0;JMP
(ARITHMETIC_GT.16)
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@Memory.alloc$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(Memory.alloc$IF_TRUE4)//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.5
D=A
@CALL
0;JMP
(Sys.error$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(Memory.alloc$IF_FALSE4)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.52
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.52)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.53
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.53)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.17
D=A
@GT
0;JMP
(ARITHMETIC_GT.17)
//C_IF arg1: IF_TRUE5 arg2: None if-goto IF_TRUE5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE5
D;JNE
//C_GOTO arg1: IF_FALSE5 arg2: None goto IF_FALSE5
@Memory.alloc$IF_FALSE5
0;JMP
//C_LABEL arg1: IF_TRUE5 arg2: None label IF_TRUE5
(Memory.alloc$IF_TRUE5)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.54
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.54)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.55
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.55)
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.56
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.56)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.17
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.17)
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.18
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.18)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.57
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.57)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.58
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.58)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.9
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.9)
//C_IF arg1: IF_TRUE6 arg2: None if-goto IF_TRUE6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$IF_TRUE6
D;JNE
//C_GOTO arg1: IF_FALSE6 arg2: None goto IF_FALSE6
@Memory.alloc$IF_FALSE6
0;JMP
//C_LABEL arg1: IF_TRUE6 arg2: None label IF_TRUE6
(Memory.alloc$IF_TRUE6)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.59
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.59)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.60
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.60)
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
@ARITHMETIC_ADD.61
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.61)
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.62
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.62)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END6 arg2: None goto IF_END6
@Memory.alloc$IF_END6
0;JMP
//C_LABEL arg1: IF_FALSE6 arg2: None label IF_FALSE6
(Memory.alloc$IF_FALSE6)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.63
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.63)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.64
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.64)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.65
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.65)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END6 arg2: None label IF_END6
(Memory.alloc$IF_END6)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.66
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.66)
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
@ARITHMETIC_ADD.67
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.67)
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.68
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.68)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE5 arg2: None label IF_FALSE5
(Memory.alloc$IF_FALSE5)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.69
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.69)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.70
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.70)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Memory.deAlloc arg2: 2 function Memory.deAlloc 2
(Memory.deAlloc)
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.19
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.19)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.71
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.71)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_ADD.72
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.72)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.10
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.10)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.73
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.73)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.74
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.74)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.20
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.20)
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.21
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.21)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Memory.deAlloc$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.75
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.75)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.76
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.76)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.22
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.22)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_ADD.77
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.77)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.78
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.78)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
@ARITHMETIC_ADD.79
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.79)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.80
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.80)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.11
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.11)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.81
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.81)
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
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.82
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.82)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Memory.deAlloc$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.83
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.83)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
@ARITHMETIC_ADD.84
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.84)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Memory.deAlloc$IF_END1)//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Memory.deAlloc$IF_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.init arg2: 0 function Output.init 0
(Output.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 4 pop static 4
@SP
AM=M-1
D=M
@Output.4
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.23
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.23)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.new arg2: 1 call String.new 1
@1
D=A
@14
M=D
@String.new
D=A
@15
M=D
@String.new$ret.4
D=A
@CALL
0;JMP
(String.new$ret.4)
//C_POP arg1: static arg2: 3 pop static 3
@SP
AM=M-1
D=M
@Output.3
M=D
//C_CALL arg1: Output.initMap arg2: 0 call Output.initMap 0
@0
D=A
@14
M=D
@Output.initMap
D=A
@15
M=D
@Output.initMap$ret.0
D=A
@CALL
0;JMP
(Output.initMap$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Output.createShiftedMap arg2: 0 call Output.createShiftedMap 0
@0
D=A
@14
M=D
@Output.createShiftedMap
D=A
@15
M=D
@Output.createShiftedMap$ret.0
D=A
@CALL
0;JMP
(Output.createShiftedMap$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.initMap arg2: 0 function Output.initMap 0
(Output.initMap)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.3
D=A
@CALL
0;JMP
(Array.new$ret.3)
//C_POP arg1: static arg2: 5 pop static 5
@SP
AM=M-1
D=M
@Output.5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.0
D=A
@CALL
0;JMP
(Output.create$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.1
D=A
@CALL
0;JMP
(Output.create$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 33 push constant 33
@33
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.2
D=A
@CALL
0;JMP
(Output.create$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 34 push constant 34
@34
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 20 push constant 20
@20
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.3
D=A
@CALL
0;JMP
(Output.create$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.4
D=A
@CALL
0;JMP
(Output.create$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 36 push constant 36
@36
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.5
D=A
@CALL
0;JMP
(Output.create$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 37 push constant 37
@37
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.6
D=A
@CALL
0;JMP
(Output.create$ret.6)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 38 push constant 38
@38
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.7
D=A
@CALL
0;JMP
(Output.create$ret.7)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 39 push constant 39
@39
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.8
D=A
@CALL
0;JMP
(Output.create$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 40 push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.9
D=A
@CALL
0;JMP
(Output.create$ret.9)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 41 push constant 41
@41
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.10
D=A
@CALL
0;JMP
(Output.create$ret.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 42 push constant 42
@42
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.11
D=A
@CALL
0;JMP
(Output.create$ret.11)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.12
D=A
@CALL
0;JMP
(Output.create$ret.12)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 44 push constant 44
@44
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.13
D=A
@CALL
0;JMP
(Output.create$ret.13)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.14
D=A
@CALL
0;JMP
(Output.create$ret.14)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 46 push constant 46
@46
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.15
D=A
@CALL
0;JMP
(Output.create$ret.15)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 47 push constant 47
@47
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.16
D=A
@CALL
0;JMP
(Output.create$ret.16)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.17
D=A
@CALL
0;JMP
(Output.create$ret.17)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
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
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.18
D=A
@CALL
0;JMP
(Output.create$ret.18)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 50 push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.19
D=A
@CALL
0;JMP
(Output.create$ret.19)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.20
D=A
@CALL
0;JMP
(Output.create$ret.20)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 52 push constant 52
@52
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 26 push constant 26
@26
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 25 push constant 25
@25
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.21
D=A
@CALL
0;JMP
(Output.create$ret.21)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 53 push constant 53
@53
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.22
D=A
@CALL
0;JMP
(Output.create$ret.22)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.23
D=A
@CALL
0;JMP
(Output.create$ret.23)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.24
D=A
@CALL
0;JMP
(Output.create$ret.24)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.25
D=A
@CALL
0;JMP
(Output.create$ret.25)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 57 push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.26
D=A
@CALL
0;JMP
(Output.create$ret.26)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 58 push constant 58
@58
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.27
D=A
@CALL
0;JMP
(Output.create$ret.27)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.28
D=A
@CALL
0;JMP
(Output.create$ret.28)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.29
D=A
@CALL
0;JMP
(Output.create$ret.29)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 61 push constant 61
@61
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.30
D=A
@CALL
0;JMP
(Output.create$ret.30)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.31
D=A
@CALL
0;JMP
(Output.create$ret.31)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 64 push constant 64
@64
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.32
D=A
@CALL
0;JMP
(Output.create$ret.32)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.33
D=A
@CALL
0;JMP
(Output.create$ret.33)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 65 push constant 65
@65
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.34
D=A
@CALL
0;JMP
(Output.create$ret.34)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 66 push constant 66
@66
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.35
D=A
@CALL
0;JMP
(Output.create$ret.35)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 67 push constant 67
@67
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.36
D=A
@CALL
0;JMP
(Output.create$ret.36)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 68 push constant 68
@68
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.37
D=A
@CALL
0;JMP
(Output.create$ret.37)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 69 push constant 69
@69
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.38
D=A
@CALL
0;JMP
(Output.create$ret.38)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 70 push constant 70
@70
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.39
D=A
@CALL
0;JMP
(Output.create$ret.39)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 71 push constant 71
@71
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 44 push constant 44
@44
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.40
D=A
@CALL
0;JMP
(Output.create$ret.40)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 72 push constant 72
@72
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.41
D=A
@CALL
0;JMP
(Output.create$ret.41)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 73 push constant 73
@73
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.42
D=A
@CALL
0;JMP
(Output.create$ret.42)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 74 push constant 74
@74
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.43
D=A
@CALL
0;JMP
(Output.create$ret.43)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 75 push constant 75
@75
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.44
D=A
@CALL
0;JMP
(Output.create$ret.44)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 76 push constant 76
@76
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.45
D=A
@CALL
0;JMP
(Output.create$ret.45)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 77 push constant 77
@77
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 33 push constant 33
@33
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.46
D=A
@CALL
0;JMP
(Output.create$ret.46)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 78 push constant 78
@78
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.47
D=A
@CALL
0;JMP
(Output.create$ret.47)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 79 push constant 79
@79
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.48
D=A
@CALL
0;JMP
(Output.create$ret.48)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 80 push constant 80
@80
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.49
D=A
@CALL
0;JMP
(Output.create$ret.49)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 81 push constant 81
@81
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 59 push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.50
D=A
@CALL
0;JMP
(Output.create$ret.50)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.51
D=A
@CALL
0;JMP
(Output.create$ret.51)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 83 push constant 83
@83
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.52
D=A
@CALL
0;JMP
(Output.create$ret.52)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 84 push constant 84
@84
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.53
D=A
@CALL
0;JMP
(Output.create$ret.53)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 85 push constant 85
@85
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.54
D=A
@CALL
0;JMP
(Output.create$ret.54)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 86 push constant 86
@86
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.55
D=A
@CALL
0;JMP
(Output.create$ret.55)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 87 push constant 87
@87
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.56
D=A
@CALL
0;JMP
(Output.create$ret.56)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 88 push constant 88
@88
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.57
D=A
@CALL
0;JMP
(Output.create$ret.57)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 89 push constant 89
@89
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.58
D=A
@CALL
0;JMP
(Output.create$ret.58)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 90 push constant 90
@90
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 49 push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 35 push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.59
D=A
@CALL
0;JMP
(Output.create$ret.59)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 91 push constant 91
@91
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.60
D=A
@CALL
0;JMP
(Output.create$ret.60)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 92 push constant 92
@92
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.61
D=A
@CALL
0;JMP
(Output.create$ret.61)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 93 push constant 93
@93
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.62
D=A
@CALL
0;JMP
(Output.create$ret.62)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 94 push constant 94
@94
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.63
D=A
@CALL
0;JMP
(Output.create$ret.63)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 95 push constant 95
@95
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.64
D=A
@CALL
0;JMP
(Output.create$ret.64)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 96 push constant 96
@96
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.65
D=A
@CALL
0;JMP
(Output.create$ret.65)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 97 push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.66
D=A
@CALL
0;JMP
(Output.create$ret.66)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 98 push constant 98
@98
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.67
D=A
@CALL
0;JMP
(Output.create$ret.67)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.68
D=A
@CALL
0;JMP
(Output.create$ret.68)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 100 push constant 100
@100
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 60 push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.69
D=A
@CALL
0;JMP
(Output.create$ret.69)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 101 push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.70
D=A
@CALL
0;JMP
(Output.create$ret.70)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 102 push constant 102
@102
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 38 push constant 38
@38
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.71
D=A
@CALL
0;JMP
(Output.create$ret.71)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 103 push constant 103
@103
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.72
D=A
@CALL
0;JMP
(Output.create$ret.72)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 104 push constant 104
@104
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.73
D=A
@CALL
0;JMP
(Output.create$ret.73)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 105 push constant 105
@105
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.74
D=A
@CALL
0;JMP
(Output.create$ret.74)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 106 push constant 106
@106
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.75
D=A
@CALL
0;JMP
(Output.create$ret.75)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 107 push constant 107
@107
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.76
D=A
@CALL
0;JMP
(Output.create$ret.76)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 108 push constant 108
@108
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.77
D=A
@CALL
0;JMP
(Output.create$ret.77)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 109 push constant 109
@109
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 29 push constant 29
@29
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 43 push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.78
D=A
@CALL
0;JMP
(Output.create$ret.78)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 110 push constant 110
@110
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 29 push constant 29
@29
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.79
D=A
@CALL
0;JMP
(Output.create$ret.79)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 111 push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.80
D=A
@CALL
0;JMP
(Output.create$ret.80)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 112 push constant 112
@112
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.81
D=A
@CALL
0;JMP
(Output.create$ret.81)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 113 push constant 113
@113
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.82
D=A
@CALL
0;JMP
(Output.create$ret.82)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 114 push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 29 push constant 29
@29
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 55 push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.83
D=A
@CALL
0;JMP
(Output.create$ret.83)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 115 push constant 115
@115
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.84
D=A
@CALL
0;JMP
(Output.create$ret.84)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 116 push constant 116
@116
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.85
D=A
@CALL
0;JMP
(Output.create$ret.85)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 117 push constant 117
@117
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 54 push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.86
D=A
@CALL
0;JMP
(Output.create$ret.86)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 118 push constant 118
@118
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.87
D=A
@CALL
0;JMP
(Output.create$ret.87)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 119 push constant 119
@119
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.88
D=A
@CALL
0;JMP
(Output.create$ret.88)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 120 push constant 120
@120
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 30 push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.89
D=A
@CALL
0;JMP
(Output.create$ret.89)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 121 push constant 121
@121
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 62 push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 24 push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.90
D=A
@CALL
0;JMP
(Output.create$ret.90)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 122 push constant 122
@122
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 27 push constant 27
@27
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 51 push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.91
D=A
@CALL
0;JMP
(Output.create$ret.91)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 123 push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.92
D=A
@CALL
0;JMP
(Output.create$ret.92)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 124 push constant 124
@124
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.93
D=A
@CALL
0;JMP
(Output.create$ret.93)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 125 push constant 125
@125
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 56 push constant 56
@56
D=A
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
//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
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
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.94
D=A
@CALL
0;JMP
(Output.create$ret.94)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 126 push constant 126
@126
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 38 push constant 38
@38
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
//C_PUSH arg1: constant arg2: 25 push constant 25
@25
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.create arg2: 12 call Output.create 12
@12
D=A
@14
M=D
@Output.create
D=A
@15
M=D
@Output.create$ret.95
D=A
@CALL
0;JMP
(Output.create$ret.95)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.create arg2: 1 function Output.create 1
(Output.create)
//@1
//D=A
//@SP
//M=M+D
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.4
D=A
@CALL
0;JMP
(Array.new$ret.4)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 5 push static 5
@Output.5
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.85
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.85)
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.86
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.86)
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.87
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.87)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.88
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.88)
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.89
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.89)
//C_PUSH arg1: argument arg2: 4 push argument 4
@4
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.90
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.90)
//C_PUSH arg1: argument arg2: 5 push argument 5
@5
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.91
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.91)
//C_PUSH arg1: argument arg2: 6 push argument 6
@6
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.92
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.92)
//C_PUSH arg1: argument arg2: 7 push argument 7
@7
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.93
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.93)
//C_PUSH arg1: argument arg2: 8 push argument 8
@8
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.94
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.94)
//C_PUSH arg1: argument arg2: 9 push argument 9
@9
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 9 push constant 9
@9
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.95
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.95)
//C_PUSH arg1: argument arg2: 10 push argument 10
@10
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.96
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.96)
//C_PUSH arg1: argument arg2: 11 push argument 11
@11
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.createShiftedMap arg2: 4 function Output.createShiftedMap 4
(Output.createShiftedMap)
//@4
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
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.5
D=A
@CALL
0;JMP
(Array.new$ret.5)
//C_POP arg1: static arg2: 6 pop static 6
@SP
AM=M-1
D=M
@Output.6
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.18
D=A
@LT
0;JMP
(ARITHMETIC_LT.18)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.24
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.24)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 5 push static 5
@Output.5
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.97
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.97)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.6
D=A
@CALL
0;JMP
(Array.new$ret.6)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 6 push static 6
@Output.6
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.98
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.98)
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.19
D=A
@LT
0;JMP
(ARITHMETIC_LT.19)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.25
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.25)
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP // pop from stack to memory address 13
AM=M-1
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
@ARITHMETIC_ADD.99
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.99)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.100
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.100)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.1
D=A
@CALL
0;JMP
(Math.multiply$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.101
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.101)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Output.createShiftedMap$WHILE_END1)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.12
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.12)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.createShiftedMap$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.createShiftedMap$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.102
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.102)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.createShiftedMap$IF_END0)//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Output.createShiftedMap$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.getMap arg2: 1 function Output.getMap 1
(Output.getMap)
//@1
//D=A
//@SP
//M=M+D
@0
D=A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.20
D=A
@LT
0;JMP
(ARITHMETIC_LT.20)
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
//C_PUSH arg1: constant arg2: 126 push constant 126
@126
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.18
D=A
@GT
0;JMP
(ARITHMETIC_GT.18)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.5
D=A
@OR
0;JMP
(ARITHMETIC_OR.5)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.getMap$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.getMap$IF_TRUE0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.getMap$IF_FALSE0)//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.getMap$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Output.getMap$IF_TRUE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 5 push static 5
@Output.5
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.103
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.103)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Output.getMap$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Output.getMap$IF_FALSE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 6 push static 6
@Output.6
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.104
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.104)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Output.getMap$IF_END1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.drawChar arg2: 4 function Output.drawChar 4
(Output.drawChar)
//@4
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
//C_CALL arg1: Output.getMap arg2: 1 call Output.getMap 1
@1
D=A
@14
M=D
@Output.getMap
D=A
@15
M=D
@Output.getMap$ret.0
D=A
@CALL
0;JMP
(Output.getMap$ret.0)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 11 push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.21
D=A
@LT
0;JMP
(ARITHMETIC_LT.21)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.26
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.26)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.drawChar$WHILE_END0
D;JNE
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.drawChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.drawChar$IF_TRUE0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 4 push static 4
@Output.4
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.105
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.105)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.5
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.5)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.8
D=A
@AND
0;JMP
(ARITHMETIC_AND.8)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.drawChar$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.drawChar$IF_FALSE0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 4 push static 4
@Output.4
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.106
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.106)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.9
D=A
@AND
0;JMP
(ARITHMETIC_AND.9)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.drawChar$IF_END0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 4 push static 4
@Output.4
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.107
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.107)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.108
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.108)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.6
D=A
@OR
0;JMP
(ARITHMETIC_OR.6)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.109
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.109)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.110
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.110)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Output.drawChar$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.moveCursor arg2: 0 function Output.moveCursor 0
(Output.moveCursor)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.22
D=A
@LT
0;JMP
(ARITHMETIC_LT.22)
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
//C_PUSH arg1: constant arg2: 22 push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.19
D=A
@GT
0;JMP
(ARITHMETIC_GT.19)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.7
D=A
@OR
0;JMP
(ARITHMETIC_OR.7)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.23
D=A
@LT
0;JMP
(ARITHMETIC_LT.23)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.8
D=A
@OR
0;JMP
(ARITHMETIC_OR.8)
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
//C_PUSH arg1: constant arg2: 63 push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.20
D=A
@GT
0;JMP
(ARITHMETIC_GT.20)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.9
D=A
@OR
0;JMP
(ARITHMETIC_OR.9)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.moveCursor$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.moveCursor$IF_TRUE0)//C_PUSH arg1: constant arg2: 20 push constant 20
@20
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.6
D=A
@CALL
0;JMP
(Sys.error$ret.6)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.moveCursor$IF_FALSE0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
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
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.1
D=A
@CALL
0;JMP
(Math.divide$ret.1)
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
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
//C_PUSH arg1: constant arg2: 352 push constant 352
@352
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.2
D=A
@CALL
0;JMP
(Math.multiply$ret.2)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.111
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.111)
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.112
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.112)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.3
D=A
@CALL
0;JMP
(Math.multiply$ret.3)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.13
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.13)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.drawChar arg2: 1 call Output.drawChar 1
@1
D=A
@14
M=D
@Output.drawChar
D=A
@15
M=D
@Output.drawChar$ret.0
D=A
@CALL
0;JMP
(Output.drawChar$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.printChar arg2: 0 function Output.printChar 0
(Output.printChar)
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
//C_CALL arg1: String.newLine arg2: 0 call String.newLine 0
@0
D=A
@14
M=D
@String.newLine
D=A
@15
M=D
@String.newLine$ret.1
D=A
@CALL
0;JMP
(String.newLine$ret.1)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.14
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.14)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.printChar$IF_TRUE0)//C_CALL arg1: Output.println arg2: 0 call Output.println 0
@0
D=A
@14
M=D
@Output.println
D=A
@15
M=D
@Output.println$ret.0
D=A
@CALL
0;JMP
(Output.println$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.printChar$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.printChar$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: String.backSpace arg2: 0 call String.backSpace 0
@0
D=A
@14
M=D
@String.backSpace
D=A
@15
M=D
@String.backSpace$ret.2
D=A
@CALL
0;JMP
(String.backSpace$ret.2)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.15
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.15)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Output.printChar$IF_TRUE1)//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
@0
D=A
@14
M=D
@Output.backSpace
D=A
@15
M=D
@Output.backSpace$ret.0
D=A
@CALL
0;JMP
(Output.backSpace$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Output.printChar$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Output.printChar$IF_FALSE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.drawChar arg2: 1 call Output.drawChar 1
@1
D=A
@14
M=D
@Output.drawChar
D=A
@15
M=D
@Output.drawChar$ret.1
D=A
@CALL
0;JMP
(Output.drawChar$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.27
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.27)
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Output.printChar$IF_TRUE2)//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.113
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.113)
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.114
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.114)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Output.printChar$IF_FALSE2)//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.16
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.16)
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Output.printChar$IF_TRUE3)//C_CALL arg1: Output.println arg2: 0 call Output.println 0
@0
D=A
@14
M=D
@Output.println
D=A
@15
M=D
@Output.println$ret.1
D=A
@CALL
0;JMP
(Output.println$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END3 arg2: None goto IF_END3
@Output.printChar$IF_END3
0;JMP
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Output.printChar$IF_FALSE3)//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.28
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.28)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_LABEL arg1: IF_END3 arg2: None label IF_END3
(Output.printChar$IF_END3)//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Output.printChar$IF_END1)//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.printChar$IF_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.printString arg2: 2 function Output.printString 2
(Output.printString)
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
//C_CALL arg1: String.length arg2: 1 call String.length 1
@1
D=A
@14
M=D
@String.length
D=A
@15
M=D
@String.length$ret.0
D=A
@CALL
0;JMP
(String.length$ret.0)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Output.printString$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.24
D=A
@LT
0;JMP
(ARITHMETIC_LT.24)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.29
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.29)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
//C_CALL arg1: String.charAt arg2: 2 call String.charAt 2
@2
D=A
@14
M=D
@String.charAt
D=A
@15
M=D
@String.charAt$ret.0
D=A
@CALL
0;JMP
(String.charAt$ret.0)
//C_CALL arg1: Output.printChar arg2: 1 call Output.printChar 1
@1
D=A
@14
M=D
@Output.printChar
D=A
@15
M=D
@Output.printChar$ret.6
D=A
@CALL
0;JMP
(Output.printChar$ret.6)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.115
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.115)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Output.printString$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.printInt arg2: 0 function Output.printInt 0
(Output.printInt)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 3 push static 3
@Output.3
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
//C_CALL arg1: String.setInt arg2: 2 call String.setInt 2
@2
D=A
@14
M=D
@String.setInt
D=A
@15
M=D
@String.setInt$ret.0
D=A
@CALL
0;JMP
(String.setInt$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: static arg2: 3 push static 3
@Output.3
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@1
D=A
@14
M=D
@Output.printString
D=A
@15
M=D
@Output.printString$ret.2
D=A
@CALL
0;JMP
(Output.printString$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.println arg2: 0 function Output.println 0
(Output.println)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 352 push constant 352
@352
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.116
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.116)
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.23
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.23)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.30
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.30)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 8128 push constant 8128
@8128
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.17
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.17)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.println$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.println$IF_TRUE0)//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.println$IF_FALSE0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.backSpace arg2: 0 function Output.backSpace 0
(Output.backSpace)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.backSpace$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Output.backSpace$IF_TRUE0)//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.21
D=A
@GT
0;JMP
(ARITHMETIC_GT.21)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.backSpace$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Output.backSpace$IF_TRUE1)//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
@ARITHMETIC_SUB.24
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.24)
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
@ARITHMETIC_SUB.25
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.25)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Output.backSpace$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Output.backSpace$IF_FALSE1)//C_PUSH arg1: constant arg2: 31 push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.18
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.18)
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.backSpace$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Output.backSpace$IF_TRUE2)//C_PUSH arg1: constant arg2: 8128 push constant 8128
@8128
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Output.backSpace$IF_FALSE2)//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 321 push constant 321
@321
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.26
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.26)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Output.backSpace$IF_END1)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Output.backSpace$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Output.backSpace$IF_FALSE0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.31
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.31)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Output.backSpace$IF_END0)//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Output.drawChar arg2: 1 call Output.drawChar 1
@1
D=A
@14
M=D
@Output.drawChar
D=A
@15
M=D
@Output.drawChar$ret.2
D=A
@CALL
0;JMP
(Output.drawChar$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.init arg2: 1 function Screen.init 1
(Screen.init)
//@1
//D=A
//@SP
//M=M+D
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.32
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.32)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Screen.2
M=D
//C_PUSH arg1: constant arg2: 17 push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.7
D=A
@CALL
0;JMP
(Array.new$ret.7)
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.117
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.117)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.init$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.25
D=A
@LT
0;JMP
(ARITHMETIC_LT.25)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.33
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.33)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.118
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.118)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.119
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.119)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.27
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.27)
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.120
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.120)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.28
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.28)
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.121
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.121)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.122
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.122)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.init$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.clearScreen arg2: 1 function Screen.clearScreen 1
(Screen.clearScreen)
//@1
//D=A
//@SP
//M=M+D
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 8192 push constant 8192
@8192
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.26
D=A
@LT
0;JMP
(ARITHMETIC_LT.26)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.34
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.34)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.123
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.123)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.124
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.124)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.clearScreen$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.updateLocation arg2: 0 function Screen.updateLocation 0
(Screen.updateLocation)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 2 push static 2
@Screen.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.updateLocation$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.125
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.125)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.126
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.126)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.10
D=A
@OR
0;JMP
(ARITHMETIC_OR.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Screen.updateLocation$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.127
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.127)
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
//C_PUSH arg1: static arg2: 1 push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.128
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.128)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.35
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.35)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.10
D=A
@AND
0;JMP
(ARITHMETIC_AND.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Screen.updateLocation$IF_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.setColor arg2: 0 function Screen.setColor 0
(Screen.setColor)
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Screen.2
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawPixel arg2: 3 function Screen.drawPixel 3
(Screen.drawPixel)
//@3
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.27
D=A
@LT
0;JMP
(ARITHMETIC_LT.27)
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
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.22
D=A
@GT
0;JMP
(ARITHMETIC_GT.22)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.11
D=A
@OR
0;JMP
(ARITHMETIC_OR.11)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.28
D=A
@LT
0;JMP
(ARITHMETIC_LT.28)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.12
D=A
@OR
0;JMP
(ARITHMETIC_OR.12)
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
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.23
D=A
@GT
0;JMP
(ARITHMETIC_GT.23)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.13
D=A
@OR
0;JMP
(ARITHMETIC_OR.13)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawPixel$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.7
D=A
@CALL
0;JMP
(Sys.error$ret.7)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.2
D=A
@CALL
0;JMP
(Math.divide$ret.2)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.4
D=A
@CALL
0;JMP
(Math.multiply$ret.4)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.29
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.29)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.5
D=A
@CALL
0;JMP
(Math.multiply$ret.5)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.129
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.129)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.130
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.130)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.0
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawConditional arg2: 0 function Screen.drawConditional 0
(Screen.drawConditional)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawConditional$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@2
D=A
@14
M=D
@Screen.drawPixel
D=A
@15
M=D
@Screen.drawPixel$ret.0
D=A
@CALL
0;JMP
(Screen.drawPixel$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END0 arg2: None goto IF_END0
@Screen.drawConditional$IF_END0
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@2
D=A
@14
M=D
@Screen.drawPixel
D=A
@15
M=D
@Screen.drawPixel$ret.1
D=A
@CALL
0;JMP
(Screen.drawPixel$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_END0 arg2: None label IF_END0
(Screen.drawConditional$IF_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawLine arg2: 11 function Screen.drawLine 11
(Screen.drawLine)
//@11
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
@0
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.29
D=A
@LT
0;JMP
(ARITHMETIC_LT.29)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.24
D=A
@GT
0;JMP
(ARITHMETIC_GT.24)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.14
D=A
@OR
0;JMP
(ARITHMETIC_OR.14)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.30
D=A
@LT
0;JMP
(ARITHMETIC_LT.30)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.15
D=A
@OR
0;JMP
(ARITHMETIC_OR.15)
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.25
D=A
@GT
0;JMP
(ARITHMETIC_GT.25)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.16
D=A
@OR
0;JMP
(ARITHMETIC_OR.16)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawLine$IF_TRUE0)//C_PUSH arg1: constant arg2: 8 push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.8
D=A
@CALL
0;JMP
(Sys.error$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawLine$IF_FALSE0)//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.30
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.30)
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@1
D=A
@14
M=D
@Math.abs
D=A
@15
M=D
@Math.abs$ret.4
D=A
@CALL
0;JMP
(Math.abs$ret.4)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
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
@ARITHMETIC_SUB.31
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.31)
//C_CALL arg1: Math.abs arg2: 1 call Math.abs 1
@1
D=A
@14
M=D
@Math.abs
D=A
@15
M=D
@Math.abs$ret.5
D=A
@CALL
0;JMP
(Math.abs$ret.5)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.31
D=A
@LT
0;JMP
(ARITHMETIC_LT.31)
//C_POP arg1: local arg2: 6 pop local 6
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@6
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.32
D=A
@LT
0;JMP
(ARITHMETIC_LT.32)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.11
D=A
@AND
0;JMP
(ARITHMETIC_AND.11)
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.36
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.36)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.33
D=A
@LT
0;JMP
(ARITHMETIC_LT.33)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.12
D=A
@AND
0;JMP
(ARITHMETIC_AND.12)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.17
D=A
@OR
0;JMP
(ARITHMETIC_OR.17)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawLine$IF_TRUE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 0 pop argument 0
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: argument arg2: 2 pop argument 2
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: argument arg2: 3 pop argument 3
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawLine$IF_FALSE1)//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Screen.drawLine$IF_TRUE2)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 8 pop local 8
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@8
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.26
D=A
@GT
0;JMP
(ARITHMETIC_GT.26)
//C_POP arg1: local arg2: 7 pop local 7
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@7
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END2 arg2: None goto IF_END2
@Screen.drawLine$IF_END2
0;JMP
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Screen.drawLine$IF_FALSE2)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 8 pop local 8
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@8
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.27
D=A
@GT
0;JMP
(ARITHMETIC_GT.27)
//C_POP arg1: local arg2: 7 pop local 7
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@7
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END2 arg2: None label IF_END2
(Screen.drawLine$IF_END2)//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.6
D=A
@CALL
0;JMP
(Math.multiply$ret.6)
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.32
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.32)
//C_POP arg1: local arg2: 5 pop local 5
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@5
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.7
D=A
@CALL
0;JMP
(Math.multiply$ret.7)
//C_POP arg1: local arg2: 9 pop local 9
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@9
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
D=A
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.33
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.33)
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.8
D=A
@CALL
0;JMP
(Math.multiply$ret.8)
//C_POP arg1: local arg2: 10 pop local 10
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@10
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.drawConditional arg2: 3 call Screen.drawConditional 3
@3
D=A
@14
M=D
@Screen.drawConditional
D=A
@15
M=D
@Screen.drawConditional$ret.0
D=A
@CALL
0;JMP
(Screen.drawConditional$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.34
D=A
@LT
0;JMP
(ARITHMETIC_LT.34)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.37
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.37)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.35
D=A
@LT
0;JMP
(ARITHMETIC_LT.35)
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(Screen.drawLine$IF_TRUE3)//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 9 push local 9
@9
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.131
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.131)
//C_POP arg1: local arg2: 5 pop local 5
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@5
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END3 arg2: None goto IF_END3
@Screen.drawLine$IF_END3
0;JMP
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(Screen.drawLine$IF_FALSE3)//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 10 push local 10
@10
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.132
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.132)
//C_POP arg1: local arg2: 5 pop local 5
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@5
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(Screen.drawLine$IF_TRUE4)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
@ARITHMETIC_SUB.34
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.34)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END4 arg2: None goto IF_END4
@Screen.drawLine$IF_END4
0;JMP
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(Screen.drawLine$IF_FALSE4)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.133
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.133)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END4 arg2: None label IF_END4
(Screen.drawLine$IF_END4)//C_LABEL arg1: IF_END3 arg2: None label IF_END3
(Screen.drawLine$IF_END3)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.134
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.134)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.drawConditional arg2: 3 call Screen.drawConditional 3
@3
D=A
@14
M=D
@Screen.drawConditional
D=A
@15
M=D
@Screen.drawConditional$ret.1
D=A
@CALL
0;JMP
(Screen.drawConditional$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawLine$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawRectangle arg2: 9 function Screen.drawRectangle 9
(Screen.drawRectangle)
//@9
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.28
D=A
@GT
0;JMP
(ARITHMETIC_GT.28)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.29
D=A
@GT
0;JMP
(ARITHMETIC_GT.29)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.18
D=A
@OR
0;JMP
(ARITHMETIC_OR.18)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.36
D=A
@LT
0;JMP
(ARITHMETIC_LT.36)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.19
D=A
@OR
0;JMP
(ARITHMETIC_OR.19)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.30
D=A
@GT
0;JMP
(ARITHMETIC_GT.30)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.20
D=A
@OR
0;JMP
(ARITHMETIC_OR.20)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.37
D=A
@LT
0;JMP
(ARITHMETIC_LT.37)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.21
D=A
@OR
0;JMP
(ARITHMETIC_OR.21)
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.31
D=A
@GT
0;JMP
(ARITHMETIC_GT.31)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.22
D=A
@OR
0;JMP
(ARITHMETIC_OR.22)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)//C_PUSH arg1: constant arg2: 9 push constant 9
@9
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.9
D=A
@CALL
0;JMP
(Sys.error$ret.9)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.3
D=A
@CALL
0;JMP
(Math.divide$ret.3)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.9
D=A
@CALL
0;JMP
(Math.multiply$ret.9)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.35
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.35)
//C_POP arg1: local arg2: 7 pop local 7
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@7
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.4
D=A
@CALL
0;JMP
(Math.divide$ret.4)
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.10
D=A
@CALL
0;JMP
(Math.multiply$ret.10)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.36
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.36)
//C_POP arg1: local arg2: 8 pop local 8
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@8
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.135
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.135)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.37
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.37)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.38
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.38)
//C_POP arg1: local arg2: 6 pop local 6
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@6
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.136
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.136)
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.137
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.137)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.38
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.38)
//C_POP arg1: local arg2: 5 pop local 5
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@5
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.11
D=A
@CALL
0;JMP
(Math.multiply$ret.11)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.138
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.138)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.39
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.39)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.32
D=A
@GT
0;JMP
(ARITHMETIC_GT.32)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.39
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.39)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.40
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.40)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.139
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.139)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.19
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.19)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawRectangle$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.13
D=A
@AND
0;JMP
(ARITHMETIC_AND.13)
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.1
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Screen.drawRectangle$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.2
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.2)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.140
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.140)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.38
D=A
@LT
0;JMP
(ARITHMETIC_LT.38)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.41
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.41)
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP // pop from stack to memory address 13
AM=M-1
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.6
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.6)
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.3
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.3)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.141
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.141)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(Screen.drawRectangle$WHILE_END1)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.4
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Screen.drawRectangle$IF_END1)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.142
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.142)
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.143
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.143)
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.40
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.40)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawRectangle$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawHorizontal arg2: 11 function Screen.drawHorizontal 11
(Screen.drawHorizontal)
//@11
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
@0
D=A
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.min arg2: 2 call Math.min 2
@2
D=A
@14
M=D
@Math.min
D=A
@15
M=D
@Math.min$ret.0
D=A
@CALL
0;JMP
(Math.min$ret.0)
//C_POP arg1: local arg2: 7 pop local 7
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@7
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.max arg2: 2 call Math.max 2
@2
D=A
@14
M=D
@Math.max
D=A
@15
M=D
@Math.max$ret.0
D=A
@CALL
0;JMP
(Math.max$ret.0)
//C_POP arg1: local arg2: 8 pop local 8
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@8
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.7
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.7)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.33
D=A
@GT
0;JMP
(ARITHMETIC_GT.33)
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
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.39
D=A
@LT
0;JMP
(ARITHMETIC_LT.39)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.14
D=A
@AND
0;JMP
(ARITHMETIC_AND.14)
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 512 push constant 512
@512
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.40
D=A
@LT
0;JMP
(ARITHMETIC_LT.40)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.15
D=A
@AND
0;JMP
(ARITHMETIC_AND.15)
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.8
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.8)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.34
D=A
@GT
0;JMP
(ARITHMETIC_GT.34)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.16
D=A
@AND
0;JMP
(ARITHMETIC_AND.16)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontal$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.max arg2: 2 call Math.max 2
@2
D=A
@14
M=D
@Math.max
D=A
@15
M=D
@Math.max$ret.1
D=A
@CALL
0;JMP
(Math.max$ret.1)
//C_POP arg1: local arg2: 7 pop local 7
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@7
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.min arg2: 2 call Math.min 2
@2
D=A
@14
M=D
@Math.min
D=A
@15
M=D
@Math.min$ret.1
D=A
@CALL
0;JMP
(Math.min$ret.1)
//C_POP arg1: local arg2: 8 pop local 8
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@8
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 7 push local 7
@7
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.5
D=A
@CALL
0;JMP
(Math.divide$ret.5)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 7 push local 7
@7
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.12
D=A
@CALL
0;JMP
(Math.multiply$ret.12)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.41
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.41)
//C_POP arg1: local arg2: 9 pop local 9
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@9
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 8 push local 8
@8
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.6
D=A
@CALL
0;JMP
(Math.divide$ret.6)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 8 push local 8
@8
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.13
D=A
@CALL
0;JMP
(Math.multiply$ret.13)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.42
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.42)
//C_POP arg1: local arg2: 10 pop local 10
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@10
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 9 push local 9
@9
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.144
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.144)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.43
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.43)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.42
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.42)
//C_POP arg1: local arg2: 5 pop local 5
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@5
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 10 push local 10
@10
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.145
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.145)
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.146
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.146)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
@ARITHMETIC_SUB.44
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.44)
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.14
D=A
@CALL
0;JMP
(Math.multiply$ret.14)
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
@ARITHMETIC_ADD.147
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.147)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.45
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.45)
//C_POP arg1: local arg2: 6 pop local 6
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@6
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.148
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.148)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: local arg2: 6 push local 6
@6
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.20
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.20)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontal$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
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
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.17
D=A
@AND
0;JMP
(ARITHMETIC_AND.17)
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.5
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: IF_END1 arg2: None goto IF_END1
@Screen.drawHorizontal$IF_END1
0;JMP
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: local arg2: 5 push local 5
@5
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.6
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.6)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.149
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.149)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.41
D=A
@LT
0;JMP
(ARITHMETIC_LT.41)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.43
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.43)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.9
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.9)
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.7
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.7)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.150
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.150)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)//C_PUSH arg1: local arg2: 3 push local 3
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
//C_CALL arg1: Screen.updateLocation arg2: 2 call Screen.updateLocation 2
@2
D=A
@14
M=D
@Screen.updateLocation
D=A
@15
M=D
@Screen.updateLocation$ret.8
D=A
@CALL
0;JMP
(Screen.updateLocation$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_END1 arg2: None label IF_END1
(Screen.drawHorizontal$IF_END1)//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawSymetric arg2: 0 function Screen.drawSymetric 0
(Screen.drawSymetric)
//@0
//D=A
//@SP
//M=M+D
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.46
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.46)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.151
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.151)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.47
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.47)
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@3
D=A
@14
M=D
@Screen.drawHorizontal
D=A
@15
M=D
@Screen.drawHorizontal$ret.0
D=A
@CALL
0;JMP
(Screen.drawHorizontal$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.152
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.152)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.153
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.153)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.48
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.48)
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@3
D=A
@14
M=D
@Screen.drawHorizontal
D=A
@15
M=D
@Screen.drawHorizontal$ret.1
D=A
@CALL
0;JMP
(Screen.drawHorizontal$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.49
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.49)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.50
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.50)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.154
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.154)
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@3
D=A
@14
M=D
@Screen.drawHorizontal
D=A
@15
M=D
@Screen.drawHorizontal$ret.2
D=A
@CALL
0;JMP
(Screen.drawHorizontal$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.155
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.155)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.51
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.51)
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
//C_PUSH arg1: argument arg2: 3 push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.156
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.156)
//C_CALL arg1: Screen.drawHorizontal arg2: 3 call Screen.drawHorizontal 3
@3
D=A
@14
M=D
@Screen.drawHorizontal
D=A
@15
M=D
@Screen.drawHorizontal$ret.3
D=A
@CALL
0;JMP
(Screen.drawHorizontal$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawCircle arg2: 3 function Screen.drawCircle 3
(Screen.drawCircle)
//@3
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.42
D=A
@LT
0;JMP
(ARITHMETIC_LT.42)
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
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.35
D=A
@GT
0;JMP
(ARITHMETIC_GT.35)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.23
D=A
@OR
0;JMP
(ARITHMETIC_OR.23)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.43
D=A
@LT
0;JMP
(ARITHMETIC_LT.43)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.24
D=A
@OR
0;JMP
(ARITHMETIC_OR.24)
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
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.36
D=A
@GT
0;JMP
(ARITHMETIC_GT.36)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.25
D=A
@OR
0;JMP
(ARITHMETIC_OR.25)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawCircle$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)//C_PUSH arg1: constant arg2: 12 push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.10
D=A
@CALL
0;JMP
(Sys.error$ret.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.52
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.52)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.44
D=A
@LT
0;JMP
(ARITHMETIC_LT.44)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.157
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.157)
//C_PUSH arg1: constant arg2: 511 push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.37
D=A
@GT
0;JMP
(ARITHMETIC_GT.37)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.26
D=A
@OR
0;JMP
(ARITHMETIC_OR.26)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.53
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.53)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.45
D=A
@LT
0;JMP
(ARITHMETIC_LT.45)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.27
D=A
@OR
0;JMP
(ARITHMETIC_OR.27)
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
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.158
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.158)
//C_PUSH arg1: constant arg2: 255 push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.38
D=A
@GT
0;JMP
(ARITHMETIC_GT.38)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.28
D=A
@OR
0;JMP
(ARITHMETIC_OR.28)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawCircle$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)//C_PUSH arg1: constant arg2: 13 push constant 13
@13
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.11
D=A
@CALL
0;JMP
(Sys.error$ret.11)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.54
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.54)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Screen.drawSymetric arg2: 4 call Screen.drawSymetric 4
@4
D=A
@14
M=D
@Screen.drawSymetric
D=A
@15
M=D
@Screen.drawSymetric$ret.0
D=A
@CALL
0;JMP
(Screen.drawSymetric$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
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
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.39
D=A
@GT
0;JMP
(ARITHMETIC_GT.39)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.44
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.44)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.46
D=A
@LT
0;JMP
(ARITHMETIC_LT.46)
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawCircle$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
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
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.15
D=A
@CALL
0;JMP
(Math.multiply$ret.15)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.159
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.159)
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.160
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.160)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END2 arg2: None goto IF_END2
@Screen.drawCircle$IF_END2
0;JMP
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.55
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.55)
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.16
D=A
@CALL
0;JMP
(Math.multiply$ret.16)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.161
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.161)
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.162
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.162)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.56
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.56)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_END2 arg2: None label IF_END2
(Screen.drawCircle$IF_END2)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.163
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.163)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_CALL arg1: Screen.drawSymetric arg2: 4 call Screen.drawSymetric 4
@4
D=A
@14
M=D
@Screen.drawSymetric
D=A
@15
M=D
@Screen.drawSymetric$ret.1
D=A
@CALL
0;JMP
(Screen.drawSymetric$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(Screen.drawCircle$WHILE_END0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.new arg2: 0 function String.new 0
(String.new)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.alloc arg2: 1 call Memory.alloc 1
@1
D=A
@14
M=D
@Memory.alloc
D=A
@15
M=D
@Memory.alloc$ret.1
D=A
@CALL
0;JMP
(Memory.alloc$ret.1)
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.47
D=A
@LT
0;JMP
(ARITHMETIC_LT.47)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.new$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.new$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.new$IF_TRUE0)//C_PUSH arg1: constant arg2: 14 push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.12
D=A
@CALL
0;JMP
(Sys.error$ret.12)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.new$IF_FALSE0)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.40
D=A
@GT
0;JMP
(ARITHMETIC_GT.40)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.new$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@String.new$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(String.new$IF_TRUE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.8
D=A
@CALL
0;JMP
(Array.new$ret.8)
//C_POP arg1: this arg2: 1 pop this 1
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(String.new$IF_FALSE1)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: this arg2: 0 pop this 0
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.dispose arg2: 0 function String.dispose 0
(String.dispose)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.41
D=A
@GT
0;JMP
(ARITHMETIC_GT.41)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.dispose$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.dispose$IF_TRUE0)//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.dispose arg2: 1 call Array.dispose 1
@1
D=A
@14
M=D
@Array.dispose
D=A
@15
M=D
@Array.dispose$ret.0
D=A
@CALL
0;JMP
(Array.dispose$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.dispose$IF_FALSE0)//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.deAlloc arg2: 1 call Memory.deAlloc 1
@1
D=A
@14
M=D
@Memory.deAlloc
D=A
@15
M=D
@Memory.deAlloc$ret.1
D=A
@CALL
0;JMP
(Memory.deAlloc$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.length arg2: 0 function String.length 0
(String.length)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.charAt arg2: 0 function String.charAt 0
(String.charAt)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.48
D=A
@LT
0;JMP
(ARITHMETIC_LT.48)
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
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.42
D=A
@GT
0;JMP
(ARITHMETIC_GT.42)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.29
D=A
@OR
0;JMP
(ARITHMETIC_OR.29)
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.21
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.21)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.30
D=A
@OR
0;JMP
(ARITHMETIC_OR.30)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.charAt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.charAt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.charAt$IF_TRUE0)//C_PUSH arg1: constant arg2: 15 push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.13
D=A
@CALL
0;JMP
(Sys.error$ret.13)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.charAt$IF_FALSE0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.164
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.164)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.setCharAt arg2: 0 function String.setCharAt 0
(String.setCharAt)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.49
D=A
@LT
0;JMP
(ARITHMETIC_LT.49)
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
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.43
D=A
@GT
0;JMP
(ARITHMETIC_GT.43)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.31
D=A
@OR
0;JMP
(ARITHMETIC_OR.31)
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.22
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.22)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.32
D=A
@OR
0;JMP
(ARITHMETIC_OR.32)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setCharAt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.setCharAt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.setCharAt$IF_TRUE0)//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.14
D=A
@CALL
0;JMP
(Sys.error$ret.14)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.setCharAt$IF_FALSE0)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.165
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.165)
//C_PUSH arg1: argument arg2: 2 push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.appendChar arg2: 0 function String.appendChar 0
(String.appendChar)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 0 push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.23
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.23)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.appendChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.appendChar$IF_TRUE0)//C_PUSH arg1: constant arg2: 17 push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.15
D=A
@CALL
0;JMP
(Sys.error$ret.15)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.appendChar$IF_FALSE0)//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.166
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.166)
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.167
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.167)
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.eraseLastChar arg2: 0 function String.eraseLastChar 0
(String.eraseLastChar)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.24
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.24)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.eraseLastChar$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)//C_PUSH arg1: constant arg2: 18 push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.16
D=A
@CALL
0;JMP
(Sys.error$ret.16)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
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
@ARITHMETIC_SUB.57
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.57)
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.intValue arg2: 5 function String.intValue 5
(String.intValue)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.25
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.25)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.intValue$IF_TRUE0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.intValue$IF_FALSE0)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.45
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.45)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.168
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.168)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.26
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.26)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(String.intValue$IF_TRUE1)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.46
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.46)
//C_POP arg1: local arg2: 4 pop local 4
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@4
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(String.intValue$IF_FALSE1)//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(String.intValue$WHILE_EXP0)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.50
D=A
@LT
0;JMP
(ARITHMETIC_LT.50)
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
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.18
D=A
@AND
0;JMP
(ARITHMETIC_AND.18)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.47
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.47)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.169
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.169)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.58
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.58)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.51
D=A
@LT
0;JMP
(ARITHMETIC_LT.51)
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
//C_PUSH arg1: constant arg2: 9 push constant 9
@9
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.44
D=A
@GT
0;JMP
(ARITHMETIC_GT.44)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.33
D=A
@OR
0;JMP
(ARITHMETIC_OR.33)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.48
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.48)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@String.intValue$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(String.intValue$IF_TRUE2)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.17
D=A
@CALL
0;JMP
(Math.multiply$ret.17)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.170
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.170)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.171
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.171)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(String.intValue$IF_FALSE2)//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(String.intValue$WHILE_END0)//C_PUSH arg1: local arg2: 4 push local 4
@4
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@String.intValue$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(String.intValue$IF_TRUE3)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.10
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.10)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(String.intValue$IF_FALSE3)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.setInt arg2: 4 function String.setInt 4
(String.setInt)
//@4
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.27
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.27)
//C_IF arg1: IF_TRUE0 arg2: None if-goto IF_TRUE0
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setInt$IF_TRUE0
D;JNE
//C_GOTO arg1: IF_FALSE0 arg2: None goto IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP
//C_LABEL arg1: IF_TRUE0 arg2: None label IF_TRUE0
(String.setInt$IF_TRUE0)//C_PUSH arg1: constant arg2: 19 push constant 19
@19
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.17
D=A
@CALL
0;JMP
(Sys.error$ret.17)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE0 arg2: None label IF_FALSE0
(String.setInt$IF_FALSE0)//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.new arg2: 1 call Array.new 1
@1
D=A
@14
M=D
@Array.new
D=A
@15
M=D
@Array.new$ret.9
D=A
@CALL
0;JMP
(Array.new$ret.9)
//C_POP arg1: local arg2: 2 pop local 2
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.52
D=A
@LT
0;JMP
(ARITHMETIC_LT.52)
//C_IF arg1: IF_TRUE1 arg2: None if-goto IF_TRUE1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setInt$IF_TRUE1
D;JNE
//C_GOTO arg1: IF_FALSE1 arg2: None goto IF_FALSE1
@String.setInt$IF_FALSE1
0;JMP
//C_LABEL arg1: IF_TRUE1 arg2: None label IF_TRUE1
(String.setInt$IF_TRUE1)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.49
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.49)
//C_POP arg1: local arg2: 3 pop local 3
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@3
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.11
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.11)
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE1 arg2: None label IF_FALSE1
(String.setInt$IF_FALSE1)//C_PUSH arg1: argument arg2: 1 push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP0 arg2: None label WHILE_EXP0
(String.setInt$WHILE_EXP0)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.45
D=A
@GT
0;JMP
(ARITHMETIC_GT.45)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.50
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.50)
//C_IF arg1: WHILE_END0 arg2: None if-goto WHILE_END0
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.divide arg2: 2 call Math.divide 2
@2
D=A
@14
M=D
@Math.divide
D=A
@15
M=D
@Math.divide$ret.7
D=A
@CALL
0;JMP
(Math.divide$ret.7)
//C_POP arg1: local arg2: 1 pop local 1
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.172
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.172)
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.multiply arg2: 2 call Math.multiply 2
@2
D=A
@14
M=D
@Math.multiply
D=A
@15
M=D
@Math.multiply$ret.18
D=A
@CALL
0;JMP
(Math.multiply$ret.18)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.59
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.59)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.173
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.173)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.174
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.174)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_POP arg1: argument arg2: 1 pop argument 1
@SP
AM=M-1
D=M
@ARG
D=D+M // D = pop value + base memory address of mem segment
@1
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP0 arg2: None goto WHILE_EXP0
@String.setInt$WHILE_EXP0
0;JMP
//C_LABEL arg1: WHILE_END0 arg2: None label WHILE_END0
(String.setInt$WHILE_END0)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_IF arg1: IF_TRUE2 arg2: None if-goto IF_TRUE2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setInt$IF_TRUE2
D;JNE
//C_GOTO arg1: IF_FALSE2 arg2: None goto IF_FALSE2
@String.setInt$IF_FALSE2
0;JMP
//C_LABEL arg1: IF_TRUE2 arg2: None label IF_TRUE2
(String.setInt$IF_TRUE2)//C_PUSH arg1: local arg2: 0 push local 0
@0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.175
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.175)
//C_PUSH arg1: constant arg2: 45 push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.176
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.176)
//C_POP arg1: local arg2: 0 pop local 0
@SP
AM=M-1
D=M
@LCL
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: IF_FALSE2 arg2: None label IF_FALSE2
(String.setInt$IF_FALSE2)//C_PUSH arg1: this arg2: 0 push this 0
@0
D=A
@THIS
A=M+D
D=M
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.53
D=A
@LT
0;JMP
(ARITHMETIC_LT.53)
//C_IF arg1: IF_TRUE3 arg2: None if-goto IF_TRUE3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setInt$IF_TRUE3
D;JNE
//C_GOTO arg1: IF_FALSE3 arg2: None goto IF_FALSE3
@String.setInt$IF_FALSE3
0;JMP
//C_LABEL arg1: IF_TRUE3 arg2: None label IF_TRUE3
(String.setInt$IF_TRUE3)//C_PUSH arg1: constant arg2: 19 push constant 19
@19
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.error arg2: 1 call Sys.error 1
@1
D=A
@14
M=D
@Sys.error
D=A
@15
M=D
@Sys.error$ret.18
D=A
@CALL
0;JMP
(Sys.error$ret.18)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: IF_FALSE3 arg2: None label IF_FALSE3
(String.setInt$IF_FALSE3)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.28
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.28)
//C_IF arg1: IF_TRUE4 arg2: None if-goto IF_TRUE4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setInt$IF_TRUE4
D;JNE
//C_GOTO arg1: IF_FALSE4 arg2: None goto IF_FALSE4
@String.setInt$IF_FALSE4
0;JMP
//C_LABEL arg1: IF_TRUE4 arg2: None label IF_TRUE4
(String.setInt$IF_TRUE4)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.177
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.177)
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: IF_END4 arg2: None goto IF_END4
@String.setInt$IF_END4
0;JMP
//C_LABEL arg1: IF_FALSE4 arg2: None label IF_FALSE4
(String.setInt$IF_FALSE4)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_LABEL arg1: WHILE_EXP1 arg2: None label WHILE_EXP1
(String.setInt$WHILE_EXP1)//C_PUSH arg1: this arg2: 2 push this 2
@2
D=A
@THIS
A=M+D
D=M
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.54
D=A
@LT
0;JMP
(ARITHMETIC_LT.54)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.51
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.51)
//C_IF arg1: WHILE_END1 arg2: None if-goto WHILE_END1
@SP // pop from stack to memory address 13
AM=M-1
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
M=M+1
A=M-1
M=D
//C_PUSH arg1: this arg2: 1 push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.178
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.178)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.179
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.179)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.60
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.60)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.180
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.180)
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
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
M=M+1
A=M-1
M=D
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_POP arg1: pointer arg2: 1 pop pointer 1
@SP
AM=M-1
D=M
@4
M=D
//C_PUSH arg1: temp arg2: 0 push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: that arg2: 0 pop that 0
@SP
AM=M-1
D=M
@THAT
D=D+M // D = pop value + base memory address of mem segment
@0
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.181
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.181)
//C_POP arg1: this arg2: 2 pop this 2
@SP
AM=M-1
D=M
@THIS
D=D+M // D = pop value + base memory address of mem segment
@2
D=D+A // D = pop value + address to pop to
@SP
A=M
A=M
A=D-A
M=D-A
//C_GOTO arg1: WHILE_EXP1 arg2: None goto WHILE_EXP1
@String.setInt$WHILE_EXP1
0;JMP
//C_LABEL arg1: WHILE_END1 arg2: None label WHILE_END1
(String.setInt$WHILE_END1)//C_LABEL arg1: IF_END4 arg2: None label IF_END4
(String.setInt$IF_END4)//C_PUSH arg1: local arg2: 2 push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Array.dispose arg2: 1 call Array.dispose 1
@1
D=A
@14
M=D
@Array.dispose
D=A
@15
M=D
@Array.dispose$ret.1
D=A
@CALL
0;JMP
(Array.dispose$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.newLine arg2: 0 function String.newLine 0
(String.newLine)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 128 push constant 128
@128
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.backSpace arg2: 0 function String.backSpace 0
(String.backSpace)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 129 push constant 129
@129
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.doubleQuote arg2: 0 function String.doubleQuote 0
(String.doubleQuote)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 34 push constant 34
@34
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
