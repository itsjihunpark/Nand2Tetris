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
D=M 

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