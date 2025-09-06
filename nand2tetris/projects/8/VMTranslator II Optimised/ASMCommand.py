C_ARITHMETIC_ADD_BOOTSTRAP = [
    "(ADD)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M // Y",
    "@SP",
    "AM=M-1",
    "D=M+D // D = X+Y",
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
    "@ADD",
    "0;JMP",
    "(ARITHMETIC_ADD.{count})"
]

C_ARITHMETIC_SUB_BOOTSTRAP = [
    "(SUB)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M // Y",
    "@SP",
    "AM=M-1",
    "D=M-D //D = X-Y",
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
    "@SUB",
    "0;JMP",
    "(ARITHMETIC_SUB.{count})"
]

C_ARITHMETIC_NEG_BOOTSTRAP = [
    "(NEG)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=-M",
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
    "@NEG",
    "0;JMP",
    "(ARITHMETIC_NEG.{count})"
]

C_ARITHMETIC_EQ_BOOTSTRAP = [
    "(EQ)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M",
    "@SP",
    "AM=M-1",
    "D=M-D",
    "@ISEQ",
    "D;JEQ",
    "D=0",
    "@ENDEQ",
    "0;JMP",
    "(ISEQ)",
    "D=-1",
    "(ENDEQ)",
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
    "@EQ",
    "0;JMP",
    "(ARITHMETIC_EQ.{count})"
]

C_ARITHMETIC_GT_BOOTSTRAP = [
    "(GT)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M // Y",
    "@SP",
    "AM=M-1",
    "D=M-D // D = X - Y",
    "@ISGT", 
    "D;JGT",
    "D=0",
    "@ENDGT",
    "0;JMP",
    "(ISGT)",
    "D=-1",
    "(ENDGT)",
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
    "@GT",
    "0;JMP",
    "(ARITHMETIC_GT.{count})"
]

C_ARITHMETIC_LT_BOOTSTRAP = [
    "(LT)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M // Y",
    "@SP",
    "AM=M-1",
    "D=M-D // D = X - Y",
    "@ISLT", 
    "D;JLT",
    "D=0",
    "@ENDLT",
    "0;JMP",
    "(ISLT)",
    "D=-1",
    "(ENDLT)",
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
    "@LT",
    "0;JMP",
    "(ARITHMETIC_LT.{count})"
]

C_ARITHMETIC_AND_BOOTSTRAP = [
    "(AND)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M",
    "@SP",
    "AM=M-1",
    "D=M&D",
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
    "@AND",
    "0;JMP",
    "(ARITHMETIC_AND.{count})"
]

C_ARITHMETIC_OR_BOOTSTRAP = [
    "(OR)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=M",
    "@SP",
    "AM=M-1",
    "D = M|D",
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
    "@OR",
    "0;JMP",
    "(ARITHMETIC_OR.{count})"
]

C_ARITHMETIC_NOT_BOOTSTRAP = [
    "(NOT)",
    "@15",
    "M=D",
    "@SP // pop from stack",
    "AM=M-1",
    "D=!M",
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
    "(CALL)",
    "@SP // push return label", 
    "M=M+1", 
    "A=M-1",  
    "M=D",
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
    "@14",
    "D=D-M", 
    "@ARG", 
    "M=D", 
    "@SP // reposition LCL pointer to be that of SP",
    "D=M", 
    "@LCL",
    "M=D", 
    "@15 // make jump to function",
    "A=M",
    "0;JMP",
]

C_CALL = [
    "@{nArgs}",
    "D=A",
    "@14",
    "M=D",
    "@{functionName}",
    "D=A",
    "@15",
    "M=D",
    "@{returnLabel}",
    "D=A",
    "@CALL",
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

BOOTSTRAP_CODE = C_RETURN_BOOTSTRAP + C_CALL_BOOTSTRAP + C_ARITHMETIC_ADD_BOOTSTRAP+C_ARITHMETIC_SUB_BOOTSTRAP + C_ARITHMETIC_NEG_BOOTSTRAP + C_ARITHMETIC_GT_BOOTSTRAP + C_ARITHMETIC_LT_BOOTSTRAP + C_ARITHMETIC_AND_BOOTSTRAP + C_ARITHMETIC_OR_BOOTSTRAP + C_ARITHMETIC_NOT_BOOTSTRAP+C_ARITHMETIC_EQ_BOOTSTRAP