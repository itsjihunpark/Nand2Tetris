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


//ADD
@13 // first pop value
D=M 
@14 // second pop value
M=M+D

//SUB
@13 // first pop value
D=M 
@14 // second pop value
M=M-D

//NEG
@13 // first pop value
M=-M

//EQ
//GT
//LT

//AND
@13 // first pop value
D=M 
@14 // second pop value
M = M&D

//OR
@13 // first pop value
D=M 
@14 // second pop value
M = M|D

//NOT
@13 // first pop value
M=!M