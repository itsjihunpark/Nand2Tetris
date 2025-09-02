// Push (Not from constant or static memory segment)
@[Index Value]
D=A
@[Segment]
A=M+D
D=M

@SP
A=M 
M=D
@SP
M=M+1

// Push (From constant or static memory segment)
@[Filename.index]
D=A

@SP
A=M 
M=D
@SP
M=M+1

// Push (From constant or static memory segment)
@[Constant Value]
D=M 

@SP
A=M 
M=D
@SP
M=M+1

//Pop (To static memory segment)
@SP
M=M-1
A=M
D=M 

@[Filename.index]
M=D

// Pop (To memory segment that is not static)
@SP
M=M-1
A=M 
D=M 

@13 // memory space needed by VM translator
M=D // load value from the top of stack
@[Index]
D=A
@[Segment]
D=D+A
@14
M=D // load target memory segment address
@13
D=M 
@14
A=M 
M=D

// Pop - without using temporary memory spaces using the below concept:

// swap (x,y): 
//  x=x+y
//  y=x-y
//  x=x-y

// works by storing two pieces of information in one variable

@SP
M=M-1
A=M 
D=M // D = pop value
@[Segment]
D=D+M // D = pop value + base memory address of mem segment
@Index
D=D+A // D = pop value + address to pop to

@SP
A=M 
A=M // A = pop value
A=D-A // A = address to pop to
M=D-A // M = pop value 


// Arithmetics:
RAM[13]
RAM[14]


"//ADD",
"@13 // Y",
"D=M", 
"@14 // X",
"M=M+D",

"//SUB",
"@13 // Y",
"D=M", 
"@14 // X",
"M=M-D",

"//NEG",
"@14 // X",
"M=-M",

"//EQ",
"@13 // y",
"D=M", 
"@14 // x",
"D=M-D", 
"@EQ",
"D;JEQ",
"D=0",
"@ENDEQ",
"0;JMP",
"(EQ)",
"D=-1",
"(ENDEQ)",
"@14",
"M=D",

"//GT",
"@13  // Y",
"D=M", 
"@14 // X",
"D=M-D",
"@GT", 
"D;JGT",
"D=0",
"@ENDGT",
"0;JMP",
"(GT)",
"D=-1",
"(ENDGT)",
"@14",
"M=D",

"//LT
"@13  // Y",
"D=M", 
"@14 // X",
"D=M-D",
"@LT", 
"D;JLT",
"D=0",
"@ENDLT",
"0;JMP",
"(LT)",
"D=-1",
"(ENDLT)",
"@14",
"M=D",

"//AND",
"@13 // first pop value",
"D=M", 
"@14 // second pop value",
"M = M&D",

"//OR",
"@13 // first pop value",
"D=M", 
"@14 // second pop value",
"M = M|D",

"//NOT",
"@14 // first pop value",
"M=!M",


// label 
(label)

// goto label
@label
0;JMP

// if-goto label
pop R13
@13
D=M 
@label
D;JNE


// function
(function)
push contant 0 // *n/o local args


// return
    //frame = LCL
    @LCL
    D=M 
    @13 // frame
    M=D

    //retAddr = frame-5
    @5
    D=A
    @13
    D=M-D
    @14 // retAddr
    M=D

    //*ARG = pop()
    pop(15)
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

// call
    (functionName$ret.i)
    push(functionName$ret.i)
    push(LCL,0)
    push(ARG,0)
    push(THIS,0)
    push(THAT,0)

    @SP
    A=M 
    D=A 
    @5 
    D=D-A 
    @{nArgs}
    D=D-A 
    @ARG 
    M=D 
    @SP
    D=M 
    @LCL 
    M=D 
    @{functionName}
    0;JMP