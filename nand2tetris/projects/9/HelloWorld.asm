// Initialize stack
@256
D=A
@SP
M=D

// Call Sys.init
@Sys.init$ret.0
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_0
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_0)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Sys.init
0;JMP
(Sys.init$ret.0)

// Ran everytime a function is called
(SAVE)
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
D=M
@LCL
M=D
@R13
A=M
0;JMP

// Ran everytime a function is returned
(RESTORE)
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D
@R14
A=M
0;JMP

// function Array.new 0
(Array.new)
@0
D=A
(Array.new$Lcl)
D=D-1
@Array.new$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Array.new$Lcl
0;JMP
(Array.new$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_0
D;JGT
D=0
@END_GT_0
0;JMP
(GT_0)
D=-1
(END_GT_0)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Array.new
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Array.new
0;JMP

// label IF_TRUE0
(IF_TRUE0_Array.new)

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.1
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_1
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_1)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.1)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Array.new)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.alloc 1
@Memory.alloc$ret.2
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_2
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_2)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Memory.alloc
0;JMP
(Memory.alloc$ret.2)

// return
@RESTORE
0;JMP

// function Array.dispose 0
(Array.dispose)
@0
D=A
(Array.dispose$Lcl)
D=D-1
@Array.dispose$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Array.dispose$Lcl
0;JMP
(Array.dispose$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push pointer 0
@THIS
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.deAlloc 1
@Memory.deAlloc$ret.3
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_3
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_3)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Memory.deAlloc
0;JMP
(Memory.deAlloc$ret.3)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Keyboard.init 0
(Keyboard.init)
@0
D=A
(Keyboard.init$Lcl)
D=D-1
@Keyboard.init$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Keyboard.init$Lcl
0;JMP
(Keyboard.init$LclEnd)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Keyboard.keyPressed 0
(Keyboard.keyPressed)
@0
D=A
(Keyboard.keyPressed$Lcl)
D=D-1
@Keyboard.keyPressed$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Keyboard.keyPressed$Lcl
0;JMP
(Keyboard.keyPressed$LclEnd)

// push constant 24576
@24576
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.peek 1
@Memory.peek$ret.4
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_4
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_4)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Memory.peek
0;JMP
(Memory.peek$ret.4)

// return
@RESTORE
0;JMP

// function Keyboard.readChar 2
(Keyboard.readChar)
@2
D=A
(Keyboard.readChar$Lcl)
D=D-1
@Keyboard.readChar$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Keyboard.readChar$Lcl
0;JMP
(Keyboard.readChar$LclEnd)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.printChar 1
@Output.printChar$ret.5
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_5
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_5)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.5)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(WHILE_EXP0_Keyboard.readChar)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_0
D;JEQ
D=0
@END_EQ_0
0;JMP
(EQ_0)
D=-1
(END_EQ_0)
@SP
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_1
D;JGT
D=0
@END_GT_1
0;JMP
(GT_1)
D=-1
(END_GT_1)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Keyboard.readChar
D;JNE

// call Keyboard.keyPressed 0
@Keyboard.keyPressed$ret.6
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_6
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_6)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$ret.6)

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_2
D;JGT
D=0
@END_GT_2
0;JMP
(GT_2)
D=-1
(END_GT_2)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Keyboard.readChar
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Keyboard.readChar
0;JMP

// label IF_TRUE0
(IF_TRUE0_Keyboard.readChar)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE0
(IF_FALSE0_Keyboard.readChar)

// goto WHILE_EXP0
@WHILE_EXP0_Keyboard.readChar
0;JMP

// label WHILE_END0
(WHILE_END0_Keyboard.readChar)

// call String.backSpace 0
@String.backSpace$ret.7
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_7
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_7)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@String.backSpace
0;JMP
(String.backSpace$ret.7)

// call Output.printChar 1
@Output.printChar$ret.8
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_8
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_8)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.8)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.printChar 1
@Output.printChar$ret.9
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_9
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_9)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.9)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Keyboard.readLine 5
(Keyboard.readLine)
@5
D=A
(Keyboard.readLine$Lcl)
D=D-1
@Keyboard.readLine$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Keyboard.readLine$Lcl
0;JMP
(Keyboard.readLine$LclEnd)

// push constant 80
@80
D=A
@SP
M=M+1
A=M-1
M=D

// call String.new 1
@String.new$ret.10
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_10
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_10)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.new
0;JMP
(String.new$ret.10)

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.printString 1
@Output.printString$ret.11
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_11
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_11)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printString
0;JMP
(Output.printString$ret.11)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call String.newLine 0
@String.newLine$ret.12
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_12
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_12)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@String.newLine
0;JMP
(String.newLine$ret.12)

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// call String.backSpace 0
@String.backSpace$ret.13
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_13
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_13)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@String.backSpace
0;JMP
(String.backSpace$ret.13)

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Keyboard.readLine)

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Keyboard.readLine
D;JNE

// call Keyboard.readChar 0
@Keyboard.readChar$ret.14
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_14
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_14)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Keyboard.readChar
0;JMP
(Keyboard.readChar$ret.14)

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_1
D;JEQ
D=0
@END_EQ_1
0;JMP
(EQ_1)
D=-1
(END_EQ_1)
@SP
A=M-1
M=D

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Keyboard.readLine
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Keyboard.readLine
0;JMP

// label IF_TRUE0
(IF_TRUE0_Keyboard.readLine)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_2
D;JEQ
D=0
@END_EQ_2
0;JMP
(EQ_2)
D=-1
(END_EQ_2)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Keyboard.readLine
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Keyboard.readLine
0;JMP

// label IF_TRUE1
(IF_TRUE1_Keyboard.readLine)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.eraseLastChar 1
@String.eraseLastChar$ret.15
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_15
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_15)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.eraseLastChar
0;JMP
(String.eraseLastChar$ret.15)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END1
@IF_END1_Keyboard.readLine
0;JMP

// label IF_FALSE1
(IF_FALSE1_Keyboard.readLine)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.16
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_16
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_16)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.16)

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END1
(IF_END1_Keyboard.readLine)

// label IF_FALSE0
(IF_FALSE0_Keyboard.readLine)

// goto WHILE_EXP0
@WHILE_EXP0_Keyboard.readLine
0;JMP

// label WHILE_END0
(WHILE_END0_Keyboard.readLine)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Keyboard.readInt 2
(Keyboard.readInt)
@2
D=A
(Keyboard.readInt$Lcl)
D=D-1
@Keyboard.readInt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Keyboard.readInt$Lcl
0;JMP
(Keyboard.readInt$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Keyboard.readLine 1
@Keyboard.readLine$ret.17
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_17
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_17)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Keyboard.readLine
0;JMP
(Keyboard.readLine$ret.17)

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.intValue 1
@String.intValue$ret.18
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_18
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_18)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.intValue
0;JMP
(String.intValue$ret.18)

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.dispose 1
@String.dispose$ret.19
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_19
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_19)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.dispose
0;JMP
(String.dispose$ret.19)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Main.main 0
(Main.main)
@0
D=A
(Main.main$Lcl)
D=D-1
@Main.main$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Main.main$Lcl
0;JMP
(Main.main$LclEnd)

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// call String.new 1
@String.new$ret.20
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_20
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_20)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.new
0;JMP
(String.new$ret.20)

// push constant 72
@72
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.21
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_21
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_21)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.21)

// push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.22
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_22
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_22)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.22)

// push constant 108
@108
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.23
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_23
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_23)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.23)

// push constant 108
@108
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.24
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_24
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_24)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.24)

// push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.25
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_25
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_25)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.25)

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.26
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_26
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_26)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.26)

// push constant 119
@119
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.27
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_27
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_27)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.27)

// push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.28
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_28
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_28)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.28)

// push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.29
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_29
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_29)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.29)

// push constant 108
@108
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.30
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_30
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_30)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.30)

// push constant 100
@100
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.31
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_31
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_31)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.31)

// push constant 33
@33
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@String.appendChar$ret.32
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_32
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_32)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.appendChar
0;JMP
(String.appendChar$ret.32)

// call Output.printString 1
@Output.printString$ret.33
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_33
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_33)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printString
0;JMP
(Output.printString$ret.33)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Output.println 0
@Output.println$ret.34
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_34
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_34)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.println
0;JMP
(Output.println$ret.34)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.init 1
(Math.init)
@1
D=A
(Math.init$Lcl)
D=D-1
@Math.init$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.init$Lcl
0;JMP
(Math.init$LclEnd)

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.35
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_35
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_35)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.35)

// pop static 1
@SP
AM=M-1
D=M
@Math.1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.36
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_36
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_36)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.36)

// pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Math.init)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_0
D;JLT
D=0
@END_LT_0
0;JMP
(LT_0)
D=-1
(END_LT_0)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Math.init
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Math.init
0;JMP

// label WHILE_END0
(WHILE_END0_Math.init)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.abs 0
(Math.abs)
@0
D=A
(Math.abs$Lcl)
D=D-1
@Math.abs$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.abs$Lcl
0;JMP
(Math.abs$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_1
D;JLT
D=0
@END_LT_1
0;JMP
(LT_1)
D=-1
(END_LT_1)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Math.abs
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Math.abs
0;JMP

// label IF_TRUE0
(IF_TRUE0_Math.abs)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE0
(IF_FALSE0_Math.abs)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.multiply 5
(Math.multiply)
@5
D=A
(Math.multiply$Lcl)
D=D-1
@Math.multiply$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.multiply$Lcl
0;JMP
(Math.multiply$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_2
D;JLT
D=0
@END_LT_2
0;JMP
(LT_2)
D=-1
(END_LT_2)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_3
D;JGT
D=0
@END_GT_3
0;JMP
(GT_3)
D=-1
(END_GT_3)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_4
D;JGT
D=0
@END_GT_4
0;JMP
(GT_4)
D=-1
(END_GT_4)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_3
D;JLT
D=0
@END_LT_3
0;JMP
(LT_3)
D=-1
(END_LT_3)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.abs 1
@Math.abs$ret.37
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_37
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_37)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.abs$ret.37)

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.abs 1
@Math.abs$ret.38
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_38
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_38)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.abs$ret.38)

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_4
D;JLT
D=0
@END_LT_4
0;JMP
(LT_4)
D=-1
(END_LT_4)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Math.multiply
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Math.multiply
0;JMP

// label IF_TRUE0
(IF_TRUE0_Math.multiply)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE0
(IF_FALSE0_Math.multiply)

// label WHILE_EXP0
(WHILE_EXP0_Math.multiply)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_5
D;JLT
D=0
@END_LT_5
0;JMP
(LT_5)
D=-1
(END_LT_5)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Math.multiply
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_3
D;JEQ
D=0
@END_EQ_3
0;JMP
(EQ_3)
D=-1
(END_EQ_3)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Math.multiply
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Math.multiply
0;JMP

// label IF_TRUE1
(IF_TRUE1_Math.multiply)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_Math.multiply)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Math.multiply
0;JMP

// label WHILE_END0
(WHILE_END0_Math.multiply)

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Math.multiply
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Math.multiply
0;JMP

// label IF_TRUE2
(IF_TRUE2_Math.multiply)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE2
(IF_FALSE2_Math.multiply)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.divide 4
(Math.divide)
@4
D=A
(Math.divide$Lcl)
D=D-1
@Math.divide$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.divide$Lcl
0;JMP
(Math.divide$LclEnd)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_4
D;JEQ
D=0
@END_EQ_4
0;JMP
(EQ_4)
D=-1
(END_EQ_4)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Math.divide
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Math.divide
0;JMP

// label IF_TRUE0
(IF_TRUE0_Math.divide)

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.39
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_39
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_39)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.39)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Math.divide)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_6
D;JLT
D=0
@END_LT_6
0;JMP
(LT_6)
D=-1
(END_LT_6)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_5
D;JGT
D=0
@END_GT_5
0;JMP
(GT_5)
D=-1
(END_GT_5)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_6
D;JGT
D=0
@END_GT_6
0;JMP
(GT_6)
D=-1
(END_GT_6)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_7
D;JLT
D=0
@END_LT_7
0;JMP
(LT_7)
D=-1
(END_LT_7)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.abs 1
@Math.abs$ret.40
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_40
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_40)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.abs$ret.40)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.abs 1
@Math.abs$ret.41
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_41
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_41)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.abs$ret.41)

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Math.divide)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_8
D;JLT
D=0
@END_LT_8
0;JMP
(LT_8)
D=-1
(END_LT_8)
@SP
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Math.divide
D;JNE

// push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_9
D;JLT
D=0
@END_LT_9
0;JMP
(LT_9)
D=-1
(END_LT_9)
@SP
A=M-1
M=D

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Math.divide
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Math.divide
0;JMP

// label IF_TRUE1
(IF_TRUE1_Math.divide)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_7
D;JGT
D=0
@END_GT_7
0;JMP
(GT_7)
D=-1
(END_GT_7)
@SP
A=M-1
M=D

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Math.divide
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Math.divide
0;JMP

// label IF_TRUE2
(IF_TRUE2_Math.divide)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE2
(IF_FALSE2_Math.divide)

// label IF_FALSE1
(IF_FALSE1_Math.divide)

// goto WHILE_EXP0
@WHILE_EXP0_Math.divide
0;JMP

// label WHILE_END0
(WHILE_END0_Math.divide)

// label WHILE_EXP1
(WHILE_EXP1_Math.divide)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_8
D;JGT
D=0
@END_GT_8
0;JMP
(GT_8)
D=-1
(END_GT_8)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1_Math.divide
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_9
D;JGT
D=0
@END_GT_9
0;JMP
(GT_9)
D=-1
(END_GT_9)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3_Math.divide
D;JNE

// goto IF_FALSE3
@IF_FALSE3_Math.divide
0;JMP

// label IF_TRUE3
(IF_TRUE3_Math.divide)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Math.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE3
(IF_FALSE3_Math.divide)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP1
@WHILE_EXP1_Math.divide
0;JMP

// label WHILE_END1
(WHILE_END1_Math.divide)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4_Math.divide
D;JNE

// goto IF_FALSE4
@IF_FALSE4_Math.divide
0;JMP

// label IF_TRUE4
(IF_TRUE4_Math.divide)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE4
(IF_FALSE4_Math.divide)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.sqrt 4
(Math.sqrt)
@4
D=A
(Math.sqrt$Lcl)
D=D-1
@Math.sqrt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.sqrt$Lcl
0;JMP
(Math.sqrt$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_10
D;JLT
D=0
@END_LT_10
0;JMP
(LT_10)
D=-1
(END_LT_10)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Math.sqrt
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Math.sqrt
0;JMP

// label IF_TRUE0
(IF_TRUE0_Math.sqrt)

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.42
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_42
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_42)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.42)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Math.sqrt)

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Math.sqrt)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_10
D;JGT
D=0
@END_GT_10
0;JMP
(GT_10)
D=-1
(END_GT_10)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Math.sqrt
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Math.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.43
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_43
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_43)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.43)

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_11
D;JGT
D=0
@END_GT_11
0;JMP
(GT_11)
D=-1
(END_GT_11)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_11
D;JLT
D=0
@END_LT_11
0;JMP
(LT_11)
D=-1
(END_LT_11)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Math.sqrt
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Math.sqrt
0;JMP

// label IF_TRUE1
(IF_TRUE1_Math.sqrt)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_Math.sqrt)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Math.sqrt
0;JMP

// label WHILE_END0
(WHILE_END0_Math.sqrt)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.max 0
(Math.max)
@0
D=A
(Math.max$Lcl)
D=D-1
@Math.max$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.max$Lcl
0;JMP
(Math.max$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_12
D;JGT
D=0
@END_GT_12
0;JMP
(GT_12)
D=-1
(END_GT_12)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Math.max
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Math.max
0;JMP

// label IF_TRUE0
(IF_TRUE0_Math.max)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE0
(IF_FALSE0_Math.max)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Math.min 0
(Math.min)
@0
D=A
(Math.min$Lcl)
D=D-1
@Math.min$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Math.min$Lcl
0;JMP
(Math.min$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_12
D;JLT
D=0
@END_LT_12
0;JMP
(LT_12)
D=-1
(END_LT_12)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Math.min
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Math.min
0;JMP

// label IF_TRUE0
(IF_TRUE0_Math.min)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE0
(IF_FALSE0_Math.min)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Memory.init 0
(Memory.init)
@0
D=A
(Memory.init$Lcl)
D=D-1
@Memory.init$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Memory.init$Lcl
0;JMP
(Memory.init$LclEnd)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 0
@SP
AM=M-1
D=M
@Memory.0
M=D

// push constant 2048
@2048
D=A
@SP
M=M+1
A=M-1
M=D

// push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 14334
@14334
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 2049
@2049
D=A
@SP
M=M+1
A=M-1
M=D

// push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 2050
@2050
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Memory.peek 0
(Memory.peek)
@0
D=A
(Memory.peek$Lcl)
D=D-1
@Memory.peek$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Memory.peek$Lcl
0;JMP
(Memory.peek$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Memory.poke 0
(Memory.poke)
@0
D=A
(Memory.poke$Lcl)
D=D-1
@Memory.poke$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Memory.poke$Lcl
0;JMP
(Memory.poke$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Memory.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Memory.alloc 2
(Memory.alloc)
@2
D=A
(Memory.alloc$Lcl)
D=D-1
@Memory.alloc$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Memory.alloc$Lcl
0;JMP
(Memory.alloc$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_13
D;JLT
D=0
@END_LT_13
0;JMP
(LT_13)
D=-1
(END_LT_13)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Memory.alloc
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Memory.alloc
0;JMP

// label IF_TRUE0
(IF_TRUE0_Memory.alloc)

// push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.44
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_44
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_44)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.44)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Memory.alloc)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_5
D;JEQ
D=0
@END_EQ_5
0;JMP
(EQ_5)
D=-1
(END_EQ_5)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Memory.alloc
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Memory.alloc
0;JMP

// label IF_TRUE1
(IF_TRUE1_Memory.alloc)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_Memory.alloc)

// push constant 2048
@2048
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Memory.alloc)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16383
@16383
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_14
D;JLT
D=0
@END_LT_14
0;JMP
(LT_14)
D=-1
(END_LT_14)
@SP
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_15
D;JLT
D=0
@END_LT_15
0;JMP
(LT_15)
D=-1
(END_LT_15)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Memory.alloc
D;JNE

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_6
D;JEQ
D=0
@END_EQ_6
0;JMP
(EQ_6)
D=-1
(END_EQ_6)
@SP
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16382
@16382
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_13
D;JGT
D=0
@END_GT_13
0;JMP
(GT_13)
D=-1
(END_GT_13)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_7
D;JEQ
D=0
@END_EQ_7
0;JMP
(EQ_7)
D=-1
(END_EQ_7)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Memory.alloc
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Memory.alloc
0;JMP

// label IF_TRUE2
(IF_TRUE2_Memory.alloc)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END2
@IF_END2_Memory.alloc
0;JMP

// label IF_FALSE2
(IF_FALSE2_Memory.alloc)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_8
D;JEQ
D=0
@END_EQ_8
0;JMP
(EQ_8)
D=-1
(END_EQ_8)
@SP
A=M-1
M=D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3_Memory.alloc
D;JNE

// goto IF_FALSE3
@IF_FALSE3_Memory.alloc
0;JMP

// label IF_TRUE3
(IF_TRUE3_Memory.alloc)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END3
@IF_END3_Memory.alloc
0;JMP

// label IF_FALSE3
(IF_FALSE3_Memory.alloc)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END3
(IF_END3_Memory.alloc)

// label IF_END2
(IF_END2_Memory.alloc)

// goto WHILE_EXP0
@WHILE_EXP0_Memory.alloc
0;JMP

// label WHILE_END0
(WHILE_END0_Memory.alloc)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 16379
@16379
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_14
D;JGT
D=0
@END_GT_14
0;JMP
(GT_14)
D=-1
(END_GT_14)
@SP
A=M-1
M=D

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4_Memory.alloc
D;JNE

// goto IF_FALSE4
@IF_FALSE4_Memory.alloc
0;JMP

// label IF_TRUE4
(IF_TRUE4_Memory.alloc)

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.45
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_45
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_45)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.45)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE4
(IF_FALSE4_Memory.alloc)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_15
D;JGT
D=0
@END_GT_15
0;JMP
(GT_15)
D=-1
(END_GT_15)
@SP
A=M-1
M=D

// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@IF_TRUE5_Memory.alloc
D;JNE

// goto IF_FALSE5
@IF_FALSE5_Memory.alloc
0;JMP

// label IF_TRUE5
(IF_TRUE5_Memory.alloc)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_9
D;JEQ
D=0
@END_EQ_9
0;JMP
(EQ_9)
D=-1
(END_EQ_9)
@SP
A=M-1
M=D

// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@IF_TRUE6_Memory.alloc
D;JNE

// goto IF_FALSE6
@IF_FALSE6_Memory.alloc
0;JMP

// label IF_TRUE6
(IF_TRUE6_Memory.alloc)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END6
@IF_END6_Memory.alloc
0;JMP

// label IF_FALSE6
(IF_FALSE6_Memory.alloc)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END6
(IF_END6_Memory.alloc)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE5
(IF_FALSE5_Memory.alloc)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// return
@RESTORE
0;JMP

// function Memory.deAlloc 2
(Memory.deAlloc)
@2
D=A
(Memory.deAlloc$Lcl)
D=D-1
@Memory.deAlloc$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Memory.deAlloc$Lcl
0;JMP
(Memory.deAlloc$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_10
D;JEQ
D=0
@END_EQ_10
0;JMP
(EQ_10)
D=-1
(END_EQ_10)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Memory.deAlloc
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Memory.deAlloc
0;JMP

// label IF_TRUE0
(IF_TRUE0_Memory.deAlloc)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END0
@IF_END0_Memory.deAlloc
0;JMP

// label IF_FALSE0
(IF_FALSE0_Memory.deAlloc)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_11
D;JEQ
D=0
@END_EQ_11
0;JMP
(EQ_11)
D=-1
(END_EQ_11)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Memory.deAlloc
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Memory.deAlloc
0;JMP

// label IF_TRUE1
(IF_TRUE1_Memory.deAlloc)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END1
@IF_END1_Memory.deAlloc
0;JMP

// label IF_FALSE1
(IF_FALSE1_Memory.deAlloc)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END1
(IF_END1_Memory.deAlloc)

// label IF_END0
(IF_END0_Memory.deAlloc)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.init 0
(Output.init)
@0
D=A
(Output.init$Lcl)
D=D-1
@Output.init$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.init$Lcl
0;JMP
(Output.init$LclEnd)

// push constant 16384
@16384
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 4
@SP
AM=M-1
D=M
@Output.4
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// call String.new 1
@String.new$ret.46
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_46
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_46)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.new
0;JMP
(String.new$ret.46)

// pop static 3
@SP
AM=M-1
D=M
@Output.3
M=D

// call Output.initMap 0
@Output.initMap$ret.47
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_47
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_47)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.initMap
0;JMP
(Output.initMap$ret.47)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Output.createShiftedMap 0
@Output.createShiftedMap$ret.48
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_48
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_48)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.createShiftedMap
0;JMP
(Output.createShiftedMap$ret.48)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.initMap 0
(Output.initMap)
@0
D=A
(Output.initMap$Lcl)
D=D-1
@Output.initMap$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.initMap$Lcl
0;JMP
(Output.initMap$LclEnd)

// push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.49
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_49
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_49)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.49)

// pop static 5
@SP
AM=M-1
D=M
@Output.5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.50
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_50
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_50)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.50)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.51
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_51
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_51)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.51)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 33
@33
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.52
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_52
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_52)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.52)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 34
@34
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 20
@20
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.53
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_53
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_53)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.53)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.54
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_54
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_54)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.54)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 36
@36
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.55
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_55
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_55)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.55)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 37
@37
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.56
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_56
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_56)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.56)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 38
@38
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.57
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_57
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_57)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.57)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 39
@39
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.58
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_58
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_58)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.58)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.59
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_59
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_59)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.59)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 41
@41
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.60
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_60
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_60)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.60)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 42
@42
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.61
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_61
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_61)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.61)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.62
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_62
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_62)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.62)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 44
@44
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.63
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_63
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_63)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.63)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.64
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_64
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_64)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.64)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 46
@46
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.65
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_65
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_65)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.65)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 47
@47
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.66
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_66
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_66)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.66)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.67
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_67
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_67)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.67)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.68
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_68
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_68)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.68)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.69
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_69
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_69)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.69)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.70
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_70
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_70)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.70)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 52
@52
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 26
@26
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 25
@25
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.71
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_71
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_71)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.71)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 53
@53
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.72
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_72
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_72)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.72)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.73
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_73
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_73)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.73)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.74
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_74
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_74)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.74)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.75
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_75
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_75)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.75)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.76
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_76
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_76)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.76)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 58
@58
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.77
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_77
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_77)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.77)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.78
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_78
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_78)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.78)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.79
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_79
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_79)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.79)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 61
@61
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.80
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_80
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_80)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.80)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.81
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_81
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_81)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.81)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 64
@64
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.82
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_82
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_82)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.82)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.83
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_83
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_83)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.83)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 65
@65
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.84
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_84
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_84)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.84)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 66
@66
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.85
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_85
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_85)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.85)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 67
@67
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.86
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_86
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_86)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.86)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 68
@68
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.87
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_87
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_87)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.87)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 69
@69
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.88
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_88
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_88)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.88)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 70
@70
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.89
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_89
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_89)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.89)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 71
@71
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 44
@44
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.90
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_90
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_90)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.90)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 72
@72
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.91
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_91
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_91)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.91)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 73
@73
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.92
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_92
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_92)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.92)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 74
@74
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.93
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_93
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_93)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.93)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 75
@75
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.94
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_94
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_94)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.94)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 76
@76
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.95
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_95
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_95)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.95)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 77
@77
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 33
@33
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.96
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_96
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_96)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.96)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 78
@78
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.97
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_97
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_97)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.97)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 79
@79
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.98
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_98
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_98)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.98)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 80
@80
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.99
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_99
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_99)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.99)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 81
@81
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 59
@59
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.100
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_100
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_100)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.100)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.101
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_101
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_101)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.101)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 83
@83
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.102
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_102
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_102)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.102)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 84
@84
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.103
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_103
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_103)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.103)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 85
@85
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.104
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_104
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_104)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.104)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 86
@86
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.105
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_105
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_105)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.105)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 87
@87
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.106
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_106
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_106)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.106)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 88
@88
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.107
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_107
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_107)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.107)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 89
@89
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.108
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_108
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_108)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.108)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 90
@90
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 49
@49
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 35
@35
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.109
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_109
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_109)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.109)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 91
@91
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.110
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_110
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_110)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.110)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 92
@92
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.111
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_111
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_111)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.111)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 93
@93
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.112
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_112
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_112)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.112)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 94
@94
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.113
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_113
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_113)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.113)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 95
@95
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.114
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_114
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_114)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.114)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 96
@96
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.115
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_115
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_115)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.115)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.116
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_116
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_116)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.116)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 98
@98
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.117
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_117
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_117)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.117)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 99
@99
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.118
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_118
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_118)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.118)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 100
@100
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 60
@60
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.119
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_119
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_119)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.119)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.120
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_120
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_120)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.120)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 102
@102
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 38
@38
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.121
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_121
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_121)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.121)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 103
@103
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.122
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_122
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_122)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.122)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 104
@104
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.123
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_123
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_123)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.123)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 105
@105
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.124
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_124
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_124)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.124)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 106
@106
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.125
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_125
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_125)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.125)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 107
@107
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.126
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_126
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_126)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.126)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 108
@108
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.127
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_127
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_127)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.127)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 109
@109
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 29
@29
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 43
@43
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.128
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_128
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_128)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.128)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 110
@110
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 29
@29
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.129
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_129
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_129)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.129)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.130
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_130
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_130)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.130)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 112
@112
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.131
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_131
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_131)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.131)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 113
@113
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.132
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_132
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_132)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.132)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 29
@29
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 55
@55
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.133
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_133
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_133)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.133)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 115
@115
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.134
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_134
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_134)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.134)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 116
@116
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 28
@28
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.135
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_135
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_135)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.135)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 117
@117
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 54
@54
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.136
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_136
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_136)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.136)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 118
@118
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.137
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_137
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_137)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.137)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 119
@119
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.138
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_138
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_138)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.138)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 120
@120
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.139
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_139
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_139)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.139)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 121
@121
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 62
@62
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 24
@24
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.140
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_140
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_140)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.140)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 122
@122
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 51
@51
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.141
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_141
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_141)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.141)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.142
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_142
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_142)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.142)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 124
@124
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.143
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_143
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_143)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.143)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 125
@125
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 56
@56
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.144
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_144
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_144)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.144)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 126
@126
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 38
@38
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 25
@25
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.create 12
@Output.create$ret.145
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_145
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_145)
@SP
D=M
@5
D=D-A
@12
D=D-A
@ARG
M=D
@Output.create
0;JMP
(Output.create$ret.145)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.create 1
(Output.create)
@1
D=A
(Output.create$Lcl)
D=D-1
@Output.create$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.create$Lcl
0;JMP
(Output.create$LclEnd)

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.146
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_146
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_146)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.146)

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 5
@Output.5
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 7
@ARG
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 8
@ARG
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 9
@ARG
D=M
@9
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 9
@9
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 10
@ARG
D=M
@10
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 11
@ARG
D=M
@11
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.createShiftedMap 4
(Output.createShiftedMap)
@4
D=A
(Output.createShiftedMap$Lcl)
D=D-1
@Output.createShiftedMap$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.createShiftedMap$Lcl
0;JMP
(Output.createShiftedMap$LclEnd)

// push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.147
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_147
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_147)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.147)

// pop static 6
@SP
AM=M-1
D=M
@Output.6
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Output.createShiftedMap)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 127
@127
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_16
D;JLT
D=0
@END_LT_16
0;JMP
(LT_16)
D=-1
(END_LT_16)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Output.createShiftedMap
D;JNE

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 5
@Output.5
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.148
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_148
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_148)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.148)

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 6
@Output.6
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP1
(WHILE_EXP1_Output.createShiftedMap)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_17
D;JLT
D=0
@END_LT_17
0;JMP
(LT_17)
D=-1
(END_LT_17)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1_Output.createShiftedMap
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.149
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_149
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_149)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.149)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP1
@WHILE_EXP1_Output.createShiftedMap
0;JMP

// label WHILE_END1
(WHILE_END1_Output.createShiftedMap)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_12
D;JEQ
D=0
@END_EQ_12
0;JMP
(EQ_12)
D=-1
(END_EQ_12)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.createShiftedMap
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.createShiftedMap
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.createShiftedMap)

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END0
@IF_END0_Output.createShiftedMap
0;JMP

// label IF_FALSE0
(IF_FALSE0_Output.createShiftedMap)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END0
(IF_END0_Output.createShiftedMap)

// goto WHILE_EXP0
@WHILE_EXP0_Output.createShiftedMap
0;JMP

// label WHILE_END0
(WHILE_END0_Output.createShiftedMap)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.getMap 1
(Output.getMap)
@1
D=A
(Output.getMap$Lcl)
D=D-1
@Output.getMap$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.getMap$Lcl
0;JMP
(Output.getMap$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_18
D;JLT
D=0
@END_LT_18
0;JMP
(LT_18)
D=-1
(END_LT_18)
@SP
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 126
@126
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_16
D;JGT
D=0
@END_GT_16
0;JMP
(GT_16)
D=-1
(END_GT_16)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.getMap
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.getMap
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.getMap)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE0
(IF_FALSE0_Output.getMap)

// push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Output.getMap
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Output.getMap
0;JMP

// label IF_TRUE1
(IF_TRUE1_Output.getMap)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 5
@Output.5
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END1
@IF_END1_Output.getMap
0;JMP

// label IF_FALSE1
(IF_FALSE1_Output.getMap)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 6
@Output.6
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END1
(IF_END1_Output.getMap)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.drawChar 4
(Output.drawChar)
@4
D=A
(Output.drawChar$Lcl)
D=D-1
@Output.drawChar$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.drawChar$Lcl
0;JMP
(Output.drawChar$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.getMap 1
@Output.getMap$ret.150
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_150
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_150)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.getMap
0;JMP
(Output.getMap$ret.150)

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Output.drawChar)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 11
@11
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_19
D;JLT
D=0
@END_LT_19
0;JMP
(LT_19)
D=-1
(END_LT_19)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Output.drawChar
D;JNE

// push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.drawChar
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.drawChar
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.drawChar)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 4
@Output.4
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END0
@IF_END0_Output.drawChar
0;JMP

// label IF_FALSE0
(IF_FALSE0_Output.drawChar)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 4
@Output.4
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END0
(IF_END0_Output.drawChar)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 4
@Output.4
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Output.drawChar
0;JMP

// label WHILE_END0
(WHILE_END0_Output.drawChar)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.moveCursor 0
(Output.moveCursor)
@0
D=A
(Output.moveCursor$Lcl)
D=D-1
@Output.moveCursor$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.moveCursor$Lcl
0;JMP
(Output.moveCursor$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_20
D;JLT
D=0
@END_LT_20
0;JMP
(LT_20)
D=-1
(END_LT_20)
@SP
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_17
D;JGT
D=0
@END_GT_17
0;JMP
(GT_17)
D=-1
(END_GT_17)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_21
D;JLT
D=0
@END_LT_21
0;JMP
(LT_21)
D=-1
(END_LT_21)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 63
@63
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_18
D;JGT
D=0
@END_GT_18
0;JMP
(GT_18)
D=-1
(END_GT_18)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.moveCursor
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.moveCursor
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.moveCursor)

// push constant 20
@20
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.151
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_151
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_151)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.151)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Output.moveCursor)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.152
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_152
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_152)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.152)

// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 352
@352
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.153
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_153
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_153)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.153)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.154
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_154
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_154)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.154)

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_13
D;JEQ
D=0
@END_EQ_13
0;JMP
(EQ_13)
D=-1
(END_EQ_13)
@SP
A=M-1
M=D

// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.drawChar 1
@Output.drawChar$ret.155
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_155
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_155)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.drawChar
0;JMP
(Output.drawChar$ret.155)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.printChar 0
(Output.printChar)
@0
D=A
(Output.printChar$Lcl)
D=D-1
@Output.printChar$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.printChar$Lcl
0;JMP
(Output.printChar$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.newLine 0
@String.newLine$ret.156
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_156
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_156)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@String.newLine
0;JMP
(String.newLine$ret.156)

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_14
D;JEQ
D=0
@END_EQ_14
0;JMP
(EQ_14)
D=-1
(END_EQ_14)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.printChar
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.printChar
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.printChar)

// call Output.println 0
@Output.println$ret.157
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_157
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_157)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.println
0;JMP
(Output.println$ret.157)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END0
@IF_END0_Output.printChar
0;JMP

// label IF_FALSE0
(IF_FALSE0_Output.printChar)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.backSpace 0
@String.backSpace$ret.158
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_158
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_158)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@String.backSpace
0;JMP
(String.backSpace$ret.158)

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_15
D;JEQ
D=0
@END_EQ_15
0;JMP
(EQ_15)
D=-1
(END_EQ_15)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Output.printChar
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Output.printChar
0;JMP

// label IF_TRUE1
(IF_TRUE1_Output.printChar)

// call Output.backSpace 0
@Output.backSpace$ret.159
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_159
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_159)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.backSpace
0;JMP
(Output.backSpace$ret.159)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END1
@IF_END1_Output.printChar
0;JMP

// label IF_FALSE1
(IF_FALSE1_Output.printChar)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.drawChar 1
@Output.drawChar$ret.160
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_160
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_160)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.drawChar
0;JMP
(Output.drawChar$ret.160)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Output.printChar
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Output.printChar
0;JMP

// label IF_TRUE2
(IF_TRUE2_Output.printChar)

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// label IF_FALSE2
(IF_FALSE2_Output.printChar)

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_16
D;JEQ
D=0
@END_EQ_16
0;JMP
(EQ_16)
D=-1
(END_EQ_16)
@SP
A=M-1
M=D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3_Output.printChar
D;JNE

// goto IF_FALSE3
@IF_FALSE3_Output.printChar
0;JMP

// label IF_TRUE3
(IF_TRUE3_Output.printChar)

// call Output.println 0
@Output.println$ret.161
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_161
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_161)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.println
0;JMP
(Output.println$ret.161)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END3
@IF_END3_Output.printChar
0;JMP

// label IF_FALSE3
(IF_FALSE3_Output.printChar)

// push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D

// label IF_END3
(IF_END3_Output.printChar)

// label IF_END1
(IF_END1_Output.printChar)

// label IF_END0
(IF_END0_Output.printChar)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.printString 2
(Output.printString)
@2
D=A
(Output.printString$Lcl)
D=D-1
@Output.printString$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.printString$Lcl
0;JMP
(Output.printString$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.length 1
@String.length$ret.162
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_162
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_162)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@String.length
0;JMP
(String.length$ret.162)

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Output.printString)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_22
D;JLT
D=0
@END_LT_22
0;JMP
(LT_22)
D=-1
(END_LT_22)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Output.printString
D;JNE

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.charAt 2
@String.charAt$ret.163
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_163
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_163)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.charAt
0;JMP
(String.charAt$ret.163)

// call Output.printChar 1
@Output.printChar$ret.164
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_164
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_164)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.164)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Output.printString
0;JMP

// label WHILE_END0
(WHILE_END0_Output.printString)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.printInt 0
(Output.printInt)
@0
D=A
(Output.printInt$Lcl)
D=D-1
@Output.printInt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.printInt$Lcl
0;JMP
(Output.printInt$LclEnd)

// push static 3
@Output.3
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call String.setInt 2
@String.setInt$ret.165
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_165
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_165)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@String.setInt
0;JMP
(String.setInt$ret.165)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push static 3
@Output.3
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.printString 1
@Output.printString$ret.166
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_166
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_166)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printString
0;JMP
(Output.printString$ret.166)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.println 0
(Output.println)
@0
D=A
(Output.println$Lcl)
D=D-1
@Output.println$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.println$Lcl
0;JMP
(Output.println$LclEnd)

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 352
@352
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 8128
@8128
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_17
D;JEQ
D=0
@END_EQ_17
0;JMP
(EQ_17)
D=-1
(END_EQ_17)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.println
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.println
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.println)

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// label IF_FALSE0
(IF_FALSE0_Output.println)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Output.backSpace 0
(Output.backSpace)
@0
D=A
(Output.backSpace$Lcl)
D=D-1
@Output.backSpace$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Output.backSpace$Lcl
0;JMP
(Output.backSpace$LclEnd)

// push static 2
@Output.2
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Output.backSpace
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Output.backSpace
0;JMP

// label IF_TRUE0
(IF_TRUE0_Output.backSpace)

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_19
D;JGT
D=0
@END_GT_19
0;JMP
(GT_19)
D=-1
(END_GT_19)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Output.backSpace
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Output.backSpace
0;JMP

// label IF_TRUE1
(IF_TRUE1_Output.backSpace)

// push static 0
@Output.0
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// goto IF_END1
@IF_END1_Output.backSpace
0;JMP

// label IF_FALSE1
(IF_FALSE1_Output.backSpace)

// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_18
D;JEQ
D=0
@END_EQ_18
0;JMP
(EQ_18)
D=-1
(END_EQ_18)
@SP
A=M-1
M=D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Output.backSpace
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Output.backSpace
0;JMP

// label IF_TRUE2
(IF_TRUE2_Output.backSpace)

// push constant 8128
@8128
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// label IF_FALSE2
(IF_FALSE2_Output.backSpace)

// push static 1
@Output.1
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 321
@321
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D

// label IF_END1
(IF_END1_Output.backSpace)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D

// goto IF_END0
@IF_END0_Output.backSpace
0;JMP

// label IF_FALSE0
(IF_FALSE0_Output.backSpace)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D

// label IF_END0
(IF_END0_Output.backSpace)

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.drawChar 1
@Output.drawChar$ret.167
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_167
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_167)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.drawChar
0;JMP
(Output.drawChar$ret.167)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.init 1
(Screen.init)
@1
D=A
(Screen.init$Lcl)
D=D-1
@Screen.init$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.init$Lcl
0;JMP
(Screen.init$LclEnd)

// push constant 16384
@16384
D=A
@SP
M=M+1
A=M-1
M=D

// pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop static 2
@SP
AM=M-1
D=M
@Screen.2
M=D

// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.168
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_168
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_168)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.168)

// pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Screen.init)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_23
D;JLT
D=0
@END_LT_23
0;JMP
(LT_23)
D=-1
(END_LT_23)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Screen.init
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Screen.init
0;JMP

// label WHILE_END0
(WHILE_END0_Screen.init)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.clearScreen 1
(Screen.clearScreen)
@1
D=A
(Screen.clearScreen$Lcl)
D=D-1
@Screen.clearScreen$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.clearScreen$Lcl
0;JMP
(Screen.clearScreen$LclEnd)

// label WHILE_EXP0
(WHILE_EXP0_Screen.clearScreen)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 8192
@8192
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_24
D;JLT
D=0
@END_LT_24
0;JMP
(LT_24)
D=-1
(END_LT_24)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Screen.clearScreen
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Screen.clearScreen
0;JMP

// label WHILE_END0
(WHILE_END0_Screen.clearScreen)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.updateLocation 0
(Screen.updateLocation)
@0
D=A
(Screen.updateLocation$Lcl)
D=D-1
@Screen.updateLocation$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.updateLocation$Lcl
0;JMP
(Screen.updateLocation$LclEnd)

// push static 2
@Screen.2
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.updateLocation
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.updateLocation
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.updateLocation)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END0
@IF_END0_Screen.updateLocation
0;JMP

// label IF_FALSE0
(IF_FALSE0_Screen.updateLocation)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@Screen.1
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END0
(IF_END0_Screen.updateLocation)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.setColor 0
(Screen.setColor)
@0
D=A
(Screen.setColor$Lcl)
D=D-1
@Screen.setColor$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.setColor$Lcl
0;JMP
(Screen.setColor$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop static 2
@SP
AM=M-1
D=M
@Screen.2
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawPixel 3
(Screen.drawPixel)
@3
D=A
(Screen.drawPixel$Lcl)
D=D-1
@Screen.drawPixel$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawPixel$Lcl
0;JMP
(Screen.drawPixel$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_25
D;JLT
D=0
@END_LT_25
0;JMP
(LT_25)
D=-1
(END_LT_25)
@SP
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_20
D;JGT
D=0
@END_GT_20
0;JMP
(GT_20)
D=-1
(END_GT_20)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_26
D;JLT
D=0
@END_LT_26
0;JMP
(LT_26)
D=-1
(END_LT_26)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_21
D;JGT
D=0
@END_GT_21
0;JMP
(GT_21)
D=-1
(END_GT_21)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.drawPixel
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.drawPixel
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.drawPixel)

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.169
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_169
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_169)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.169)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Screen.drawPixel)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.170
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_170
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_170)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.170)

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.171
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_171
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_171)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.171)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.172
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_172
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_172)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.172)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.updateLocation 2
@Screen.updateLocation$ret.173
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_173
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_173)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.173)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawConditional 0
(Screen.drawConditional)
@0
D=A
(Screen.drawConditional$Lcl)
D=D-1
@Screen.drawConditional$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawConditional$Lcl
0;JMP
(Screen.drawConditional$LclEnd)

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.drawConditional
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.drawConditional
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.drawConditional)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.drawPixel 2
@Screen.drawPixel$ret.174
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_174
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_174)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.drawPixel
0;JMP
(Screen.drawPixel$ret.174)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END0
@IF_END0_Screen.drawConditional
0;JMP

// label IF_FALSE0
(IF_FALSE0_Screen.drawConditional)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.drawPixel 2
@Screen.drawPixel$ret.175
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_175
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_175)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.drawPixel
0;JMP
(Screen.drawPixel$ret.175)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_END0
(IF_END0_Screen.drawConditional)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawLine 11
(Screen.drawLine)
@11
D=A
(Screen.drawLine$Lcl)
D=D-1
@Screen.drawLine$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawLine$Lcl
0;JMP
(Screen.drawLine$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_27
D;JLT
D=0
@END_LT_27
0;JMP
(LT_27)
D=-1
(END_LT_27)
@SP
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_22
D;JGT
D=0
@END_GT_22
0;JMP
(GT_22)
D=-1
(END_GT_22)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_28
D;JLT
D=0
@END_LT_28
0;JMP
(LT_28)
D=-1
(END_LT_28)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_23
D;JGT
D=0
@END_GT_23
0;JMP
(GT_23)
D=-1
(END_GT_23)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.drawLine
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.drawLine
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.drawLine)

// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.176
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_176
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_176)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.176)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Screen.drawLine)

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.abs 1
@Math.abs$ret.177
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_177
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_177)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.abs$ret.177)

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.abs 1
@Math.abs$ret.178
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_178
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_178)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Math.abs
0;JMP
(Math.abs$ret.178)

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_29
D;JLT
D=0
@END_LT_29
0;JMP
(LT_29)
D=-1
(END_LT_29)
@SP
A=M-1
M=D

// pop local 6
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@6
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_30
D;JLT
D=0
@END_LT_30
0;JMP
(LT_30)
D=-1
(END_LT_30)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_31
D;JLT
D=0
@END_LT_31
0;JMP
(LT_31)
D=-1
(END_LT_31)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Screen.drawLine
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Screen.drawLine
0;JMP

// label IF_TRUE1
(IF_TRUE1_Screen.drawLine)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 2
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 3
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_Screen.drawLine)

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Screen.drawLine
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Screen.drawLine
0;JMP

// label IF_TRUE2
(IF_TRUE2_Screen.drawLine)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 8
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@8
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_24
D;JGT
D=0
@END_GT_24
0;JMP
(GT_24)
D=-1
(END_GT_24)
@SP
A=M-1
M=D

// pop local 7
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@7
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END2
@IF_END2_Screen.drawLine
0;JMP

// label IF_FALSE2
(IF_FALSE2_Screen.drawLine)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 8
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@8
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_25
D;JGT
D=0
@END_GT_25
0;JMP
(GT_25)
D=-1
(END_GT_25)
@SP
A=M-1
M=D

// pop local 7
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@7
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END2
(IF_END2_Screen.drawLine)

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.179
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_179
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_179)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.179)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.180
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_180
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_180)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.180)

// pop local 9
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@9
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.multiply 2
@Math.multiply$ret.181
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_181
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_181)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.181)

// pop local 10
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@10
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.drawConditional 3
@Screen.drawConditional$ret.182
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_182
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_182)
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
@Screen.drawConditional
0;JMP
(Screen.drawConditional$ret.182)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(WHILE_EXP0_Screen.drawLine)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_32
D;JLT
D=0
@END_LT_32
0;JMP
(LT_32)
D=-1
(END_LT_32)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Screen.drawLine
D;JNE

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_33
D;JLT
D=0
@END_LT_33
0;JMP
(LT_33)
D=-1
(END_LT_33)
@SP
A=M-1
M=D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3_Screen.drawLine
D;JNE

// goto IF_FALSE3
@IF_FALSE3_Screen.drawLine
0;JMP

// label IF_TRUE3
(IF_TRUE3_Screen.drawLine)

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END3
@IF_END3_Screen.drawLine
0;JMP

// label IF_FALSE3
(IF_FALSE3_Screen.drawLine)

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4_Screen.drawLine
D;JNE

// goto IF_FALSE4
@IF_FALSE4_Screen.drawLine
0;JMP

// label IF_TRUE4
(IF_TRUE4_Screen.drawLine)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END4
@IF_END4_Screen.drawLine
0;JMP

// label IF_FALSE4
(IF_FALSE4_Screen.drawLine)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END4
(IF_END4_Screen.drawLine)

// label IF_END3
(IF_END3_Screen.drawLine)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.drawConditional 3
@Screen.drawConditional$ret.183
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_183
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_183)
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
@Screen.drawConditional
0;JMP
(Screen.drawConditional$ret.183)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Screen.drawLine
0;JMP

// label WHILE_END0
(WHILE_END0_Screen.drawLine)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawRectangle 9
(Screen.drawRectangle)
@9
D=A
(Screen.drawRectangle$Lcl)
D=D-1
@Screen.drawRectangle$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawRectangle$Lcl
0;JMP
(Screen.drawRectangle$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_26
D;JGT
D=0
@END_GT_26
0;JMP
(GT_26)
D=-1
(END_GT_26)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_27
D;JGT
D=0
@END_GT_27
0;JMP
(GT_27)
D=-1
(END_GT_27)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_34
D;JLT
D=0
@END_LT_34
0;JMP
(LT_34)
D=-1
(END_LT_34)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_28
D;JGT
D=0
@END_GT_28
0;JMP
(GT_28)
D=-1
(END_GT_28)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_35
D;JLT
D=0
@END_LT_35
0;JMP
(LT_35)
D=-1
(END_LT_35)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_29
D;JGT
D=0
@END_GT_29
0;JMP
(GT_29)
D=-1
(END_GT_29)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.drawRectangle
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.drawRectangle
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.drawRectangle)

// push constant 9
@9
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.184
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_184
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_184)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.184)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Screen.drawRectangle)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.185
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_185
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_185)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.185)

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.186
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_186
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_186)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.186)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 7
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@7
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.187
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_187
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_187)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.187)

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.188
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_188
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_188)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.188)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 8
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@8
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// not
@SP
A=M-1
M=!M

// pop local 6
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@6
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.189
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_189
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_189)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.189)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Screen.drawRectangle)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_30
D;JGT
D=0
@END_GT_30
0;JMP
(GT_30)
D=-1
(END_GT_30)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Screen.drawRectangle
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_19
D;JEQ
D=0
@END_EQ_19
0;JMP
(EQ_19)
D=-1
(END_EQ_19)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Screen.drawRectangle
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Screen.drawRectangle
0;JMP

// label IF_TRUE1
(IF_TRUE1_Screen.drawRectangle)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// call Screen.updateLocation 2
@Screen.updateLocation$ret.190
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_190
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_190)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.190)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END1
@IF_END1_Screen.drawRectangle
0;JMP

// label IF_FALSE1
(IF_FALSE1_Screen.drawRectangle)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.updateLocation 2
@Screen.updateLocation$ret.191
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_191
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_191)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.191)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP1
(WHILE_EXP1_Screen.drawRectangle)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_36
D;JLT
D=0
@END_LT_36
0;JMP
(LT_36)
D=-1
(END_LT_36)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1_Screen.drawRectangle
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// call Screen.updateLocation 2
@Screen.updateLocation$ret.192
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_192
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_192)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.192)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP1
@WHILE_EXP1_Screen.drawRectangle
0;JMP

// label WHILE_END1
(WHILE_END1_Screen.drawRectangle)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.updateLocation 2
@Screen.updateLocation$ret.193
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_193
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_193)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.193)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_END1
(IF_END1_Screen.drawRectangle)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Screen.drawRectangle
0;JMP

// label WHILE_END0
(WHILE_END0_Screen.drawRectangle)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawHorizontal 11
(Screen.drawHorizontal)
@11
D=A
(Screen.drawHorizontal$Lcl)
D=D-1
@Screen.drawHorizontal$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawHorizontal$Lcl
0;JMP
(Screen.drawHorizontal$LclEnd)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.min 2
@Math.min$ret.194
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_194
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_194)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.min
0;JMP
(Math.min$ret.194)

// pop local 7
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@7
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.max 2
@Math.max$ret.195
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_195
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_195)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.max
0;JMP
(Math.max$ret.195)

// pop local 8
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@8
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_31
D;JGT
D=0
@END_GT_31
0;JMP
(GT_31)
D=-1
(END_GT_31)
@SP
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 256
@256
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_37
D;JLT
D=0
@END_LT_37
0;JMP
(LT_37)
D=-1
(END_LT_37)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 512
@512
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_38
D;JLT
D=0
@END_LT_38
0;JMP
(LT_38)
D=-1
(END_LT_38)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_32
D;JGT
D=0
@END_GT_32
0;JMP
(GT_32)
D=-1
(END_GT_32)
@SP
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.drawHorizontal
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.drawHorizontal
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.drawHorizontal)

// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.max 2
@Math.max$ret.196
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_196
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_196)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.max
0;JMP
(Math.max$ret.196)

// pop local 7
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@7
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.min 2
@Math.min$ret.197
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_197
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_197)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.min
0;JMP
(Math.min$ret.197)

// pop local 8
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@8
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.198
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_198
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_198)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.198)

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.199
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_199
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_199)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.199)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 9
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@9
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.200
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_200
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_200)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.200)

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.201
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_201
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_201)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.201)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 10
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@10
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// not
@SP
A=M-1
M=!M

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 0
@Screen.0
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.202
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_202
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_202)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.202)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 6
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@6
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_20
D;JEQ
D=0
@END_EQ_20
0;JMP
(EQ_20)
D=-1
(END_EQ_20)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Screen.drawHorizontal
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Screen.drawHorizontal
0;JMP

// label IF_TRUE1
(IF_TRUE1_Screen.drawHorizontal)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// call Screen.updateLocation 2
@Screen.updateLocation$ret.203
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_203
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_203)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.203)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto IF_END1
@IF_END1_Screen.drawHorizontal
0;JMP

// label IF_FALSE1
(IF_FALSE1_Screen.drawHorizontal)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.updateLocation 2
@Screen.updateLocation$ret.204
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_204
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_204)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.204)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_Screen.drawHorizontal)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_39
D;JLT
D=0
@END_LT_39
0;JMP
(LT_39)
D=-1
(END_LT_39)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Screen.drawHorizontal
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// call Screen.updateLocation 2
@Screen.updateLocation$ret.205
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_205
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_205)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.205)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Screen.drawHorizontal
0;JMP

// label WHILE_END0
(WHILE_END0_Screen.drawHorizontal)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.updateLocation 2
@Screen.updateLocation$ret.206
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_206
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_206)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Screen.updateLocation
0;JMP
(Screen.updateLocation$ret.206)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_END1
(IF_END1_Screen.drawHorizontal)

// label IF_FALSE0
(IF_FALSE0_Screen.drawHorizontal)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawSymetric 0
(Screen.drawSymetric)
@0
D=A
(Screen.drawSymetric$Lcl)
D=D-1
@Screen.drawSymetric$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawSymetric$Lcl
0;JMP
(Screen.drawSymetric$LclEnd)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.207
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_207
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_207)
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.207)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.208
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_208
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_208)
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.208)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.209
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_209
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_209)
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.209)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawHorizontal 3
@Screen.drawHorizontal$ret.210
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_210
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_210)
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$ret.210)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Screen.drawCircle 3
(Screen.drawCircle)
@3
D=A
(Screen.drawCircle$Lcl)
D=D-1
@Screen.drawCircle$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Screen.drawCircle$Lcl
0;JMP
(Screen.drawCircle$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_40
D;JLT
D=0
@END_LT_40
0;JMP
(LT_40)
D=-1
(END_LT_40)
@SP
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_33
D;JGT
D=0
@END_GT_33
0;JMP
(GT_33)
D=-1
(END_GT_33)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_41
D;JLT
D=0
@END_LT_41
0;JMP
(LT_41)
D=-1
(END_LT_41)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_34
D;JGT
D=0
@END_GT_34
0;JMP
(GT_34)
D=-1
(END_GT_34)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Screen.drawCircle
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Screen.drawCircle
0;JMP

// label IF_TRUE0
(IF_TRUE0_Screen.drawCircle)

// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.211
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_211
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_211)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.211)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Screen.drawCircle)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_42
D;JLT
D=0
@END_LT_42
0;JMP
(LT_42)
D=-1
(END_LT_42)
@SP
A=M-1
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_35
D;JGT
D=0
@END_GT_35
0;JMP
(GT_35)
D=-1
(END_GT_35)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_43
D;JLT
D=0
@END_LT_43
0;JMP
(LT_43)
D=-1
(END_LT_43)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 255
@255
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_36
D;JGT
D=0
@END_GT_36
0;JMP
(GT_36)
D=-1
(END_GT_36)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_Screen.drawCircle
D;JNE

// goto IF_FALSE1
@IF_FALSE1_Screen.drawCircle
0;JMP

// label IF_TRUE1
(IF_TRUE1_Screen.drawCircle)

// push constant 13
@13
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.212
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_212
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_212)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.212)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE1
(IF_FALSE1_Screen.drawCircle)

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.drawSymetric 4
@Screen.drawSymetric$ret.213
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_213
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_213)
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
@Screen.drawSymetric
0;JMP
(Screen.drawSymetric$ret.213)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(WHILE_EXP0_Screen.drawCircle)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_37
D;JGT
D=0
@END_GT_37
0;JMP
(GT_37)
D=-1
(END_GT_37)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Screen.drawCircle
D;JNE

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_44
D;JLT
D=0
@END_LT_44
0;JMP
(LT_44)
D=-1
(END_LT_44)
@SP
A=M-1
M=D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_Screen.drawCircle
D;JNE

// goto IF_FALSE2
@IF_FALSE2_Screen.drawCircle
0;JMP

// label IF_TRUE2
(IF_TRUE2_Screen.drawCircle)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.214
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_214
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_214)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.214)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END2
@IF_END2_Screen.drawCircle
0;JMP

// label IF_FALSE2
(IF_FALSE2_Screen.drawCircle)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.multiply 2
@Math.multiply$ret.215
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_215
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_215)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.215)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_END2
(IF_END2_Screen.drawCircle)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Screen.drawSymetric 4
@Screen.drawSymetric$ret.216
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_216
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_216)
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
@Screen.drawSymetric
0;JMP
(Screen.drawSymetric$ret.216)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Screen.drawCircle
0;JMP

// label WHILE_END0
(WHILE_END0_Screen.drawCircle)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.new 0
(String.new)
@0
D=A
(String.new$Lcl)
D=D-1
@String.new$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.new$Lcl
0;JMP
(String.new$LclEnd)

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.alloc 1
@Memory.alloc$ret.217
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_217
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_217)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Memory.alloc
0;JMP
(Memory.alloc$ret.217)

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_45
D;JLT
D=0
@END_LT_45
0;JMP
(LT_45)
D=-1
(END_LT_45)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.new
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.new
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.new)

// push constant 14
@14
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.218
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_218
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_218)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.218)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.new)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_38
D;JGT
D=0
@END_GT_38
0;JMP
(GT_38)
D=-1
(END_GT_38)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_String.new
D;JNE

// goto IF_FALSE1
@IF_FALSE1_String.new
0;JMP

// label IF_TRUE1
(IF_TRUE1_String.new)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.219
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_219
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_219)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.219)

// pop this 1
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_String.new)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 0
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.dispose 0
(String.dispose)
@0
D=A
(String.dispose$Lcl)
D=D-1
@String.dispose$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.dispose$Lcl
0;JMP
(String.dispose$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_39
D;JGT
D=0
@END_GT_39
0;JMP
(GT_39)
D=-1
(END_GT_39)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.dispose
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.dispose
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.dispose)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Array.dispose 1
@Array.dispose$ret.220
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_220
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_220)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.dispose
0;JMP
(Array.dispose$ret.220)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.dispose)

// push pointer 0
@THIS
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.deAlloc 1
@Memory.deAlloc$ret.221
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_221
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_221)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Memory.deAlloc
0;JMP
(Memory.deAlloc$ret.221)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.length 0
(String.length)
@0
D=A
(String.length$Lcl)
D=D-1
@String.length$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.length$Lcl
0;JMP
(String.length$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.charAt 0
(String.charAt)
@0
D=A
(String.charAt$Lcl)
D=D-1
@String.charAt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.charAt$Lcl
0;JMP
(String.charAt$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_46
D;JLT
D=0
@END_LT_46
0;JMP
(LT_46)
D=-1
(END_LT_46)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_40
D;JGT
D=0
@END_GT_40
0;JMP
(GT_40)
D=-1
(END_GT_40)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_21
D;JEQ
D=0
@END_EQ_21
0;JMP
(EQ_21)
D=-1
(END_EQ_21)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.charAt
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.charAt
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.charAt)

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.222
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_222
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_222)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.222)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.charAt)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.setCharAt 0
(String.setCharAt)
@0
D=A
(String.setCharAt$Lcl)
D=D-1
@String.setCharAt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.setCharAt$Lcl
0;JMP
(String.setCharAt$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_47
D;JLT
D=0
@END_LT_47
0;JMP
(LT_47)
D=-1
(END_LT_47)
@SP
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_41
D;JGT
D=0
@END_GT_41
0;JMP
(GT_41)
D=-1
(END_GT_41)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_22
D;JEQ
D=0
@END_EQ_22
0;JMP
(EQ_22)
D=-1
(END_EQ_22)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.setCharAt
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.setCharAt
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.setCharAt)

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.223
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_223
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_223)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.223)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.setCharAt)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.appendChar 0
(String.appendChar)
@0
D=A
(String.appendChar$Lcl)
D=D-1
@String.appendChar$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.appendChar$Lcl
0;JMP
(String.appendChar$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_23
D;JEQ
D=0
@END_EQ_23
0;JMP
(EQ_23)
D=-1
(END_EQ_23)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.appendChar
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.appendChar
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.appendChar)

// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.224
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_224
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_224)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.224)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.appendChar)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.eraseLastChar 0
(String.eraseLastChar)
@0
D=A
(String.eraseLastChar$Lcl)
D=D-1
@String.eraseLastChar$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.eraseLastChar$Lcl
0;JMP
(String.eraseLastChar$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_24
D;JEQ
D=0
@END_EQ_24
0;JMP
(EQ_24)
D=-1
(END_EQ_24)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.eraseLastChar
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.eraseLastChar
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.eraseLastChar)

// push constant 18
@18
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.225
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_225
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_225)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.225)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.eraseLastChar)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.intValue 5
(String.intValue)
@5
D=A
(String.intValue$Lcl)
D=D-1
@String.intValue$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.intValue$Lcl
0;JMP
(String.intValue$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_25
D;JEQ
D=0
@END_EQ_25
0;JMP
(EQ_25)
D=-1
(END_EQ_25)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.intValue
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.intValue
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.intValue)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// label IF_FALSE0
(IF_FALSE0_String.intValue)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_26
D;JEQ
D=0
@END_EQ_26
0;JMP
(EQ_26)
D=-1
(END_EQ_26)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_String.intValue
D;JNE

// goto IF_FALSE1
@IF_FALSE1_String.intValue
0;JMP

// label IF_TRUE1
(IF_TRUE1_String.intValue)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@4
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_String.intValue)

// label WHILE_EXP0
(WHILE_EXP0_String.intValue)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_48
D;JLT
D=0
@END_LT_48
0;JMP
(LT_48)
D=-1
(END_LT_48)
@SP
A=M-1
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_String.intValue
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_49
D;JLT
D=0
@END_LT_49
0;JMP
(LT_49)
D=-1
(END_LT_49)
@SP
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 9
@9
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_42
D;JGT
D=0
@END_GT_42
0;JMP
(GT_42)
D=-1
(END_GT_42)
@SP
A=M-1
M=D

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_String.intValue
D;JNE

// goto IF_FALSE2
@IF_FALSE2_String.intValue
0;JMP

// label IF_TRUE2
(IF_TRUE2_String.intValue)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.226
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_226
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_226)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.226)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE2
(IF_FALSE2_String.intValue)

// goto WHILE_EXP0
@WHILE_EXP0_String.intValue
0;JMP

// label WHILE_END0
(WHILE_END0_String.intValue)

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3_String.intValue
D;JNE

// goto IF_FALSE3
@IF_FALSE3_String.intValue
0;JMP

// label IF_TRUE3
(IF_TRUE3_String.intValue)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE3
(IF_FALSE3_String.intValue)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.setInt 4
(String.setInt)
@4
D=A
(String.setInt$Lcl)
D=D-1
@String.setInt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.setInt$Lcl
0;JMP
(String.setInt$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_27
D;JEQ
D=0
@END_EQ_27
0;JMP
(EQ_27)
D=-1
(END_EQ_27)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_String.setInt
D;JNE

// goto IF_FALSE0
@IF_FALSE0_String.setInt
0;JMP

// label IF_TRUE0
(IF_TRUE0_String.setInt)

// push constant 19
@19
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.227
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_227
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_227)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.227)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_String.setInt)

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// call Array.new 1
@Array.new$ret.228
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_228
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_228)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.new
0;JMP
(Array.new$ret.228)

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_50
D;JLT
D=0
@END_LT_50
0;JMP
(LT_50)
D=-1
(END_LT_50)
@SP
A=M-1
M=D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1_String.setInt
D;JNE

// goto IF_FALSE1
@IF_FALSE1_String.setInt
0;JMP

// label IF_TRUE1
(IF_TRUE1_String.setInt)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@3
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE1
(IF_FALSE1_String.setInt)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0_String.setInt)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_43
D;JGT
D=0
@END_GT_43
0;JMP
(GT_43)
D=-1
(END_GT_43)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_String.setInt
D;JNE

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@Math.divide$ret.229
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_229
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_229)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.divide
0;JMP
(Math.divide$ret.229)

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@Math.multiply$ret.230
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_230
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_230)
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@Math.multiply
0;JMP
(Math.multiply$ret.230)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@1
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_String.setInt
0;JMP

// label WHILE_END0
(WHILE_END0_String.setInt)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2_String.setInt
D;JNE

// goto IF_FALSE2
@IF_FALSE2_String.setInt
0;JMP

// label IF_TRUE2
(IF_TRUE2_String.setInt)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label IF_FALSE2
(IF_FALSE2_String.setInt)

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_51
D;JLT
D=0
@END_LT_51
0;JMP
(LT_51)
D=-1
(END_LT_51)
@SP
A=M-1
M=D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3_String.setInt
D;JNE

// goto IF_FALSE3
@IF_FALSE3_String.setInt
0;JMP

// label IF_TRUE3
(IF_TRUE3_String.setInt)

// push constant 19
@19
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.231
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_231
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_231)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.231)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE3
(IF_FALSE3_String.setInt)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQ_28
D;JEQ
D=0
@END_EQ_28
0;JMP
(EQ_28)
D=-1
(END_EQ_28)
@SP
A=M-1
M=D

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4_String.setInt
D;JNE

// goto IF_FALSE4
@IF_FALSE4_String.setInt
0;JMP

// label IF_TRUE4
(IF_TRUE4_String.setInt)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END4
@IF_END4_String.setInt
0;JMP

// label IF_FALSE4
(IF_FALSE4_String.setInt)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP1
(WHILE_EXP1_String.setInt)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_52
D;JLT
D=0
@END_LT_52
0;JMP
(LT_52)
D=-1
(END_LT_52)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1_String.setInt
D;JNE

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

// push temp 0
@5
D=M
@SP
M=M+1
A=M-1
M=D

// pop that 0
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@THIS
D=M
@2
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP1
@WHILE_EXP1_String.setInt
0;JMP

// label WHILE_END1
(WHILE_END1_String.setInt)

// label IF_END4
(IF_END4_String.setInt)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Array.dispose 1
@Array.dispose$ret.232
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_232
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_232)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Array.dispose
0;JMP
(Array.dispose$ret.232)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.newLine 0
(String.newLine)
@0
D=A
(String.newLine$Lcl)
D=D-1
@String.newLine$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.newLine$Lcl
0;JMP
(String.newLine$LclEnd)

// push constant 128
@128
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.backSpace 0
(String.backSpace)
@0
D=A
(String.backSpace$Lcl)
D=D-1
@String.backSpace$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.backSpace$Lcl
0;JMP
(String.backSpace$LclEnd)

// push constant 129
@129
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function String.doubleQuote 0
(String.doubleQuote)
@0
D=A
(String.doubleQuote$Lcl)
D=D-1
@String.doubleQuote$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@String.doubleQuote$Lcl
0;JMP
(String.doubleQuote$LclEnd)

// push constant 34
@34
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Sys.init 0
(Sys.init)
@0
D=A
(Sys.init$Lcl)
D=D-1
@Sys.init$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Sys.init$Lcl
0;JMP
(Sys.init$LclEnd)

// call Memory.init 0
@Memory.init$ret.233
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_233
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_233)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Memory.init
0;JMP
(Memory.init$ret.233)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Math.init 0
@Math.init$ret.234
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_234
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_234)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Math.init
0;JMP
(Math.init$ret.234)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Screen.init 0
@Screen.init$ret.235
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_235
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_235)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Screen.init
0;JMP
(Screen.init$ret.235)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Output.init 0
@Output.init$ret.236
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_236
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_236)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Output.init
0;JMP
(Output.init$ret.236)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Keyboard.init 0
@Keyboard.init$ret.237
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_237
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_237)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Keyboard.init
0;JMP
(Keyboard.init$ret.237)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Main.main 0
@Main.main$ret.238
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_238
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_238)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Main.main
0;JMP
(Main.main$ret.238)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@Sys.halt$ret.239
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_239
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_239)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Sys.halt
0;JMP
(Sys.halt$ret.239)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Sys.halt 0
(Sys.halt)
@0
D=A
(Sys.halt$Lcl)
D=D-1
@Sys.halt$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Sys.halt$Lcl
0;JMP
(Sys.halt$LclEnd)

// label WHILE_EXP0
(WHILE_EXP0_Sys.halt)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Sys.halt
D;JNE

// goto WHILE_EXP0
@WHILE_EXP0_Sys.halt
0;JMP

// label WHILE_END0
(WHILE_END0_Sys.halt)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Sys.wait 1
(Sys.wait)
@1
D=A
(Sys.wait$Lcl)
D=D-1
@Sys.wait$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Sys.wait$Lcl
0;JMP
(Sys.wait$LclEnd)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LT_53
D;JLT
D=0
@END_LT_53
0;JMP
(LT_53)
D=-1
(END_LT_53)
@SP
A=M-1
M=D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0_Sys.wait
D;JNE

// goto IF_FALSE0
@IF_FALSE0_Sys.wait
0;JMP

// label IF_TRUE0
(IF_TRUE0_Sys.wait)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.error 1
@Sys.error$ret.240
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_240
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_240)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Sys.error
0;JMP
(Sys.error$ret.240)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(IF_FALSE0_Sys.wait)

// label WHILE_EXP0
(WHILE_EXP0_Sys.wait)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_44
D;JGT
D=0
@END_GT_44
0;JMP
(GT_44)
D=-1
(END_GT_44)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0_Sys.wait
D;JNE

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label WHILE_EXP1
(WHILE_EXP1_Sys.wait)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GT_45
D;JGT
D=0
@END_GT_45
0;JMP
(GT_45)
D=-1
(END_GT_45)
@SP
A=M-1
M=D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1_Sys.wait
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@SP
AM=M-1
D=M
@R13
M=D
@LCL
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP1
@WHILE_EXP1_Sys.wait
0;JMP

// label WHILE_END1
(WHILE_END1_Sys.wait)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop argument 0
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@0
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto WHILE_EXP0
@WHILE_EXP0_Sys.wait
0;JMP

// label WHILE_END0
(WHILE_END0_Sys.wait)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

// function Sys.error 0
(Sys.error)
@0
D=A
(Sys.error$Lcl)
D=D-1
@Sys.error$LclEnd
D;JLT
@SP
M=M+1
A=M-1
M=0
@Sys.error$Lcl
0;JMP
(Sys.error$LclEnd)

// push constant 69
@69
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.printChar 1
@Output.printChar$ret.241
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_241
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_241)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.241)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.printChar 1
@Output.printChar$ret.242
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_242
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_242)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.242)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.printChar 1
@Output.printChar$ret.243
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_243
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_243)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printChar
0;JMP
(Output.printChar$ret.243)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.printInt 1
@Output.printInt$ret.244
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_244
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_244)
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@Output.printInt
0;JMP
(Output.printInt$ret.244)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@Sys.halt$ret.245
D=A
@SP
M=M+1
A=M-1
M=D
@SAVE_RET_245
D=A
@R13
M=D
@SAVE
0;JMP
(SAVE_RET_245)
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@Sys.halt
0;JMP
(Sys.halt$ret.245)

// pop temp 0
@SP
AM=M-1
D=M
@5
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// return
@RESTORE
0;JMP

(END_PROGRAM)
@END_PROGRAM
0;JMP
