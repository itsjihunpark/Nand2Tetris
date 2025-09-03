//C_PUSH arg1: constant arg2: 0 push constant 0
@0
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
//C_LABEL arg1: LOOP arg2: None label LOOP
(BasicLoop.$LOOP)//C_PUSH arg1: argument arg2: 0 push argument 0
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
//C_ARITHMETIC arg1: add arg2: None add
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
M=M+D
@14 // push memory address 14 to stack 
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
//C_PUSH arg1: constant arg2: 1 push constant 1
@1
D=A
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
//C_IF arg1: LOOP arg2: None if-goto LOOP
@SP // pop from stack to memory address 13
M=M-1
A=M
D=M
@13
M=D
@13
D=M
@BasicLoop.$LOOP
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
