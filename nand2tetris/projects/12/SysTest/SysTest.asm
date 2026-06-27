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
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Sys.halt$L1.1)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.0
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.0)
//C_IF arg1: L2.1 arg2: None if-goto L2.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Sys.halt$L2.1
D;JNE
//C_GOTO arg1: L1.1 arg2: None goto L1.1
@Sys.halt$L1.1
0;JMP
//C_LABEL arg1: L2.1 arg2: None label L2.1
(Sys.halt$L2.1)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Sys.wait arg2: 2 function Sys.wait 2
(Sys.wait)
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
//C_LABEL arg1: L1.2 arg2: None label L1.2
(Sys.wait$L1.2)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.0
D=A
@LT
0;JMP
(ARITHMETIC_LT.0)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.1
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.1)
//C_IF arg1: L2.2 arg2: None if-goto L2.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Sys.wait$L2.2
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
@ARITHMETIC_ADD.0
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.0)
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
//C_GOTO arg1: L1.2 arg2: None goto L1.2
@Sys.wait$L1.2
0;JMP
//C_LABEL arg1: L2.2 arg2: None label L2.2
(Sys.wait$L2.2)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
@String.appendChar$ret.0
D=A
@CALL
0;JMP
(String.appendChar$ret.0)
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
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
//C_PUSH arg1: constant arg2: 82 push constant 82
@82
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Keyboard.readChar$L1.1)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_EQ.0
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.0)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.2
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.2)
//C_IF arg1: L2.1 arg2: None if-goto L2.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readChar$L2.1
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
//C_GOTO arg1: L1.1 arg2: None goto L1.1
@Keyboard.readChar$L1.1
0;JMP
//C_LABEL arg1: L2.1 arg2: None label L2.1
(Keyboard.readChar$L2.1)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_LABEL arg1: L1.2 arg2: None label L1.2
(Keyboard.readChar$L1.2)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_EQ.1
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.3
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.3)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.4
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.4)
//C_IF arg1: L2.2 arg2: None if-goto L2.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readChar$L2.2
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
@Keyboard.keyPressed$ret.1
D=A
@CALL
0;JMP
(Keyboard.keyPressed$ret.1)
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
//C_GOTO arg1: L1.2 arg2: None goto L1.2
@Keyboard.readChar$L1.2
0;JMP
//C_LABEL arg1: L2.2 arg2: None label L2.2
(Keyboard.readChar$L2.2)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 128 push constant 128
@128
D=A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.5
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.5)
//C_IF arg1: L1.3 arg2: None if-goto L1.3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readChar$L1.3
D;JNE
//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
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
//C_GOTO arg1: L2.3 arg2: None goto L2.3
@Keyboard.readChar$L2.3
0;JMP
//C_LABEL arg1: L1.3 arg2: None label L1.3
(Keyboard.readChar$L1.3)//C_LABEL arg1: L2.3 arg2: None label L2.3
(Keyboard.readChar$L2.3)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 129 push constant 129
@129
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
@ARITHMETIC_NOT.6
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.6)
//C_IF arg1: L1.4 arg2: None if-goto L1.4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readChar$L1.4
D;JNE
//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
@0
D=A
@14
M=D
@Output.backSpace
D=A
@15
M=D
@Output.backSpace$ret.1
D=A
@CALL
0;JMP
(Output.backSpace$ret.1)
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
//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
@0
D=A
@14
M=D
@Output.backSpace
D=A
@15
M=D
@Output.backSpace$ret.2
D=A
@CALL
0;JMP
(Output.backSpace$ret.2)
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
//C_GOTO arg1: L2.4 arg2: None goto L2.4
@Keyboard.readChar$L2.4
0;JMP
//C_LABEL arg1: L1.4 arg2: None label L1.4
(Keyboard.readChar$L1.4)//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
@0
D=A
@14
M=D
@Output.backSpace
D=A
@15
M=D
@Output.backSpace$ret.3
D=A
@CALL
0;JMP
(Output.backSpace$ret.3)
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
//C_LABEL arg1: L2.4 arg2: None label L2.4
(Keyboard.readChar$L2.4)//C_PUSH arg1: local arg2: 1 push local 1
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
//C_FUNCTION arg1: Keyboard.readLine arg2: 2 function Keyboard.readLine 2
(Keyboard.readLine)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_LABEL arg1: L1.5 arg2: None label L1.5
(Keyboard.readLine$L1.5)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.7
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.7)
//C_IF arg1: L2.5 arg2: None if-goto L2.5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readLine$L2.5
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
//C_PUSH arg1: constant arg2: 128 push constant 128
@128
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.8
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.8)
//C_IF arg1: L1.6 arg2: None if-goto L1.6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readLine$L1.6
D;JNE
//C_CALL arg1: Output.println arg2: 0 call Output.println 0
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
//C_GOTO arg1: L2.6 arg2: None goto L2.6
@Keyboard.readLine$L2.6
0;JMP
//C_LABEL arg1: L1.6 arg2: None label L1.6
(Keyboard.readLine$L1.6)//C_LABEL arg1: L2.6 arg2: None label L2.6
(Keyboard.readLine$L2.6)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 129 push constant 129
@129
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.9
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.9)
//C_IF arg1: L1.7 arg2: None if-goto L1.7
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Keyboard.readLine$L1.7
D;JNE
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
//C_CALL arg1: Output.backSpace arg2: 0 call Output.backSpace 0
@0
D=A
@14
M=D
@Output.backSpace
D=A
@15
M=D
@Output.backSpace$ret.4
D=A
@CALL
0;JMP
(Output.backSpace$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: L2.7 arg2: None goto L2.7
@Keyboard.readLine$L2.7
0;JMP
//C_LABEL arg1: L1.7 arg2: None label L1.7
(Keyboard.readLine$L1.7)//C_PUSH arg1: local arg2: 1 push local 1
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
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: L2.7 arg2: None label L2.7
(Keyboard.readLine$L2.7)//C_GOTO arg1: L1.5 arg2: None goto L1.5
@Keyboard.readLine$L1.5
0;JMP
//C_LABEL arg1: L2.5 arg2: None label L2.5
(Keyboard.readLine$L2.5)//C_FUNCTION arg1: Keyboard.readInt arg2: 2 function Keyboard.readInt 2
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
//C_FUNCTION arg1: Main.main arg2: 1 function Main.main 1
(Main.main)
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
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
//C_PUSH arg1: constant arg2: 87 push constant 87
@87
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
@String.appendChar$ret.5
D=A
@CALL
0;JMP
(String.appendChar$ret.5)
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
@String.appendChar$ret.6
D=A
@CALL
0;JMP
(String.appendChar$ret.6)
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
@String.appendChar$ret.7
D=A
@CALL
0;JMP
(String.appendChar$ret.7)
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
@String.appendChar$ret.8
D=A
@CALL
0;JMP
(String.appendChar$ret.8)
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
@String.appendChar$ret.9
D=A
@CALL
0;JMP
(String.appendChar$ret.9)
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
@String.appendChar$ret.10
D=A
@CALL
0;JMP
(String.appendChar$ret.10)
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
@String.appendChar$ret.11
D=A
@CALL
0;JMP
(String.appendChar$ret.11)
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
@String.appendChar$ret.12
D=A
@CALL
0;JMP
(String.appendChar$ret.12)
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
@String.appendChar$ret.13
D=A
@CALL
0;JMP
(String.appendChar$ret.13)
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
//C_CALL arg1: Output.println arg2: 0 call Output.println 0
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
//C_PUSH arg1: constant arg2: 64 push constant 64
@64
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
//C_PUSH arg1: constant arg2: 80 push constant 80
@80
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
@String.appendChar$ret.16
D=A
@CALL
0;JMP
(String.appendChar$ret.16)
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
@String.appendChar$ret.17
D=A
@CALL
0;JMP
(String.appendChar$ret.17)
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
@String.appendChar$ret.18
D=A
@CALL
0;JMP
(String.appendChar$ret.18)
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
@String.appendChar$ret.19
D=A
@CALL
0;JMP
(String.appendChar$ret.19)
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
@String.appendChar$ret.20
D=A
@CALL
0;JMP
(String.appendChar$ret.20)
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
@String.appendChar$ret.21
D=A
@CALL
0;JMP
(String.appendChar$ret.21)
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
@String.appendChar$ret.22
D=A
@CALL
0;JMP
(String.appendChar$ret.22)
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
@String.appendChar$ret.23
D=A
@CALL
0;JMP
(String.appendChar$ret.23)
//C_PUSH arg1: constant arg2: 107 push constant 107
@107
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
@String.appendChar$ret.25
D=A
@CALL
0;JMP
(String.appendChar$ret.25)
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
@String.appendChar$ret.26
D=A
@CALL
0;JMP
(String.appendChar$ret.26)
//C_PUSH arg1: constant arg2: 46 push constant 46
@46
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
@String.appendChar$ret.28
D=A
@CALL
0;JMP
(String.appendChar$ret.28)
//C_PUSH arg1: constant arg2: 65 push constant 65
@65
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
//C_PUSH arg1: constant arg2: 102 push constant 102
@102
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
@String.appendChar$ret.31
D=A
@CALL
0;JMP
(String.appendChar$ret.31)
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
@String.appendChar$ret.32
D=A
@CALL
0;JMP
(String.appendChar$ret.32)
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
//C_PUSH arg1: constant arg2: 50 push constant 50
@50
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
@String.appendChar$ret.36
D=A
@CALL
0;JMP
(String.appendChar$ret.36)
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
@String.appendChar$ret.37
D=A
@CALL
0;JMP
(String.appendChar$ret.37)
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
@String.appendChar$ret.38
D=A
@CALL
0;JMP
(String.appendChar$ret.38)
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
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
@String.appendChar$ret.40
D=A
@CALL
0;JMP
(String.appendChar$ret.40)
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
@String.appendChar$ret.41
D=A
@CALL
0;JMP
(String.appendChar$ret.41)
//C_PUSH arg1: constant arg2: 100 push constant 100
@100
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
@String.appendChar$ret.43
D=A
@CALL
0;JMP
(String.appendChar$ret.43)
//C_PUSH arg1: constant arg2: 44 push constant 44
@44
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
@String.appendChar$ret.45
D=A
@CALL
0;JMP
(String.appendChar$ret.45)
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
@String.appendChar$ret.46
D=A
@CALL
0;JMP
(String.appendChar$ret.46)
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
@String.appendChar$ret.47
D=A
@CALL
0;JMP
(String.appendChar$ret.47)
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
@String.appendChar$ret.48
D=A
@CALL
0;JMP
(String.appendChar$ret.48)
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
@String.appendChar$ret.49
D=A
@CALL
0;JMP
(String.appendChar$ret.49)
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
@String.appendChar$ret.50
D=A
@CALL
0;JMP
(String.appendChar$ret.50)
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
@String.appendChar$ret.51
D=A
@CALL
0;JMP
(String.appendChar$ret.51)
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
@String.appendChar$ret.52
D=A
@CALL
0;JMP
(String.appendChar$ret.52)
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
@String.appendChar$ret.53
D=A
@CALL
0;JMP
(String.appendChar$ret.53)
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
@String.appendChar$ret.54
D=A
@CALL
0;JMP
(String.appendChar$ret.54)
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
@String.appendChar$ret.55
D=A
@CALL
0;JMP
(String.appendChar$ret.55)
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
@String.appendChar$ret.56
D=A
@CALL
0;JMP
(String.appendChar$ret.56)
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
@String.appendChar$ret.57
D=A
@CALL
0;JMP
(String.appendChar$ret.57)
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
@String.appendChar$ret.58
D=A
@CALL
0;JMP
(String.appendChar$ret.58)
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
@String.appendChar$ret.59
D=A
@CALL
0;JMP
(String.appendChar$ret.59)
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
@String.appendChar$ret.60
D=A
@CALL
0;JMP
(String.appendChar$ret.60)
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
@String.appendChar$ret.61
D=A
@CALL
0;JMP
(String.appendChar$ret.61)
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
@String.appendChar$ret.62
D=A
@CALL
0;JMP
(String.appendChar$ret.62)
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
@String.appendChar$ret.63
D=A
@CALL
0;JMP
(String.appendChar$ret.63)
//C_PUSH arg1: constant arg2: 108 push constant 108
@108
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
@String.appendChar$ret.64
D=A
@CALL
0;JMP
(String.appendChar$ret.64)
//C_PUSH arg1: constant arg2: 108 push constant 108
@108
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
@String.appendChar$ret.65
D=A
@CALL
0;JMP
(String.appendChar$ret.65)
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
@String.appendChar$ret.66
D=A
@CALL
0;JMP
(String.appendChar$ret.66)
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
@String.appendChar$ret.67
D=A
@CALL
0;JMP
(String.appendChar$ret.67)
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
@String.appendChar$ret.68
D=A
@CALL
0;JMP
(String.appendChar$ret.68)
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
@String.appendChar$ret.69
D=A
@CALL
0;JMP
(String.appendChar$ret.69)
//C_PUSH arg1: constant arg2: 112 push constant 112
@112
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
@String.appendChar$ret.70
D=A
@CALL
0;JMP
(String.appendChar$ret.70)
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
@String.appendChar$ret.71
D=A
@CALL
0;JMP
(String.appendChar$ret.71)
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
@String.appendChar$ret.72
D=A
@CALL
0;JMP
(String.appendChar$ret.72)
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
@String.appendChar$ret.73
D=A
@CALL
0;JMP
(String.appendChar$ret.73)
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
@String.appendChar$ret.74
D=A
@CALL
0;JMP
(String.appendChar$ret.74)
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
@String.appendChar$ret.75
D=A
@CALL
0;JMP
(String.appendChar$ret.75)
//C_PUSH arg1: constant arg2: 100 push constant 100
@100
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
@String.appendChar$ret.76
D=A
@CALL
0;JMP
(String.appendChar$ret.76)
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
@String.appendChar$ret.77
D=A
@CALL
0;JMP
(String.appendChar$ret.77)
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@1
D=A
@14
M=D
@Output.printString
D=A
@15
M=D
@Output.printString$ret.3
D=A
@CALL
0;JMP
(Output.printString$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Main.main$L1.1)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_EQ.6
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.6)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.10
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.10)
//C_IF arg1: L2.1 arg2: None if-goto L2.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Main.main$L2.1
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
@Keyboard.keyPressed$ret.2
D=A
@CALL
0;JMP
(Keyboard.keyPressed$ret.2)
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
//C_GOTO arg1: L1.1 arg2: None goto L1.1
@Main.main$L1.1
0;JMP
//C_LABEL arg1: L2.1 arg2: None label L2.1
(Main.main$L2.1)//C_LABEL arg1: L1.2 arg2: None label L1.2
(Main.main$L1.2)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_EQ.7
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.7)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.11
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.11)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.12
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.12)
//C_IF arg1: L2.2 arg2: None if-goto L2.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Main.main$L2.2
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
@Keyboard.keyPressed$ret.3
D=A
@CALL
0;JMP
(Keyboard.keyPressed$ret.3)
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
//C_GOTO arg1: L1.2 arg2: None goto L1.2
@Main.main$L1.2
0;JMP
//C_LABEL arg1: L2.2 arg2: None label L2.2
(Main.main$L2.2)//C_PUSH arg1: constant arg2: 2000 push constant 2000
@2000
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Sys.wait arg2: 1 call Sys.wait 1
@1
D=A
@14
M=D
@Sys.wait
D=A
@15
M=D
@Sys.wait$ret.0
D=A
@CALL
0;JMP
(Sys.wait$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_CALL arg1: Output.println arg2: 0 call Output.println 0
@0
D=A
@14
M=D
@Output.println
D=A
@15
M=D
@Output.println$ret.2
D=A
@CALL
0;JMP
(Output.println$ret.2)
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
@String.appendChar$ret.78
D=A
@CALL
0;JMP
(String.appendChar$ret.78)
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
@String.appendChar$ret.79
D=A
@CALL
0;JMP
(String.appendChar$ret.79)
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
@String.appendChar$ret.80
D=A
@CALL
0;JMP
(String.appendChar$ret.80)
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
@String.appendChar$ret.81
D=A
@CALL
0;JMP
(String.appendChar$ret.81)
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
@String.appendChar$ret.82
D=A
@CALL
0;JMP
(String.appendChar$ret.82)
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
@String.appendChar$ret.83
D=A
@CALL
0;JMP
(String.appendChar$ret.83)
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
@String.appendChar$ret.84
D=A
@CALL
0;JMP
(String.appendChar$ret.84)
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
@String.appendChar$ret.85
D=A
@CALL
0;JMP
(String.appendChar$ret.85)
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
@String.appendChar$ret.86
D=A
@CALL
0;JMP
(String.appendChar$ret.86)
//C_PUSH arg1: constant arg2: 112 push constant 112
@112
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
@String.appendChar$ret.87
D=A
@CALL
0;JMP
(String.appendChar$ret.87)
//C_PUSH arg1: constant arg2: 46 push constant 46
@46
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
@String.appendChar$ret.88
D=A
@CALL
0;JMP
(String.appendChar$ret.88)
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
@String.appendChar$ret.89
D=A
@CALL
0;JMP
(String.appendChar$ret.89)
//C_PUSH arg1: constant arg2: 77 push constant 77
@77
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
@String.appendChar$ret.90
D=A
@CALL
0;JMP
(String.appendChar$ret.90)
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
@String.appendChar$ret.91
D=A
@CALL
0;JMP
(String.appendChar$ret.91)
//C_PUSH arg1: constant arg2: 107 push constant 107
@107
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
@String.appendChar$ret.92
D=A
@CALL
0;JMP
(String.appendChar$ret.92)
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
@String.appendChar$ret.93
D=A
@CALL
0;JMP
(String.appendChar$ret.93)
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
@String.appendChar$ret.94
D=A
@CALL
0;JMP
(String.appendChar$ret.94)
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
@String.appendChar$ret.95
D=A
@CALL
0;JMP
(String.appendChar$ret.95)
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
@String.appendChar$ret.96
D=A
@CALL
0;JMP
(String.appendChar$ret.96)
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
@String.appendChar$ret.97
D=A
@CALL
0;JMP
(String.appendChar$ret.97)
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
@String.appendChar$ret.98
D=A
@CALL
0;JMP
(String.appendChar$ret.98)
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
@String.appendChar$ret.99
D=A
@CALL
0;JMP
(String.appendChar$ret.99)
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
@String.appendChar$ret.100
D=A
@CALL
0;JMP
(String.appendChar$ret.100)
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
@String.appendChar$ret.101
D=A
@CALL
0;JMP
(String.appendChar$ret.101)
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
@String.appendChar$ret.102
D=A
@CALL
0;JMP
(String.appendChar$ret.102)
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
@String.appendChar$ret.103
D=A
@CALL
0;JMP
(String.appendChar$ret.103)
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
@String.appendChar$ret.104
D=A
@CALL
0;JMP
(String.appendChar$ret.104)
//C_PUSH arg1: constant arg2: 50 push constant 50
@50
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
@String.appendChar$ret.105
D=A
@CALL
0;JMP
(String.appendChar$ret.105)
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
@String.appendChar$ret.106
D=A
@CALL
0;JMP
(String.appendChar$ret.106)
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
@String.appendChar$ret.107
D=A
@CALL
0;JMP
(String.appendChar$ret.107)
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
@String.appendChar$ret.108
D=A
@CALL
0;JMP
(String.appendChar$ret.108)
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
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
@String.appendChar$ret.109
D=A
@CALL
0;JMP
(String.appendChar$ret.109)
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
@String.appendChar$ret.110
D=A
@CALL
0;JMP
(String.appendChar$ret.110)
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
@String.appendChar$ret.111
D=A
@CALL
0;JMP
(String.appendChar$ret.111)
//C_PUSH arg1: constant arg2: 100 push constant 100
@100
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
@String.appendChar$ret.112
D=A
@CALL
0;JMP
(String.appendChar$ret.112)
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
@String.appendChar$ret.113
D=A
@CALL
0;JMP
(String.appendChar$ret.113)
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
@String.appendChar$ret.114
D=A
@CALL
0;JMP
(String.appendChar$ret.114)
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
@String.appendChar$ret.115
D=A
@CALL
0;JMP
(String.appendChar$ret.115)
//C_PUSH arg1: constant arg2: 108 push constant 108
@108
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
@String.appendChar$ret.116
D=A
@CALL
0;JMP
(String.appendChar$ret.116)
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
@String.appendChar$ret.117
D=A
@CALL
0;JMP
(String.appendChar$ret.117)
//C_PUSH arg1: constant arg2: 112 push constant 112
@112
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
@String.appendChar$ret.118
D=A
@CALL
0;JMP
(String.appendChar$ret.118)
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
@String.appendChar$ret.119
D=A
@CALL
0;JMP
(String.appendChar$ret.119)
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
@String.appendChar$ret.120
D=A
@CALL
0;JMP
(String.appendChar$ret.120)
//C_PUSH arg1: constant arg2: 100 push constant 100
@100
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
@String.appendChar$ret.121
D=A
@CALL
0;JMP
(String.appendChar$ret.121)
//C_PUSH arg1: constant arg2: 46 push constant 46
@46
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
@String.appendChar$ret.122
D=A
@CALL
0;JMP
(String.appendChar$ret.122)
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@1
D=A
@14
M=D
@Output.printString
D=A
@15
M=D
@Output.printString$ret.4
D=A
@CALL
0;JMP
(Output.printString$ret.4)
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
//C_FUNCTION arg1: Math.init arg2: 0 function Math.init 0
(Math.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
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
@Array.new$ret.0
D=A
@CALL
0;JMP
(Array.new$ret.0)
//C_POP arg1: static arg2: 0 pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.1
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.1)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
@ARITHMETIC_ADD.2
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.2)
//C_PUSH arg1: constant arg2: 2 push constant 2
@2
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
@ARITHMETIC_ADD.3
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.3)
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
@ARITHMETIC_ADD.4
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.4)
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.5
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.5)
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
D=A
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.7
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.7)
//C_PUSH arg1: constant arg2: 64 push constant 64
@64
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.8
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.8)
//C_PUSH arg1: constant arg2: 128 push constant 128
@128
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.9
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.9)
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.10
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.10)
//C_PUSH arg1: constant arg2: 512 push constant 512
@512
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.11
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.11)
//C_PUSH arg1: constant arg2: 1024 push constant 1024
@1024
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.12
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.12)
//C_PUSH arg1: constant arg2: 2048 push constant 2048
@2048
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
@ARITHMETIC_ADD.13
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.13)
//C_PUSH arg1: constant arg2: 4096 push constant 4096
@4096
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 13 push constant 13
@13
D=A
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
//C_PUSH arg1: constant arg2: 8192 push constant 8192
@8192
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.15
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.15)
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
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
//C_FUNCTION arg1: Math.multiply arg2: 3 function Math.multiply 3
(Math.multiply)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Math.multiply$L1.1)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.8
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.8)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.13
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.13)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.14
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.14)
//C_IF arg1: L2.1 arg2: None if-goto L2.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.multiply$L2.1
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
//C_CALL arg1: Math.bit arg2: 2 call Math.bit 2
@2
D=A
@14
M=D
@Math.bit
D=A
@15
M=D
@Math.bit$ret.0
D=A
@CALL
0;JMP
(Math.bit$ret.0)
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.9
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.9)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.15
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.15)
//C_IF arg1: L1.2 arg2: None if-goto L1.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.multiply$L1.2
D;JNE
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
@ARITHMETIC_ADD.16
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.16)
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
//C_GOTO arg1: L2.2 arg2: None goto L2.2
@Math.multiply$L2.2
0;JMP
//C_LABEL arg1: L1.2 arg2: None label L1.2
(Math.multiply$L1.2)//C_LABEL arg1: L2.2 arg2: None label L2.2
(Math.multiply$L2.2)//C_PUSH arg1: local arg2: 2 push local 2
@2
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
@ARITHMETIC_ADD.17
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.17)
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
@ARITHMETIC_ADD.18
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.18)
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
//C_GOTO arg1: L1.1 arg2: None goto L1.1
@Math.multiply$L1.1
0;JMP
//C_LABEL arg1: L2.1 arg2: None label L2.1
(Math.multiply$L2.1)//C_PUSH arg1: local arg2: 1 push local 1
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
//C_FUNCTION arg1: Math.divide arg2: 2 function Math.divide 2
(Math.divide)
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
@ARITHMETIC_LT.1
D=A
@LT
0;JMP
(ARITHMETIC_LT.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.16
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.16)
//C_IF arg1: L1.3 arg2: None if-goto L1.3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$L1.3
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.3
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.3)
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.4
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.4)
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
//C_GOTO arg1: L2.3 arg2: None goto L2.3
@Math.divide$L2.3
0;JMP
//C_LABEL arg1: L1.3 arg2: None label L1.3
(Math.divide$L1.3)//C_LABEL arg1: L2.3 arg2: None label L2.3
(Math.divide$L2.3)//C_PUSH arg1: argument arg2: 1 push argument 1
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
@ARITHMETIC_LT.2
D=A
@LT
0;JMP
(ARITHMETIC_LT.2)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.17
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.17)
//C_IF arg1: L1.4 arg2: None if-goto L1.4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divide$L1.4
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.5
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.5)
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.6
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.6)
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
//C_GOTO arg1: L2.4 arg2: None goto L2.4
@Math.divide$L2.4
0;JMP
//C_LABEL arg1: L1.4 arg2: None label L1.4
(Math.divide$L1.4)//C_LABEL arg1: L2.4 arg2: None label L2.4
(Math.divide$L2.4)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_CALL arg1: Math.divideRecursively arg2: 2 call Math.divideRecursively 2
@2
D=A
@14
M=D
@Math.divideRecursively
D=A
@15
M=D
@Math.divideRecursively$ret.0
D=A
@CALL
0;JMP
(Math.divideRecursively$ret.0)
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.divideRecursively arg2: 1 function Math.divideRecursively 1
(Math.divideRecursively)
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
@ARITHMETIC_GT.0
D=A
@GT
0;JMP
(ARITHMETIC_GT.0)
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
@ARITHMETIC_LT.3
D=A
@LT
0;JMP
(ARITHMETIC_LT.3)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.0
D=A
@OR
0;JMP
(ARITHMETIC_OR.0)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.18
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.18)
//C_IF arg1: L1.5 arg2: None if-goto L1.5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divideRecursively$L1.5
D;JNE
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
//C_GOTO arg1: L2.5 arg2: None goto L2.5
@Math.divideRecursively$L2.5
0;JMP
//C_LABEL arg1: L1.5 arg2: None label L1.5
(Math.divideRecursively$L1.5)//C_LABEL arg1: L2.5 arg2: None label L2.5
(Math.divideRecursively$L2.5)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.19
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.19)
//C_CALL arg1: Math.divideRecursively arg2: 2 call Math.divideRecursively 2
@2
D=A
@14
M=D
@Math.divideRecursively
D=A
@15
M=D
@Math.divideRecursively$ret.1
D=A
@CALL
0;JMP
(Math.divideRecursively$ret.1)
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
@ARITHMETIC_ADD.20
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.20)
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.0
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.0)
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
@ARITHMETIC_LT.4
D=A
@LT
0;JMP
(ARITHMETIC_LT.4)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.19
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.19)
//C_IF arg1: L1.6 arg2: None if-goto L1.6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.divideRecursively$L1.6
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
@ARITHMETIC_ADD.21
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.21)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.6 arg2: None goto L2.6
@Math.divideRecursively$L2.6
0;JMP
//C_LABEL arg1: L1.6 arg2: None label L1.6
(Math.divideRecursively$L1.6)//C_PUSH arg1: local arg2: 0 push local 0
@0
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
@ARITHMETIC_ADD.22
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.22)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_LABEL arg1: L2.6 arg2: None label L2.6
(Math.divideRecursively$L2.6)//C_FUNCTION arg1: Math.sqrt arg2: 3 function Math.sqrt 3
(Math.sqrt)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 7 push constant 7
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
//C_LABEL arg1: L1.7 arg2: None label L1.7
(Math.sqrt$L1.7)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_NEG.7
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.7)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.1
D=A
@GT
0;JMP
(ARITHMETIC_GT.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.20
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.20)
//C_IF arg1: L2.7 arg2: None if-goto L2.7
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.sqrt$L2.7
D;JNE
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
@Math.0
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
@ARITHMETIC_ADD.24
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.24)
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
@ARITHMETIC_ADD.25
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.25)
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
@Math.multiply$ret.3
D=A
@CALL
0;JMP
(Math.multiply$ret.3)
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
@ARITHMETIC_GT.2
D=A
@GT
0;JMP
(ARITHMETIC_GT.2)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.21
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.21)
//C_IF arg1: L1.8 arg2: None if-goto L1.8
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.sqrt$L1.8
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
@ARITHMETIC_LT.5
D=A
@LT
0;JMP
(ARITHMETIC_LT.5)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.22
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.22)
//C_IF arg1: L1.9 arg2: None if-goto L1.9
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.sqrt$L1.9
D;JNE
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
@Math.0
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
@ARITHMETIC_ADD.26
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.26)
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
@ARITHMETIC_ADD.27
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.27)
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
//C_GOTO arg1: L2.9 arg2: None goto L2.9
@Math.sqrt$L2.9
0;JMP
//C_LABEL arg1: L1.9 arg2: None label L1.9
(Math.sqrt$L1.9)//C_LABEL arg1: L2.9 arg2: None label L2.9
(Math.sqrt$L2.9)//C_GOTO arg1: L2.8 arg2: None goto L2.8
@Math.sqrt$L2.8
0;JMP
//C_LABEL arg1: L1.8 arg2: None label L1.8
(Math.sqrt$L1.8)//C_LABEL arg1: L2.8 arg2: None label L2.8
(Math.sqrt$L2.8)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_GOTO arg1: L1.7 arg2: None goto L1.7
@Math.sqrt$L1.7
0;JMP
//C_LABEL arg1: L2.7 arg2: None label L2.7
(Math.sqrt$L2.7)//C_PUSH arg1: local arg2: 1 push local 1
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
@ARITHMETIC_GT.3
D=A
@GT
0;JMP
(ARITHMETIC_GT.3)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.23
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.23)
//C_IF arg1: L1.10 arg2: None if-goto L1.10
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.max$L1.10
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.10 arg2: None goto L2.10
@Math.max$L2.10
0;JMP
//C_LABEL arg1: L1.10 arg2: None label L1.10
(Math.max$L1.10)//C_LABEL arg1: L2.10 arg2: None label L2.10
(Math.max$L2.10)//C_PUSH arg1: argument arg2: 1 push argument 1
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
@ARITHMETIC_LT.6
D=A
@LT
0;JMP
(ARITHMETIC_LT.6)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.24
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.24)
//C_IF arg1: L1.11 arg2: None if-goto L1.11
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.min$L1.11
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.11 arg2: None goto L2.11
@Math.min$L2.11
0;JMP
//C_LABEL arg1: L1.11 arg2: None label L1.11
(Math.min$L1.11)//C_LABEL arg1: L2.11 arg2: None label L2.11
(Math.min$L2.11)//C_PUSH arg1: argument arg2: 1 push argument 1
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
@ARITHMETIC_LT.7
D=A
@LT
0;JMP
(ARITHMETIC_LT.7)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.25
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.25)
//C_IF arg1: L1.12 arg2: None if-goto L1.12
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.abs$L1.12
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.9
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.9)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.12 arg2: None goto L2.12
@Math.abs$L2.12
0;JMP
//C_LABEL arg1: L1.12 arg2: None label L1.12
(Math.abs$L1.12)//C_LABEL arg1: L2.12 arg2: None label L2.12
(Math.abs$L2.12)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_FUNCTION arg1: Math.mod arg2: 1 function Math.mod 1
(Math.mod)
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
@ARITHMETIC_SUB.3
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.3)
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Math.bit arg2: 2 function Math.bit 2
(Math.bit)
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
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.26
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.26)
//C_IF arg1: L1.13 arg2: None if-goto L1.13
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.bit$L1.13
D;JNE
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.29
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.29)
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
@ARITHMETIC_ADD.30
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.30)
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
//C_GOTO arg1: L2.13 arg2: None goto L2.13
@Math.bit$L2.13
0;JMP
//C_LABEL arg1: L1.13 arg2: None label L1.13
(Math.bit$L1.13)//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_LABEL arg1: L2.13 arg2: None label L2.13
(Math.bit$L2.13)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.0
D=A
@AND
0;JMP
(ARITHMETIC_AND.0)
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.11
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.11)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.27
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.27)
//C_IF arg1: L1.14 arg2: None if-goto L1.14
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.bit$L1.14
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.14 arg2: None goto L2.14
@Math.bit$L2.14
0;JMP
//C_LABEL arg1: L1.14 arg2: None label L1.14
(Math.bit$L1.14)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_LABEL arg1: L2.14 arg2: None label L2.14
(Math.bit$L2.14)//C_FUNCTION arg1: Math.getPowersOfTwo arg2: 0 function Math.getPowersOfTwo 0
(Math.getPowersOfTwo)
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
//C_PUSH arg1: constant arg2: 15 push constant 15
@15
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.28
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.28)
//C_IF arg1: L1.15 arg2: None if-goto L1.15
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Math.getPowersOfTwo$L1.15
D;JNE
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.32
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.32)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
D=M
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.33
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.33)
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
@ARITHMETIC_ADD.34
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.34)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.15 arg2: None goto L2.15
@Math.getPowersOfTwo$L2.15
0;JMP
//C_LABEL arg1: L1.15 arg2: None label L1.15
(Math.getPowersOfTwo$L1.15)//C_PUSH arg1: static arg2: 0 push static 0
@Math.0
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
//C_LABEL arg1: L2.15 arg2: None label L2.15
(Math.getPowersOfTwo$L2.15)//C_FUNCTION arg1: Memory.init arg2: 0 function Memory.init 0
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
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Memory.1
M=D
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
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
//C_PUSH arg1: constant arg2: 14336 push constant 14336
@14336
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
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Memory.2
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 3 pop static 3
@SP
AM=M-1
D=M
@Memory.3
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 4 pop static 4
@SP
AM=M-1
D=M
@Memory.4
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 5 pop static 5
@SP
AM=M-1
D=M
@Memory.5
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 6 pop static 6
@SP
AM=M-1
D=M
@Memory.6
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 7 pop static 7
@SP
AM=M-1
D=M
@Memory.7
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
//C_FUNCTION arg1: Memory.peek arg2: 0 function Memory.peek 0
(Memory.peek)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Memory.poke arg2: 0 function Memory.poke 0
(Memory.poke)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: static arg2: 0 push static 0
@Memory.0
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
@ARITHMETIC_ADD.38
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.38)
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
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.1
D=A
@CALL
0;JMP
(Memory.peek$ret.1)
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
//C_PUSH arg1: static arg2: 4 push static 4
@Memory.4
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
@ARITHMETIC_EQ.13
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.13)
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
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.1
D=A
@OR
0;JMP
(ARITHMETIC_OR.1)
//C_PUSH arg1: static arg2: 4 push static 4
@Memory.4
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
@ARITHMETIC_ADD.39
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.39)
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.8
D=A
@LT
0;JMP
(ARITHMETIC_LT.8)
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
@ARITHMETIC_ADD.40
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.40)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.4
D=A
@GT
0;JMP
(ARITHMETIC_GT.4)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.1
D=A
@AND
0;JMP
(ARITHMETIC_AND.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.29
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.29)
//C_IF arg1: L1.1 arg2: None if-goto L1.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$L1.1
D;JNE
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.2
D=A
@CALL
0;JMP
(Memory.peek$ret.2)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.41
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.41)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.42
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.42)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.4
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.4)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: static arg2: 3 pop static 3
@SP
AM=M-1
D=M
@Memory.3
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.3
D=A
@CALL
0;JMP
(Memory.peek$ret.3)
//C_POP arg1: static arg2: 4 pop static 4
@SP
AM=M-1
D=M
@Memory.4
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 5 pop static 5
@SP
AM=M-1
D=M
@Memory.5
M=D
//C_GOTO arg1: L2.1 arg2: None goto L2.1
@Memory.alloc$L2.1
0;JMP
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Memory.alloc$L1.1)//C_LABEL arg1: L2.1 arg2: None label L2.1
(Memory.alloc$L2.1)//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
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
@ARITHMETIC_ADD.44
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.44)
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.4
D=A
@CALL
0;JMP
(Memory.peek$ret.4)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.14
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.14)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.30
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.30)
//C_IF arg1: L1.2 arg2: None if-goto L1.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$L1.2
D;JNE
//C_PUSH arg1: static arg2: 3 push static 3
@Memory.3
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
//C_PUSH arg1: static arg2: 3 push static 3
@Memory.3
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
@ARITHMETIC_EQ.15
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.15)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.31
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.31)
//C_IF arg1: L1.3 arg2: None if-goto L1.3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.alloc$L1.3
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_GOTO arg1: L2.3 arg2: None goto L2.3
@Memory.alloc$L2.3
0;JMP
//C_LABEL arg1: L1.3 arg2: None label L1.3
(Memory.alloc$L1.3)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_SUB.5
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.5)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.45
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.45)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.0
D=A
@CALL
0;JMP
(Memory.poke$ret.0)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: static arg2: 5 push static 5
@Memory.5
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 4 push static 4
@Memory.4
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.6
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.6)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.1
D=A
@CALL
0;JMP
(Memory.poke$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: L2.3 arg2: None label L2.3
(Memory.alloc$L2.3)//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Memory.2
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 3 pop static 3
@SP
AM=M-1
D=M
@Memory.3
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 4 pop static 4
@SP
AM=M-1
D=M
@Memory.4
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.2 arg2: None goto L2.2
@Memory.alloc$L2.2
0;JMP
//C_LABEL arg1: L1.2 arg2: None label L1.2
(Memory.alloc$L1.2)//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
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
@ARITHMETIC_ADD.47
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.47)
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.5
D=A
@CALL
0;JMP
(Memory.peek$ret.5)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Memory.2
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_LABEL arg1: L2.2 arg2: None label L2.2
(Memory.alloc$L2.2)//C_FUNCTION arg1: Memory.deAlloc arg2: 1 function Memory.deAlloc 1
(Memory.deAlloc)
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
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
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
@ARITHMETIC_ADD.48
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.48)
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.6
D=A
@CALL
0;JMP
(Memory.peek$ret.6)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.7
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.7)
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.7
D=A
@CALL
0;JMP
(Memory.peek$ret.7)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.49
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.49)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.16
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.16)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.32
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.32)
//C_IF arg1: L1.4 arg2: None if-goto L1.4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$L1.4
D;JNE
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.8
D=A
@CALL
0;JMP
(Memory.peek$ret.8)
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
@ARITHMETIC_SUB.8
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.8)
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.9
D=A
@CALL
0;JMP
(Memory.peek$ret.9)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.50
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.50)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.2
D=A
@CALL
0;JMP
(Memory.poke$ret.2)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.3
D=A
@CALL
0;JMP
(Memory.poke$ret.3)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.4
D=A
@CALL
0;JMP
(Memory.poke$ret.4)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_POP arg1: static arg2: 7 pop static 7
@SP
AM=M-1
D=M
@Memory.7
M=D
//C_GOTO arg1: L2.4 arg2: None goto L2.4
@Memory.deAlloc$L2.4
0;JMP
//C_LABEL arg1: L1.4 arg2: None label L1.4
(Memory.deAlloc$L1.4)//C_LABEL arg1: L2.4 arg2: None label L2.4
(Memory.deAlloc$L2.4)//C_PUSH arg1: argument arg2: 0 push argument 0
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
@ARITHMETIC_SUB.11
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.11)
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.10
D=A
@CALL
0;JMP
(Memory.peek$ret.10)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.51
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.51)
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.33
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.33)
//C_IF arg1: L1.5 arg2: None if-goto L1.5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$L1.5
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
@ARITHMETIC_SUB.13
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.13)
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.11
D=A
@CALL
0;JMP
(Memory.peek$ret.11)
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.12
D=A
@CALL
0;JMP
(Memory.peek$ret.12)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.52
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.52)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.5
D=A
@CALL
0;JMP
(Memory.poke$ret.5)
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
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.6
D=A
@CALL
0;JMP
(Memory.poke$ret.6)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: static arg2: 6 push static 6
@Memory.6
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
@ARITHMETIC_ADD.53
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.53)
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
@ARITHMETIC_SUB.14
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.14)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.7
D=A
@CALL
0;JMP
(Memory.poke$ret.7)
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Memory.2
M=D
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.12
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.12)
//C_POP arg1: static arg2: 7 pop static 7
@SP
AM=M-1
D=M
@Memory.7
M=D
//C_GOTO arg1: L2.5 arg2: None goto L2.5
@Memory.deAlloc$L2.5
0;JMP
//C_LABEL arg1: L1.5 arg2: None label L1.5
(Memory.deAlloc$L1.5)//C_LABEL arg1: L2.5 arg2: None label L2.5
(Memory.deAlloc$L2.5)//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
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
@Memory.peek$ret.13
D=A
@CALL
0;JMP
(Memory.peek$ret.13)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.54
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.54)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.18
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.18)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.34
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.34)
//C_IF arg1: L1.6 arg2: None if-goto L1.6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$L1.6
D;JNE
//C_PUSH arg1: static arg2: 6 push static 6
@Memory.6
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
@ARITHMETIC_ADD.55
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.55)
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
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.8
D=A
@CALL
0;JMP
(Memory.poke$ret.8)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
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
@Memory.peek$ret.14
D=A
@CALL
0;JMP
(Memory.peek$ret.14)
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
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
@Memory.peek$ret.15
D=A
@CALL
0;JMP
(Memory.peek$ret.15)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.56
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.56)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.9
D=A
@CALL
0;JMP
(Memory.poke$ret.9)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: L2.6 arg2: None goto L2.6
@Memory.deAlloc$L2.6
0;JMP
//C_LABEL arg1: L1.6 arg2: None label L1.6
(Memory.deAlloc$L1.6)//C_LABEL arg1: L2.6 arg2: None label L2.6
(Memory.deAlloc$L2.6)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_EQ.19
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.19)
//C_PUSH arg1: static arg2: 7 push static 7
@Memory.7
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
@ARITHMETIC_AND.2
D=A
@AND
0;JMP
(ARITHMETIC_AND.2)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.36
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.36)
//C_IF arg1: L1.7 arg2: None if-goto L1.7
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$L1.7
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.10
D=A
@CALL
0;JMP
(Memory.poke$ret.10)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
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
@ARITHMETIC_ADD.57
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.57)
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
@ARITHMETIC_SUB.16
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.16)
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.11
D=A
@CALL
0;JMP
(Memory.poke$ret.11)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.13
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.13)
//C_POP arg1: static arg2: 7 pop static 7
@SP
AM=M-1
D=M
@Memory.7
M=D
//C_GOTO arg1: L2.7 arg2: None goto L2.7
@Memory.deAlloc$L2.7
0;JMP
//C_LABEL arg1: L1.7 arg2: None label L1.7
(Memory.deAlloc$L1.7)//C_LABEL arg1: L2.7 arg2: None label L2.7
(Memory.deAlloc$L2.7)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_EQ.20
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.20)
//C_PUSH arg1: static arg2: 7 push static 7
@Memory.7
D=M
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.3
D=A
@AND
0;JMP
(ARITHMETIC_AND.3)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.37
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.37)
//C_IF arg1: L1.8 arg2: None if-goto L1.8
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Memory.deAlloc$L1.8
D;JNE
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Memory.2
M=D
//C_PUSH arg1: static arg2: 1 push static 1
@Memory.1
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 6 pop static 6
@SP
AM=M-1
D=M
@Memory.6
M=D
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 7 pop static 7
@SP
AM=M-1
D=M
@Memory.7
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
//C_GOTO arg1: L2.8 arg2: None goto L2.8
@Memory.deAlloc$L2.8
0;JMP
//C_LABEL arg1: L1.8 arg2: None label L1.8
(Memory.deAlloc$L1.8)//C_LABEL arg1: L2.8 arg2: None label L2.8
(Memory.deAlloc$L2.8)//C_PUSH arg1: static arg2: 2 push static 2
@Memory.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_POP arg1: static arg2: 6 pop static 6
@SP
AM=M-1
D=M
@Memory.6
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Memory.2
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
//C_FUNCTION arg1: Output.init arg2: 0 function Output.init 0
(Output.init)
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
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
//C_FUNCTION arg1: Output.initMap arg2: 1 function Output.initMap 1
(Output.initMap)
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
@Array.new$ret.1
D=A
@CALL
0;JMP
(Array.new$ret.1)
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
//C_PUSH arg1: constant arg2: 28 push constant 28
@28
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
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
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
//C_PUSH arg1: constant arg2: 127 push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
D=A
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 99 push constant 99
@99
D=A
@SP
M=M+1
A=M-1
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
@Array.new$ret.2
D=A
@CALL
0;JMP
(Array.new$ret.2)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
@ARITHMETIC_ADD.58
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.58)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.59
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.59)
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
@ARITHMETIC_ADD.60
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.60)
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
@ARITHMETIC_ADD.61
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.61)
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
//C_PUSH arg1: constant arg2: 3 push constant 3
@3
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
//C_PUSH arg1: constant arg2: 4 push constant 4
@4
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
//C_PUSH arg1: constant arg2: 5 push constant 5
@5
D=A
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
//C_PUSH arg1: constant arg2: 6 push constant 6
@6
D=A
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
//C_PUSH arg1: constant arg2: 7 push constant 7
@7
D=A
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
//C_PUSH arg1: constant arg2: 8 push constant 8
@8
D=A
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
//C_PUSH arg1: constant arg2: 9 push constant 9
@9
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
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
//C_FUNCTION arg1: Output.getMap arg2: 0 function Output.getMap 0
(Output.getMap)
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
//C_PUSH arg1: constant arg2: 32 push constant 32
@32
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
@ARITHMETIC_GT.5
D=A
@GT
0;JMP
(ARITHMETIC_GT.5)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.2
D=A
@OR
0;JMP
(ARITHMETIC_OR.2)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.38
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.38)
//C_IF arg1: L1.1 arg2: None if-goto L1.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.getMap$L1.1
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_GOTO arg1: L2.1 arg2: None goto L2.1
@Output.getMap$L2.1
0;JMP
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Output.getMap$L1.1)//C_LABEL arg1: L2.1 arg2: None label L2.1
(Output.getMap$L2.1)//C_PUSH arg1: static arg2: 0 push static 0
@Output.0
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
@ARITHMETIC_ADD.70
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.70)
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
@ARITHMETIC_LT.10
D=A
@LT
0;JMP
(ARITHMETIC_LT.10)
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
@ARITHMETIC_GT.6
D=A
@GT
0;JMP
(ARITHMETIC_GT.6)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.3
D=A
@OR
0;JMP
(ARITHMETIC_OR.3)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.39
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.39)
//C_IF arg1: L1.2 arg2: None if-goto L1.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.moveCursor$L1.2
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_GOTO arg1: L2.2 arg2: None goto L2.2
@Output.moveCursor$L2.2
0;JMP
//C_LABEL arg1: L1.2 arg2: None label L1.2
(Output.moveCursor$L1.2)//C_LABEL arg1: L2.2 arg2: None label L2.2
(Output.moveCursor$L2.2)//C_PUSH arg1: argument arg2: 1 push argument 1
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
@ARITHMETIC_LT.11
D=A
@LT
0;JMP
(ARITHMETIC_LT.11)
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
@ARITHMETIC_GT.7
D=A
@GT
0;JMP
(ARITHMETIC_GT.7)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.4
D=A
@OR
0;JMP
(ARITHMETIC_OR.4)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.40
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.40)
//C_IF arg1: L1.3 arg2: None if-goto L1.3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.moveCursor$L1.3
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_GOTO arg1: L2.3 arg2: None goto L2.3
@Output.moveCursor$L2.3
0;JMP
//C_LABEL arg1: L1.3 arg2: None label L1.3
(Output.moveCursor$L1.3)//C_LABEL arg1: L2.3 arg2: None label L2.3
(Output.moveCursor$L2.3)//C_PUSH arg1: argument arg2: 0 push argument 0
@0
D=A
@ARG
A=M+D
D=M
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
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
//C_FUNCTION arg1: Output.printChar arg2: 6 function Output.printChar 6
(Output.printChar)
//@6
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
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
@ARITHMETIC_GT.8
D=A
@GT
0;JMP
(ARITHMETIC_GT.8)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.41
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.41)
//C_IF arg1: L1.4 arg2: None if-goto L1.4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$L1.4
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_GOTO arg1: L2.4 arg2: None goto L2.4
@Output.printChar$L2.4
0;JMP
//C_LABEL arg1: L1.4 arg2: None label L1.4
(Output.printChar$L1.4)//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D
//C_PUSH arg1: constant arg2: 64 push constant 64
@64
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.9
D=A
@GT
0;JMP
(ARITHMETIC_GT.9)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.42
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.42)
//C_IF arg1: L1.5 arg2: None if-goto L1.5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$L1.5
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.21
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.21)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.43
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.43)
//C_IF arg1: L1.6 arg2: None if-goto L1.6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$L1.6
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_GOTO arg1: L2.6 arg2: None goto L2.6
@Output.printChar$L2.6
0;JMP
//C_LABEL arg1: L1.6 arg2: None label L1.6
(Output.printChar$L1.6)//C_PUSH arg1: static arg2: 1 push static 1
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
@ARITHMETIC_ADD.71
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.71)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_LABEL arg1: L2.6 arg2: None label L2.6
(Output.printChar$L2.6)//C_GOTO arg1: L2.5 arg2: None goto L2.5
@Output.printChar$L2.5
0;JMP
//C_LABEL arg1: L1.5 arg2: None label L1.5
(Output.printChar$L1.5)//C_LABEL arg1: L2.5 arg2: None label L2.5
(Output.printChar$L2.5)//C_LABEL arg1: L2.4 arg2: None label L2.4
(Output.printChar$L2.4)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
D=M
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
//C_PUSH arg1: static arg2: 1 push static 1
@Output.1
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
//C_LABEL arg1: L1.7 arg2: None label L1.7
(Output.printChar$L1.7)//C_PUSH arg1: local arg2: 2 push local 2
@2
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
@ARITHMETIC_LT.12
D=A
@LT
0;JMP
(ARITHMETIC_LT.12)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.44
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.44)
//C_IF arg1: L2.7 arg2: None if-goto L2.7
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$L2.7
D;JNE
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
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
@ARITHMETIC_ADD.72
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.72)
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
@Math.multiply$ret.7
D=A
@CALL
0;JMP
(Math.multiply$ret.7)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.73
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.73)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.74
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.74)
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
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.16
D=A
@CALL
0;JMP
(Memory.peek$ret.16)
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
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
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
//C_CALL arg1: Math.mod arg2: 2 call Math.mod 2
@2
D=A
@14
M=D
@Math.mod
D=A
@15
M=D
@Math.mod$ret.0
D=A
@CALL
0;JMP
(Math.mod$ret.0)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.45
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.45)
//C_IF arg1: L1.8 arg2: None if-goto L1.8
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$L1.8
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
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.14
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.14)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.4
D=A
@AND
0;JMP
(ARITHMETIC_AND.4)
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
@ARITHMETIC_ADD.75
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.75)
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
@ARITHMETIC_ADD.76
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.76)
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
//C_GOTO arg1: L2.8 arg2: None goto L2.8
@Output.printChar$L2.8
0;JMP
//C_LABEL arg1: L1.8 arg2: None label L1.8
(Output.printChar$L1.8)//C_PUSH arg1: local arg2: 3 push local 3
@3
D=A
@LCL
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
@ARITHMETIC_AND.5
D=A
@AND
0;JMP
(ARITHMETIC_AND.5)
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
//C_PUSH arg1: constant arg2: 256 push constant 256
@256
D=A
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.78
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.78)
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
//C_LABEL arg1: L2.8 arg2: None label L2.8
(Output.printChar$L2.8)//C_PUSH arg1: local arg2: 4 push local 4
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
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.12
D=A
@CALL
0;JMP
(Memory.poke$ret.12)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_GOTO arg1: L1.7 arg2: None goto L1.7
@Output.printChar$L1.7
0;JMP
//C_LABEL arg1: L2.7 arg2: None label L2.7
(Output.printChar$L2.7)//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
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
@ARITHMETIC_ADD.80
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.80)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
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
@ARITHMETIC_GT.10
D=A
@GT
0;JMP
(ARITHMETIC_GT.10)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.46
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.46)
//C_IF arg1: L1.9 arg2: None if-goto L1.9
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printChar$L1.9
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
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
@ARITHMETIC_ADD.81
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.81)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_GOTO arg1: L2.9 arg2: None goto L2.9
@Output.printChar$L2.9
0;JMP
//C_LABEL arg1: L1.9 arg2: None label L1.9
(Output.printChar$L1.9)//C_LABEL arg1: L2.9 arg2: None label L2.9
(Output.printChar$L2.9)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.printString arg2: 1 function Output.printString 1
(Output.printString)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_LABEL arg1: L1.10 arg2: None label L1.10
(Output.printString$L1.10)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.13
D=A
@LT
0;JMP
(ARITHMETIC_LT.13)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.47
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.47)
//C_IF arg1: L2.10 arg2: None if-goto L2.10
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.printString$L2.10
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
@ARITHMETIC_ADD.82
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.82)
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
//C_GOTO arg1: L1.10 arg2: None goto L1.10
@Output.printString$L1.10
0;JMP
//C_LABEL arg1: L2.10 arg2: None label L2.10
(Output.printString$L2.10)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Output.printInt arg2: 1 function Output.printInt 1
(Output.printInt)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
@String.new$ret.5
D=A
@CALL
0;JMP
(String.new$ret.5)
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
//C_CALL arg1: Output.printString arg2: 1 call Output.printString 1
@1
D=A
@14
M=D
@Output.printString
D=A
@15
M=D
@Output.printString$ret.5
D=A
@CALL
0;JMP
(Output.printString$ret.5)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: constant arg2: 22 push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.11
D=A
@GT
0;JMP
(ARITHMETIC_GT.11)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.48
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.48)
//C_IF arg1: L1.11 arg2: None if-goto L1.11
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.println$L1.11
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_GOTO arg1: L2.11 arg2: None goto L2.11
@Output.println$L2.11
0;JMP
//C_LABEL arg1: L1.11 arg2: None label L1.11
(Output.println$L1.11)//C_PUSH arg1: static arg2: 1 push static 1
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
@ARITHMETIC_ADD.84
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.84)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_LABEL arg1: L2.11 arg2: None label L2.11
(Output.println$L2.11)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.49
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.49)
//C_IF arg1: L1.12 arg2: None if-goto L1.12
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.backSpace$L1.12
D;JNE
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
@ARITHMETIC_SUB.18
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.18)
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.15
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.15)
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.12
D=A
@GT
0;JMP
(ARITHMETIC_GT.12)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.50
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.50)
//C_IF arg1: L1.13 arg2: None if-goto L1.13
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Output.backSpace$L1.13
D;JNE
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
@ARITHMETIC_SUB.19
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.19)
//C_POP arg1: static arg2: 1 pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
//C_GOTO arg1: L2.13 arg2: None goto L2.13
@Output.backSpace$L2.13
0;JMP
//C_LABEL arg1: L1.13 arg2: None label L1.13
(Output.backSpace$L1.13)//C_LABEL arg1: L2.13 arg2: None label L2.13
(Output.backSpace$L2.13)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_GOTO arg1: L2.12 arg2: None goto L2.12
@Output.backSpace$L2.12
0;JMP
//C_LABEL arg1: L1.12 arg2: None label L1.12
(Output.backSpace$L1.12)//C_PUSH arg1: static arg2: 2 push static 2
@Output.2
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
@ARITHMETIC_SUB.20
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.20)
//C_POP arg1: static arg2: 2 pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
//C_LABEL arg1: L2.12 arg2: None label L2.12
(Output.backSpace$L2.12)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.init arg2: 0 function Screen.init 0
(Screen.init)
//@0
//D=A
//@SP
//M=M+D
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.16
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.16)
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.clearScreen arg2: 2 function Screen.clearScreen 2
(Screen.clearScreen)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.setColor arg2: 1 call Screen.setColor 1
@1
D=A
@14
M=D
@Screen.setColor
D=A
@15
M=D
@Screen.setColor$ret.0
D=A
@CALL
0;JMP
(Screen.setColor$ret.0)
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
//C_LABEL arg1: L1.1 arg2: None label L1.1
(Screen.clearScreen$L1.1)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
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
@ARITHMETIC_LT.15
D=A
@LT
0;JMP
(ARITHMETIC_LT.15)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.51
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.51)
//C_IF arg1: L2.1 arg2: None if-goto L2.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.clearScreen$L2.1
D;JNE
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_CALL arg1: Screen.drawHorizontalLine arg2: 3 call Screen.drawHorizontalLine 3
@3
D=A
@14
M=D
@Screen.drawHorizontalLine
D=A
@15
M=D
@Screen.drawHorizontalLine$ret.0
D=A
@CALL
0;JMP
(Screen.drawHorizontalLine$ret.0)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_GOTO arg1: L1.1 arg2: None goto L1.1
@Screen.clearScreen$L1.1
0;JMP
//C_LABEL arg1: L2.1 arg2: None label L2.1
(Screen.clearScreen$L2.1)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Screen.setColor arg2: 1 call Screen.setColor 1
@1
D=A
@14
M=D
@Screen.setColor
D=A
@15
M=D
@Screen.setColor$ret.1
D=A
@CALL
0;JMP
(Screen.setColor$ret.1)
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
@ARITHMETIC_LT.16
D=A
@LT
0;JMP
(ARITHMETIC_LT.16)
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
@ARITHMETIC_GT.13
D=A
@GT
0;JMP
(ARITHMETIC_GT.13)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.5
D=A
@OR
0;JMP
(ARITHMETIC_OR.5)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.52
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.52)
//C_IF arg1: L1.2 arg2: None if-goto L1.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawPixel$L1.2
D;JNE
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
//C_GOTO arg1: L2.2 arg2: None goto L2.2
@Screen.drawPixel$L2.2
0;JMP
//C_LABEL arg1: L1.2 arg2: None label L1.2
(Screen.drawPixel$L1.2)//C_LABEL arg1: L2.2 arg2: None label L2.2
(Screen.drawPixel$L2.2)//C_PUSH arg1: argument arg2: 0 push argument 0
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
@ARITHMETIC_LT.17
D=A
@LT
0;JMP
(ARITHMETIC_LT.17)
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
@ARITHMETIC_GT.14
D=A
@GT
0;JMP
(ARITHMETIC_GT.14)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.6
D=A
@OR
0;JMP
(ARITHMETIC_OR.6)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.53
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.53)
//C_IF arg1: L1.3 arg2: None if-goto L1.3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawPixel$L1.3
D;JNE
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
//C_GOTO arg1: L2.3 arg2: None goto L2.3
@Screen.drawPixel$L2.3
0;JMP
//C_LABEL arg1: L1.3 arg2: None label L1.3
(Screen.drawPixel$L1.3)//C_LABEL arg1: L2.3 arg2: None label L2.3
(Screen.drawPixel$L2.3)//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
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
@Math.multiply$ret.9
D=A
@CALL
0;JMP
(Math.multiply$ret.9)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.86
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.86)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.87
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.87)
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
//C_CALL arg1: Memory.peek arg2: 1 call Memory.peek 1
@1
D=A
@14
M=D
@Memory.peek
D=A
@15
M=D
@Memory.peek$ret.17
D=A
@CALL
0;JMP
(Memory.peek$ret.17)
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
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.mod arg2: 2 call Math.mod 2
@2
D=A
@14
M=D
@Math.mod
D=A
@15
M=D
@Math.mod$ret.1
D=A
@CALL
0;JMP
(Math.mod$ret.1)
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
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
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
@ARITHMETIC_NEG.17
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.17)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.23
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.23)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.54
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.54)
//C_IF arg1: L1.4 arg2: None if-goto L1.4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawPixel$L1.4
D;JNE
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
//C_CALL arg1: Math.getPowersOfTwo arg2: 1 call Math.getPowersOfTwo 1
@1
D=A
@14
M=D
@Math.getPowersOfTwo
D=A
@15
M=D
@Math.getPowersOfTwo$ret.0
D=A
@CALL
0;JMP
(Math.getPowersOfTwo$ret.0)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.7
D=A
@OR
0;JMP
(ARITHMETIC_OR.7)
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
//C_GOTO arg1: L2.4 arg2: None goto L2.4
@Screen.drawPixel$L2.4
0;JMP
//C_LABEL arg1: L1.4 arg2: None label L1.4
(Screen.drawPixel$L1.4)//C_PUSH arg1: local arg2: 1 push local 1
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
//C_CALL arg1: Math.getPowersOfTwo arg2: 1 call Math.getPowersOfTwo 1
@1
D=A
@14
M=D
@Math.getPowersOfTwo
D=A
@15
M=D
@Math.getPowersOfTwo$ret.1
D=A
@CALL
0;JMP
(Math.getPowersOfTwo$ret.1)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.55
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.55)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.6
D=A
@AND
0;JMP
(ARITHMETIC_AND.6)
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
//C_LABEL arg1: L2.4 arg2: None label L2.4
(Screen.drawPixel$L2.4)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.13
D=A
@CALL
0;JMP
(Memory.poke$ret.13)
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
//C_FUNCTION arg1: Screen.drawLine arg2: 7 function Screen.drawLine 7
(Screen.drawLine)
//@7
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_SUB.21
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.21)
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.22
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.22)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
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
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.7
D=A
@AND
0;JMP
(ARITHMETIC_AND.7)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.56
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.56)
//C_IF arg1: L1.5 arg2: None if-goto L1.5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.5
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
//C_GOTO arg1: L2.5 arg2: None goto L2.5
@Screen.drawLine$L2.5
0;JMP
//C_LABEL arg1: L1.5 arg2: None label L1.5
(Screen.drawLine$L1.5)//C_LABEL arg1: L2.5 arg2: None label L2.5
(Screen.drawLine$L2.5)//C_PUSH arg1: local arg2: 4 push local 4
@4
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
@ARITHMETIC_LT.18
D=A
@LT
0;JMP
(ARITHMETIC_LT.18)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.57
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.57)
//C_IF arg1: L1.6 arg2: None if-goto L1.6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.6
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.18
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.18)
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
//C_GOTO arg1: L2.6 arg2: None goto L2.6
@Screen.drawLine$L2.6
0;JMP
//C_LABEL arg1: L1.6 arg2: None label L1.6
(Screen.drawLine$L1.6)//C_LABEL arg1: L2.6 arg2: None label L2.6
(Screen.drawLine$L2.6)//C_PUSH arg1: local arg2: 3 push local 3
@3
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
@ARITHMETIC_LT.19
D=A
@LT
0;JMP
(ARITHMETIC_LT.19)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.58
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.58)
//C_IF arg1: L1.7 arg2: None if-goto L1.7
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.7
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.19
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.19)
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
//C_GOTO arg1: L2.7 arg2: None goto L2.7
@Screen.drawLine$L2.7
0;JMP
//C_LABEL arg1: L1.7 arg2: None label L1.7
(Screen.drawLine$L1.7)//C_LABEL arg1: L2.7 arg2: None label L2.7
(Screen.drawLine$L2.7)//C_PUSH arg1: local arg2: 3 push local 3
@3
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
@ARITHMETIC_EQ.26
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.26)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.59
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.59)
//C_IF arg1: L1.8 arg2: None if-goto L1.8
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.8
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
@ARITHMETIC_LT.20
D=A
@LT
0;JMP
(ARITHMETIC_LT.20)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.60
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.60)
//C_IF arg1: L1.9 arg2: None if-goto L1.9
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.9
D;JNE
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
//C_CALL arg1: Screen.drawHorizontalLine arg2: 3 call Screen.drawHorizontalLine 3
@3
D=A
@14
M=D
@Screen.drawHorizontalLine
D=A
@15
M=D
@Screen.drawHorizontalLine$ret.1
D=A
@CALL
0;JMP
(Screen.drawHorizontalLine$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: L2.9 arg2: None goto L2.9
@Screen.drawLine$L2.9
0;JMP
//C_LABEL arg1: L1.9 arg2: None label L1.9
(Screen.drawLine$L1.9)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_CALL arg1: Screen.drawHorizontalLine arg2: 3 call Screen.drawHorizontalLine 3
@3
D=A
@14
M=D
@Screen.drawHorizontalLine
D=A
@15
M=D
@Screen.drawHorizontalLine$ret.2
D=A
@CALL
0;JMP
(Screen.drawHorizontalLine$ret.2)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: L2.9 arg2: None label L2.9
(Screen.drawLine$L2.9)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.8 arg2: None goto L2.8
@Screen.drawLine$L2.8
0;JMP
//C_LABEL arg1: L1.8 arg2: None label L1.8
(Screen.drawLine$L1.8)//C_LABEL arg1: L2.8 arg2: None label L2.8
(Screen.drawLine$L2.8)//C_LABEL arg1: L1.10 arg2: None label L1.10
(Screen.drawLine$L1.10)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.21
D=A
@LT
0;JMP
(ARITHMETIC_LT.21)
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
@ARITHMETIC_ADD.89
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.89)
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.22
D=A
@LT
0;JMP
(ARITHMETIC_LT.22)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.8
D=A
@AND
0;JMP
(ARITHMETIC_AND.8)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.61
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.61)
//C_IF arg1: L2.10 arg2: None if-goto L2.10
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L2.10
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.90
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.90)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.91
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.91)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.92
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.92)
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.27
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.27)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.93
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.93)
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
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.28
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.28)
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.9
D=A
@AND
0;JMP
(ARITHMETIC_AND.9)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.62
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.62)
//C_IF arg1: L1.11 arg2: None if-goto L1.11
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.11
D;JNE
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
//C_GOTO arg1: L2.11 arg2: None goto L2.11
@Screen.drawLine$L2.11
0;JMP
//C_LABEL arg1: L1.11 arg2: None label L1.11
(Screen.drawLine$L1.11)//C_LABEL arg1: L2.11 arg2: None label L2.11
(Screen.drawLine$L2.11)//C_PUSH arg1: local arg2: 2 push local 2
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
@ARITHMETIC_LT.23
D=A
@LT
0;JMP
(ARITHMETIC_LT.23)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.63
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.63)
//C_IF arg1: L1.12 arg2: None if-goto L1.12
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawLine$L1.12
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.94
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.94)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.95
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.95)
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
//C_GOTO arg1: L2.12 arg2: None goto L2.12
@Screen.drawLine$L2.12
0;JMP
//C_LABEL arg1: L1.12 arg2: None label L1.12
(Screen.drawLine$L1.12)//C_PUSH arg1: local arg2: 1 push local 1
@1
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
@ARITHMETIC_ADD.96
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.96)
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
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.23
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.23)
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
//C_LABEL arg1: L2.12 arg2: None label L2.12
(Screen.drawLine$L2.12)//C_GOTO arg1: L1.10 arg2: None goto L1.10
@Screen.drawLine$L1.10
0;JMP
//C_LABEL arg1: L2.10 arg2: None label L2.10
(Screen.drawLine$L2.10)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawHorizontalLine arg2: 4 function Screen.drawHorizontalLine 4
(Screen.drawHorizontalLine)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.20
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.20)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.21
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.21)
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
//C_PUSH arg1: constant arg2: 16384 push constant 16384
@16384
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
@Math.multiply$ret.10
D=A
@CALL
0;JMP
(Math.multiply$ret.10)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.97
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.97)
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
@ARITHMETIC_SUB.24
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.24)
//C_PUSH arg1: constant arg2: 16 push constant 16
@16
D=A
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
@ARITHMETIC_NOT.64
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.64)
//C_IF arg1: L1.13 arg2: None if-goto L1.13
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L1.13
D;JNE
//C_LABEL arg1: L1.14 arg2: None label L1.14
(Screen.drawHorizontalLine$L1.14)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.25
D=A
@LT
0;JMP
(ARITHMETIC_LT.25)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.65
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.65)
//C_IF arg1: L2.14 arg2: None if-goto L2.14
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L2.14
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@2
D=A
@14
M=D
@Screen.drawPixel
D=A
@15
M=D
@Screen.drawPixel$ret.2
D=A
@CALL
0;JMP
(Screen.drawPixel$ret.2)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_GOTO arg1: L1.14 arg2: None goto L1.14
@Screen.drawHorizontalLine$L1.14
0;JMP
//C_LABEL arg1: L2.14 arg2: None label L2.14
(Screen.drawHorizontalLine$L2.14)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.13 arg2: None goto L2.13
@Screen.drawHorizontalLine$L2.13
0;JMP
//C_LABEL arg1: L1.13 arg2: None label L1.13
(Screen.drawHorizontalLine$L1.13)//C_LABEL arg1: L2.13 arg2: None label L2.13
(Screen.drawHorizontalLine$L2.13)//C_LABEL arg1: L1.15 arg2: None label L1.15
(Screen.drawHorizontalLine$L1.15)//C_PUSH arg1: local arg2: 2 push local 2
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
@ARITHMETIC_LT.26
D=A
@LT
0;JMP
(ARITHMETIC_LT.26)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.66
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.66)
//C_IF arg1: L2.15 arg2: None if-goto L2.15
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L2.15
D;JNE
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
//C_CALL arg1: Math.mod arg2: 2 call Math.mod 2
@2
D=A
@14
M=D
@Math.mod
D=A
@15
M=D
@Math.mod$ret.2
D=A
@CALL
0;JMP
(Math.mod$ret.2)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.29
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.29)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.67
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.67)
//C_IF arg1: L1.16 arg2: None if-goto L1.16
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L1.16
D;JNE
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
//C_GOTO arg1: L2.16 arg2: None goto L2.16
@Screen.drawHorizontalLine$L2.16
0;JMP
//C_LABEL arg1: L1.16 arg2: None label L1.16
(Screen.drawHorizontalLine$L1.16)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@2
D=A
@14
M=D
@Screen.drawPixel
D=A
@15
M=D
@Screen.drawPixel$ret.3
D=A
@CALL
0;JMP
(Screen.drawPixel$ret.3)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: L2.16 arg2: None label L2.16
(Screen.drawHorizontalLine$L2.16)//C_PUSH arg1: local arg2: 1 push local 1
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
@ARITHMETIC_ADD.100
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.100)
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
//C_GOTO arg1: L1.15 arg2: None goto L1.15
@Screen.drawHorizontalLine$L1.15
0;JMP
//C_LABEL arg1: L2.15 arg2: None label L2.15
(Screen.drawHorizontalLine$L2.15)//C_PUSH arg1: argument arg2: 1 push argument 1
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
//C_LABEL arg1: L1.17 arg2: None label L1.17
(Screen.drawHorizontalLine$L1.17)//C_PUSH arg1: local arg2: 3 push local 3
@3
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
@ARITHMETIC_LT.27
D=A
@LT
0;JMP
(ARITHMETIC_LT.27)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.68
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.68)
//C_IF arg1: L2.17 arg2: None if-goto L2.17
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L2.17
D;JNE
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
//C_CALL arg1: Math.mod arg2: 2 call Math.mod 2
@2
D=A
@14
M=D
@Math.mod
D=A
@15
M=D
@Math.mod$ret.3
D=A
@CALL
0;JMP
(Math.mod$ret.3)
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.30
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.30)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.69
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.69)
//C_IF arg1: L1.18 arg2: None if-goto L1.18
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L1.18
D;JNE
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@2
D=A
@14
M=D
@Screen.drawPixel
D=A
@15
M=D
@Screen.drawPixel$ret.4
D=A
@CALL
0;JMP
(Screen.drawPixel$ret.4)
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
//C_GOTO arg1: L2.18 arg2: None goto L2.18
@Screen.drawHorizontalLine$L2.18
0;JMP
//C_LABEL arg1: L1.18 arg2: None label L1.18
(Screen.drawHorizontalLine$L1.18)//C_PUSH arg1: local arg2: 1 push local 1
@1
D=A
@LCL
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
//C_CALL arg1: Screen.drawPixel arg2: 2 call Screen.drawPixel 2
@2
D=A
@14
M=D
@Screen.drawPixel
D=A
@15
M=D
@Screen.drawPixel$ret.5
D=A
@CALL
0;JMP
(Screen.drawPixel$ret.5)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_LABEL arg1: L2.18 arg2: None label L2.18
(Screen.drawHorizontalLine$L2.18)//C_PUSH arg1: local arg2: 1 push local 1
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
@ARITHMETIC_SUB.25
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.25)
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
//C_GOTO arg1: L1.17 arg2: None goto L1.17
@Screen.drawHorizontalLine$L1.17
0;JMP
//C_LABEL arg1: L2.17 arg2: None label L2.17
(Screen.drawHorizontalLine$L2.17)//C_PUSH arg1: local arg2: 2 push local 2
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
//C_LABEL arg1: L1.19 arg2: None label L1.19
(Screen.drawHorizontalLine$L1.19)//C_PUSH arg1: local arg2: 1 push local 1
@1
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
@ARITHMETIC_LT.28
D=A
@LT
0;JMP
(ARITHMETIC_LT.28)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.70
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.70)
//C_IF arg1: L2.19 arg2: None if-goto L2.19
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawHorizontalLine$L2.19
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
@ARITHMETIC_ADD.101
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.101)
//C_PUSH arg1: static arg2: 0 push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Memory.poke arg2: 2 call Memory.poke 2
@2
D=A
@14
M=D
@Memory.poke
D=A
@15
M=D
@Memory.poke$ret.14
D=A
@CALL
0;JMP
(Memory.poke$ret.14)
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
//C_GOTO arg1: L1.19 arg2: None goto L1.19
@Screen.drawHorizontalLine$L1.19
0;JMP
//C_LABEL arg1: L2.19 arg2: None label L2.19
(Screen.drawHorizontalLine$L2.19)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: Screen.drawRectangle arg2: 2 function Screen.drawRectangle 2
(Screen.drawRectangle)
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
@ARITHMETIC_LT.29
D=A
@LT
0;JMP
(ARITHMETIC_LT.29)
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
@ARITHMETIC_GT.15
D=A
@GT
0;JMP
(ARITHMETIC_GT.15)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.8
D=A
@OR
0;JMP
(ARITHMETIC_OR.8)
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
@ARITHMETIC_OR.9
D=A
@OR
0;JMP
(ARITHMETIC_OR.9)
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
@ARITHMETIC_GT.16
D=A
@GT
0;JMP
(ARITHMETIC_GT.16)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.10
D=A
@OR
0;JMP
(ARITHMETIC_OR.10)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.71
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.71)
//C_IF arg1: L1.20 arg2: None if-goto L1.20
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawRectangle$L1.20
D;JNE
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
//C_GOTO arg1: L2.20 arg2: None goto L2.20
@Screen.drawRectangle$L2.20
0;JMP
//C_LABEL arg1: L1.20 arg2: None label L1.20
(Screen.drawRectangle$L1.20)//C_LABEL arg1: L2.20 arg2: None label L2.20
(Screen.drawRectangle$L2.20)//C_PUSH arg1: argument arg2: 0 push argument 0
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
@ARITHMETIC_LT.31
D=A
@LT
0;JMP
(ARITHMETIC_LT.31)
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
@ARITHMETIC_GT.17
D=A
@GT
0;JMP
(ARITHMETIC_GT.17)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.11
D=A
@OR
0;JMP
(ARITHMETIC_OR.11)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.12
D=A
@OR
0;JMP
(ARITHMETIC_OR.12)
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
@ARITHMETIC_GT.18
D=A
@GT
0;JMP
(ARITHMETIC_GT.18)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.13
D=A
@OR
0;JMP
(ARITHMETIC_OR.13)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.72
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.72)
//C_IF arg1: L1.21 arg2: None if-goto L1.21
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawRectangle$L1.21
D;JNE
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
//C_GOTO arg1: L2.21 arg2: None goto L2.21
@Screen.drawRectangle$L2.21
0;JMP
//C_LABEL arg1: L1.21 arg2: None label L1.21
(Screen.drawRectangle$L1.21)//C_LABEL arg1: L2.21 arg2: None label L2.21
(Screen.drawRectangle$L2.21)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_SUB.26
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.26)
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
//C_LABEL arg1: L1.22 arg2: None label L1.22
(Screen.drawRectangle$L1.22)//C_PUSH arg1: local arg2: 1 push local 1
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.33
D=A
@LT
0;JMP
(ARITHMETIC_LT.33)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.73
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.73)
//C_IF arg1: L2.22 arg2: None if-goto L2.22
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawRectangle$L2.22
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.103
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.103)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.104
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.104)
//C_CALL arg1: Screen.drawLine arg2: 4 call Screen.drawLine 4
@4
D=A
@14
M=D
@Screen.drawLine
D=A
@15
M=D
@Screen.drawLine$ret.0
D=A
@CALL
0;JMP
(Screen.drawLine$ret.0)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_GOTO arg1: L1.22 arg2: None goto L1.22
@Screen.drawRectangle$L1.22
0;JMP
//C_LABEL arg1: L2.22 arg2: None label L2.22
(Screen.drawRectangle$L2.22)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.22
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.22)
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
//C_LABEL arg1: L1.23 arg2: None label L1.23
(Screen.drawCircle$L1.23)//C_PUSH arg1: local arg2: 0 push local 0
@0
D=A
@LCL
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.34
D=A
@LT
0;JMP
(ARITHMETIC_LT.34)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.74
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.74)
//C_IF arg1: L2.23 arg2: None if-goto L2.23
@SP // pop from stack to memory address 13
AM=M-1
D=M
@Screen.drawCircle$L2.23
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
@Math.multiply$ret.12
D=A
@CALL
0;JMP
(Math.multiply$ret.12)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.27
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.27)
//C_CALL arg1: Math.sqrt arg2: 1 call Math.sqrt 1
@1
D=A
@14
M=D
@Math.sqrt
D=A
@15
M=D
@Math.sqrt$ret.0
D=A
@CALL
0;JMP
(Math.sqrt$ret.0)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.28
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.28)
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
@Math.multiply$ret.14
D=A
@CALL
0;JMP
(Math.multiply$ret.14)
//C_ARITHMETIC arg1: sub arg2: None sub
@ARITHMETIC_SUB.29
D=A
@SUB
0;JMP
(ARITHMETIC_SUB.29)
//C_CALL arg1: Math.sqrt arg2: 1 call Math.sqrt 1
@1
D=A
@14
M=D
@Math.sqrt
D=A
@15
M=D
@Math.sqrt$ret.1
D=A
@CALL
0;JMP
(Math.sqrt$ret.1)
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.107
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.107)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.108
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.108)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.109
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.109)
//C_CALL arg1: Screen.drawLine arg2: 4 call Screen.drawLine 4
@4
D=A
@14
M=D
@Screen.drawLine
D=A
@15
M=D
@Screen.drawLine$ret.1
D=A
@CALL
0;JMP
(Screen.drawLine$ret.1)
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
@ARITHMETIC_ADD.110
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.110)
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
//C_GOTO arg1: L1.23 arg2: None goto L1.23
@Screen.drawCircle$L1.23
0;JMP
//C_LABEL arg1: L2.23 arg2: None label L2.23
(Screen.drawCircle$L2.23)//C_PUSH arg1: constant arg2: 0 push constant 0
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
@Memory.alloc$ret.2
D=A
@CALL
0;JMP
(Memory.alloc$ret.2)
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
@ARITHMETIC_GT.19
D=A
@GT
0;JMP
(ARITHMETIC_GT.19)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.75
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.75)
//C_IF arg1: L1.1 arg2: None if-goto L1.1
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.new$L1.1
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
//C_GOTO arg1: L2.1 arg2: None goto L2.1
@String.new$L2.1
0;JMP
//C_LABEL arg1: L1.1 arg2: None label L1.1
(String.new$L1.1)//C_LABEL arg1: L2.1 arg2: None label L2.1
(String.new$L2.1)//C_PUSH arg1: pointer arg2: 0 push pointer 0
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
//C_ARITHMETIC arg1: gt arg2: None gt
@ARITHMETIC_GT.20
D=A
@GT
0;JMP
(ARITHMETIC_GT.20)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.76
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.76)
//C_IF arg1: L1.2 arg2: None if-goto L1.2
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.dispose$L1.2
D;JNE
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
//C_GOTO arg1: L2.2 arg2: None goto L2.2
@String.dispose$L2.2
0;JMP
//C_LABEL arg1: L1.2 arg2: None label L1.2
(String.dispose$L1.2)//C_LABEL arg1: L2.2 arg2: None label L2.2
(String.dispose$L2.2)//C_PUSH arg1: pointer arg2: 0 push pointer 0
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
@Memory.deAlloc$ret.2
D=A
@CALL
0;JMP
(Memory.deAlloc$ret.2)
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.maxLength arg2: 0 function String.maxLength 0
(String.maxLength)
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
//C_FUNCTION arg1: String.charArray arg2: 0 function String.charArray 0
(String.charArray)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.111
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.111)
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.112
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.112)
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
//C_FUNCTION arg1: String.appendChar arg2: 2 function String.appendChar 2
(String.appendChar)
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
//C_POP arg1: pointer arg2: 0 pop pointer 0
@SP
AM=M-1
D=M
@3
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
@ARITHMETIC_LT.35
D=A
@LT
0;JMP
(ARITHMETIC_LT.35)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.77
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.77)
//C_IF arg1: L1.3 arg2: None if-goto L1.3
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.appendChar$L1.3
D;JNE
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
@ARITHMETIC_ADD.113
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.113)
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
//C_GOTO arg1: L2.3 arg2: None goto L2.3
@String.appendChar$L2.3
0;JMP
//C_LABEL arg1: L1.3 arg2: None label L1.3
(String.appendChar$L1.3)//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
@ARITHMETIC_ADD.115
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.115)
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
//C_LABEL arg1: L1.4 arg2: None label L1.4
(String.appendChar$L1.4)//C_PUSH arg1: local arg2: 1 push local 1
@1
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
@ARITHMETIC_LT.36
D=A
@LT
0;JMP
(ARITHMETIC_LT.36)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.78
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.78)
//C_IF arg1: L2.4 arg2: None if-goto L2.4
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.appendChar$L2.4
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
@ARITHMETIC_ADD.116
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.116)
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
@ARITHMETIC_ADD.117
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.117)
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
@ARITHMETIC_ADD.118
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.118)
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
//C_GOTO arg1: L1.4 arg2: None goto L1.4
@String.appendChar$L1.4
0;JMP
//C_LABEL arg1: L2.4 arg2: None label L2.4
(String.appendChar$L2.4)//C_PUSH arg1: local arg2: 0 push local 0
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
@ARITHMETIC_ADD.119
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.119)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
@ARITHMETIC_ADD.121
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.121)
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
//C_LABEL arg1: L2.3 arg2: None label L2.3
(String.appendChar$L2.3)//C_PUSH arg1: pointer arg2: 0 push pointer 0
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.79
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.79)
//C_IF arg1: L1.5 arg2: None if-goto L1.5
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.eraseLastChar$L1.5
D;JNE
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
@ARITHMETIC_ADD.122
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.122)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_GOTO arg1: L2.5 arg2: None goto L2.5
@String.eraseLastChar$L2.5
0;JMP
//C_LABEL arg1: L1.5 arg2: None label L1.5
(String.eraseLastChar$L1.5)//C_LABEL arg1: L2.5 arg2: None label L2.5
(String.eraseLastChar$L2.5)//C_PUSH arg1: constant arg2: 0 push constant 0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.123
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.123)
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
@ARITHMETIC_EQ.31
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.31)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.80
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.80)
//C_IF arg1: L1.6 arg2: None if-goto L1.6
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$L1.6
D;JNE
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.23
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.23)
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
//C_GOTO arg1: L2.6 arg2: None goto L2.6
@String.intValue$L2.6
0;JMP
//C_LABEL arg1: L1.6 arg2: None label L1.6
(String.intValue$L1.6)//C_LABEL arg1: L2.6 arg2: None label L2.6
(String.intValue$L2.6)//C_LABEL arg1: L1.7 arg2: None label L1.7
(String.intValue$L1.7)//C_PUSH arg1: local arg2: 1 push local 1
@1
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
//C_ARITHMETIC arg1: lt arg2: None lt
@ARITHMETIC_LT.37
D=A
@LT
0;JMP
(ARITHMETIC_LT.37)
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.24
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.24)
//C_ARITHMETIC arg1: eq arg2: None eq
@ARITHMETIC_EQ.32
D=A
@EQ
0;JMP
(ARITHMETIC_EQ.32)
//C_ARITHMETIC arg1: or arg2: None or
@ARITHMETIC_OR.14
D=A
@OR
0;JMP
(ARITHMETIC_OR.14)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.81
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.81)
//C_IF arg1: L2.7 arg2: None if-goto L2.7
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$L2.7
D;JNE
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
@ARITHMETIC_ADD.124
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.124)
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
//C_PUSH arg1: constant arg2: 47 push constant 47
@47
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
//C_PUSH arg1: constant arg2: 58 push constant 58
@58
D=A
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
//C_ARITHMETIC arg1: and arg2: None and
@ARITHMETIC_AND.10
D=A
@AND
0;JMP
(ARITHMETIC_AND.10)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.82
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.82)
//C_IF arg1: L1.8 arg2: None if-goto L1.8
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.intValue$L1.8
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
@Math.multiply$ret.15
D=A
@CALL
0;JMP
(Math.multiply$ret.15)
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
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_ARITHMETIC arg1: add arg2: None add
@ARITHMETIC_ADD.125
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.125)
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
@ARITHMETIC_ADD.126
D=A
@ADD
0;JMP
(ARITHMETIC_ADD.126)
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
//C_GOTO arg1: L2.8 arg2: None goto L2.8
@String.intValue$L2.8
0;JMP
//C_LABEL arg1: L1.8 arg2: None label L1.8
(String.intValue$L1.8)//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//C_ARITHMETIC arg1: neg arg2: None neg
@ARITHMETIC_NEG.25
D=A
@NEG
0;JMP
(ARITHMETIC_NEG.25)
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
//C_LABEL arg1: L2.8 arg2: None label L2.8
(String.intValue$L2.8)//C_GOTO arg1: L1.7 arg2: None goto L1.7
@String.intValue$L1.7
0;JMP
//C_LABEL arg1: L2.7 arg2: None label L2.7
(String.intValue$L2.7)//C_PUSH arg1: local arg2: 0 push local 0
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
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_FUNCTION arg1: String.setInt arg2: 0 function String.setInt 0
(String.setInt)
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
//C_PUSH arg1: constant arg2: 0 push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
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
@ARITHMETIC_LT.39
D=A
@LT
0;JMP
(ARITHMETIC_LT.39)
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.83
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.83)
//C_IF arg1: L1.9 arg2: None if-goto L1.9
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.setInt$L1.9
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
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.123
D=A
@CALL
0;JMP
(String.appendChar$ret.123)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_GOTO arg1: L2.9 arg2: None goto L2.9
@String.setInt$L2.9
0;JMP
//C_LABEL arg1: L1.9 arg2: None label L1.9
(String.setInt$L1.9)//C_LABEL arg1: L2.9 arg2: None label L2.9
(String.setInt$L2.9)//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
//C_CALL arg1: String.int2string arg2: 2 call String.int2string 2
@2
D=A
@14
M=D
@String.int2string
D=A
@15
M=D
@String.int2string$ret.0
D=A
@CALL
0;JMP
(String.int2string$ret.0)
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
//C_FUNCTION arg1: String.int2string arg2: 3 function String.int2string 3
(String.int2string)
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D
//C_CALL arg1: Math.mod arg2: 2 call Math.mod 2
@2
D=A
@14
M=D
@Math.mod
D=A
@15
M=D
@Math.mod$ret.4
D=A
@CALL
0;JMP
(Math.mod$ret.4)
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
//C_PUSH arg1: constant arg2: 48 push constant 48
@48
D=A
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
//C_PUSH arg1: constant arg2: 10 push constant 10
@10
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
//C_ARITHMETIC arg1: not arg2: None not
@ARITHMETIC_NOT.84
D=A
@NOT
0;JMP
(ARITHMETIC_NOT.84)
//C_IF arg1: L1.10 arg2: None if-goto L1.10
@SP // pop from stack to memory address 13
AM=M-1
D=M
@String.int2string$L1.10
D;JNE
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.124
D=A
@CALL
0;JMP
(String.appendChar$ret.124)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_GOTO arg1: L2.10 arg2: None goto L2.10
@String.int2string$L2.10
0;JMP
//C_LABEL arg1: L1.10 arg2: None label L1.10
(String.int2string$L1.10)//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
@Math.divide$ret.5
D=A
@CALL
0;JMP
(Math.divide$ret.5)
//C_CALL arg1: String.int2string arg2: 2 call String.int2string 2
@2
D=A
@14
M=D
@String.int2string
D=A
@15
M=D
@String.int2string$ret.1
D=A
@CALL
0;JMP
(String.int2string$ret.1)
//C_POP arg1: temp arg2: 0 pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//C_PUSH arg1: pointer arg2: 0 push pointer 0
@3
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
//C_CALL arg1: String.appendChar arg2: 2 call String.appendChar 2
@2
D=A
@14
M=D
@String.appendChar
D=A
@15
M=D
@String.appendChar$ret.125
D=A
@CALL
0;JMP
(String.appendChar$ret.125)
//C_RETURN arg1: None arg2: None return
@RETURN
0;JMP
//C_LABEL arg1: L2.10 arg2: None label L2.10
(String.int2string$L2.10)//C_FUNCTION arg1: String.newLine arg2: 0 function String.newLine 0
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
