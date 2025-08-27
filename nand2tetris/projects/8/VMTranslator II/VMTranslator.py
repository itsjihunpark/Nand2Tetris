import sys

from Parser import Parser
from CodeWriter import CodeWriter


def main():
    parser = Parser(sys.argv)
    codeWriter = CodeWriter(sys.argv)
    while parser.hasMoreLines():
        arg1=None
        arg2=None
        
        parser.advance()
        current_command_type = parser.current_command_type
        arg1 = parser.arg1() if current_command_type != "C_RETURN" else None
        arg2 = parser.arg2() if current_command_type in {"C_PUSH", "C_POP", "C_FUNCTION", "C_CALL"} else None

        debug = f"//{current_command_type} arg1: {arg1} arg2: {arg2} {parser.current_command}\n"    
        print(debug)
        codeWriter.dest_file.writelines(debug)

        if current_command_type in {"C_PUSH", "C_POP"}:
            codeWriter.writePushPop(current_command_type, arg1, int(arg2))

        elif current_command_type == "C_ARITHMETIC":
            codeWriter.writeArithmetic(arg1)  # likely arg1 contains the arithmetic command
        
        elif current_command_type == "C_LABEL":
            codeWriter.writeLabel(arg1)
            
        elif current_command_type == "C_GOTO":
            codeWriter.writeGoto(arg1)

        elif current_command_type == "C_IF":
            codeWriter.writeIf(arg1)
        
        elif current_command_type == "C_FUNCTION":
            codeWriter.writeFunction(arg1, int(arg2))
        
        elif current_command_type == "C_CALL":
            codeWriter.writeCall(arg1, int(arg2))

        elif current_command_type == "C_RETURN":
            codeWriter.writeReturn()

    codeWriter.close()

    
if __name__ == "__main__":
    main()