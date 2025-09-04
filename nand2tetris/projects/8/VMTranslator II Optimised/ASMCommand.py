C_ARITHMETIC_ADD_BOOTSTRAP = [
    "(ADD)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13 // Y",
    "D=M", 
    "@14 // X",
    "M=M+D",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_ADD = [
    "@ARITHMETIC_ADD.{count}",
    "D=A",
    "@15",
    "M=D",
    "@ADD",
    "0;JMP",
    "(ARITHMETIC_ADD.{count})"
]

C_ARITHMETIC_SUB_BOOTSTRAP = [
    "(SUB)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13 // Y",
    "D=M", 
    "@14 // X",
    "M=M-D",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_SUB =[
    "@ARITHMETIC_SUB.{count}",
    "D=A",
    "@15",
    "M=D",
    "@SUB",
    "0;JMP",
    "(ARITHMETIC_SUB.{count})"
]

C_ARITHMETIC_NEG_BOOTSTRAP = [
    "(NEG)",
    "@SP // pop from stack to memory address 13",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@14 // X", 
    "M=-M",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_NEG = [
    "@ARITHMETIC_NEG.{count}",
    "D=A",
    "@15",
    "M=D",
    "@NEG",
    "0;JMP",
    "(ARITHMETIC_NEG.{count})"
]

C_ARITHMETIC_EQ_BOOTSTRAP = [
    "(EQ)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13 // y",
    "D=M", 
    "@14 // x",
    "D=M-D", 
    "@ISEQ",
    "D;JEQ",
    "D=0",
    "@ENDEQ",
    "0;JMP",
    "(ISE)",
    "D=-1",
    "(ENDEQ)",
    "@14",
    "M=D",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_EQ = [
    "@ARITHMETIC_EQ.{count}",
    "D=A",
    "@15",
    "M=D",
    "@EQ",
    "0;JMP",
    "(ARITHMETIC_EQ.{count})"
]

C_ARITHMETIC_GT_BOOTSTRAP = [
    "(GT)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13  // Y",
    "D=M",
    "@14 // X",
    "D=M-D",
    "@ISGT", 
    "D;JGT",
    "D=0",
    "@ENDGT",
    "0;JMP",
    "(ISGT)",
    "D=-1",
    "(ENDGT)",
    "@14",
    "M=D",
    "@14 // push memory address 14 to stack",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]
C_ARITHMETIC_GT = [
    "@ARITHMETIC_GT.{count}",
    "D=A",
    "@15",
    "M=D",
    "@GT",
    "0;JMP",
    "(ARITHMETIC_GT.{count})"
]

C_ARITHMETIC_LT_BOOTSTRAP = [
    "(LT)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13  // Y",
    "D=M", 
    "@14 // X",
    "D=M-D",
    "@ISLT", 
    "D;JLT",
    "D=0",
    "@ENDLT",
    "0;JMP",
    "(ISLT)",
    "D=-1",
    "(ENDLT)",
    "@14",
    "M=D",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_LT = [
    "@ARITHMETIC_LT.{count}",
    "D=A",
    "@15",
    "M=D",
    "@LT",
    "0;JMP",
    "(ARITHMETIC_LT.{count})"
]

C_ARITHMETIC_AND_BOOTSTRAP = [
    "(AND)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13 // first pop value",
    "D=M", 
    "@14 // second pop value",
    "M = M&D",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_AND = [
    "@ARITHMETIC_AND.{count}",
    "D=A",
    "@15",
    "M=D",
    "@AND",
    "0;JMP",
    "(ARITHMETIC_AND.{count})"
]

C_ARITHMETIC_OR_BOOTSTRAP = [
    "(OR)",
    "@SP // pop from stack to memory address 13 and 14",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@SP",
    "AM=M-1",
    "D=M",
    "@14",
    "M=D",
    "@13 // first pop value",
    "D=M", 
    "@14 // second pop value",
    "M = M|D",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_OR = [  
    "@ARITHMETIC_OR.{count}",
    "D=A",
    "@15",
    "M=D",
    "@OR",
    "0;JMP",
    "(ARITHMETIC_OR.{count})"
]

C_ARITHMETIC_NOT_BOOTSTRAP = [
    "(NOT)",
    "@SP // pop from stack to memory address 13",
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@14 // first pop value",
    "M=!M",
    "@14 // push memory address 14 to stack ",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@15",
    "A=M",
    "0;JMP"
]

C_ARITHMETIC_NOT = [
    "@ARITHMETIC_NOT.{count}",
    "D=A",
    "@15",
    "M=D",
    "@NOT",
    "0;JMP",
    "(ARITHMETIC_NOT.{count})"
]

C_LABEL =[
    "({label})"
]

C_GOTO =[
    "@{label}", 
    "0;JMP"
]

C_IF = [
    "@SP // pop from stack to memory address 13", 
    "AM=M-1",
    "D=M",
    "@13",
    "M=D",
    "@13", 
    "D=M", 
    "@{label}",
    "D;JNE"
]

C_FUNCTION = [
    "({functionName})",
    "//@{nVars}",
    "//D=A",
    "//@SP", 
    "//M=M+D"
]
 
C_CALL_BOOTSTRAP = [
    "(SAVEFRAME)",
    "@LCL // push LCL pointer",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@ARG // push ARG pointer",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@THIS // push THIS pointer",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@THAT // push THAT pointer",
    "D=M",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@SP // reposition ARG pointer to be SP - 5 - nArgs", 
    "D=M", 
    "@5", 
    "D=D-A", 
    "@15",
    "A=M",
    "0;JMP",
    ]

C_CALL = [
    "@{returnLabel} // push return label",
    "D=A",
    "@SP", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
    "@RETURNFROMSAVEFRAME.{callCount}",
    "D=A",
    "@15",
    "M=D",
    "@SAVEFRAME",
    "0;JMP",
    "(RETURNFROMSAVEFRAME.{callCount})",
    "@{nArgs}",
    "D=D-A", 
    "@ARG", 
    "M=D", 
    "@SP // reposition LCL pointer to be that of SP",
    "D=M", 
    "@LCL",
    "M=D", 
    "@{functionName} // make jump",
    "0;JMP",
    "({returnLabel})"
]


C_RETURN_BOOTSTRAP = [
    "@BOOTSTRAP",
    "0;JMP",
    "(RETURN)",
    "@LCL //frame = LCL",
    "D=M",
    "@13 // frame",
    "M=D",
    "@5 //retAddr = frame-5",
    "D=A",
    "@13",
    "D=M-D // RAM address that has the return address (ROM)", 
    "A=D", 
    "D=M //return address itself",
    "@14 // retAddr",
    "M=D",
    "@SP // reposition return value to arg 0", 
    "M=M-1",
    "A=M",
    "D=M", 
    "@ARG",
    "A=M", 
    "M=D",
    "@ARG //SP = ARG+1", 
    "D=M", 
    "@SP", 
    "M=D+1",    
    "@13 //THAT = *frame-1",
    "D=M-1",
    "A=D",
    "D=M",
    "@THAT", 
    "M=D",
    "@13 //THIS = *frame-2",
    "D=M", 
    "@2",
    "D=D-A",
    "A=D",
    "D=M", 
    "@THIS", 
    "M=D",
    "@13 //ARG = *frame-3",
    "D=M", 
    "@3",
    "D=D-A",
    "A=D",
    "D=M",
    "@ARG", 
    "M=D",
    "@13 //LCL = *frame-4",
    "D=M", 
    "@4",
    "D=D-A", 
    "A=D",
    "D=M",
    "@LCL", 
    "M=D",
    "@14 //goto retAddr",
    "A=M",
    "0;JMP"
]

C_RETURN = [
    "@RETURN",
    "0;JMP"
]

BOOTSTRAP_CODE = C_RETURN_BOOTSTRAP + C_CALL_BOOTSTRAP + C_ARITHMETIC_ADD_BOOTSTRAP+C_ARITHMETIC_SUB_BOOTSTRAP + C_ARITHMETIC_NEG_BOOTSTRAP + C_ARITHMETIC_GT_BOOTSTRAP + C_ARITHMETIC_LT_BOOTSTRAP + C_ARITHMETIC_AND_BOOTSTRAP + C_ARITHMETIC_OR_BOOTSTRAP + C_ARITHMETIC_NOT_BOOTSTRAP