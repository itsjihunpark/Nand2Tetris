import re

class Parser:
    def __iter__(self):
        return self

    
    def __next__(self):

        if self.hasMoreLines():
            next_command = self.source.pop(0)
            return next_command
        else:
            return False
    
    def __init__(self, argv):
        """
        Constructor/initialiser - open the input source file / stream and get ready to parse th input file/stream

        Returns: returns nothing

        """
        self.ARITHMETIC_OPERATIONS = ["add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"]

        self.line_number = -1
        self.current_command = None
        self.current_command_type = None
        self.inpname = argv[1]

        with open(self.inpname , "r") as f:
            self.source =  f.readlines()

    def hasMoreLines(self)-> bool:
        """
        Are there more lines in the input?
        """
        return True if len(self.source)>0 else False


    def advance(self) -> None:
        """
        Skips over whitespaces and comments, if necessary
        """
        while True:
            line = next(self)
            if line:
                line = line.strip()
                comments = re.findall(r"(\/\/.*)", line)
                for comment in comments:
                    line = line.replace(comment,"")
                
                blank_line = re.findall(r"^\s*$", line)
                
                if not blank_line:
                    break
            else:
                return None
                
        self.current_command = line
        type = self.commandType()
        
        return line
    
    
    def commandType(self):
        args = self.current_command.split(" ")
        commandType = ""
        
        if len(args)==3:
            # c_push/c_pop or c_another
            if args[0] == "push":
                commandType = "C_PUSH"
            elif args[0] == "pop":
                commandType = "C_POP"
        else:
            if args[0] in self.ARITHMETIC_OPERATIONS:
            # c_arithmetic or c_return 
                commandType = "C_ARITHMETIC"
            elif args[0] == "function":
                commandType = "C_FUNCTION"

        return commandType

    def arg1(self):
        pass

    def arg2(self):
        pass
