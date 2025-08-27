import re
import glob
import os

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
        self.OPERATIONS = {
            "add":"C_ARITHMETIC", 
            "sub":"C_ARITHMETIC", 
            "neg":"C_ARITHMETIC", 
            "eq":"C_ARITHMETIC", 
            "gt":"C_ARITHMETIC", 
            "lt":"C_ARITHMETIC", 
            "and":"C_ARITHMETIC", 
            "or":"C_ARITHMETIC", 
            "not":"C_ARITHMETIC",
            "push":"C_PUSH",
            "pop": "C_POP",
            "function": "C_FUNCTION",
            "return": "C_RETURN",
            "label": "C_LABEL",
            "goto": "C_GOTO",
            "if-goto": "C_IF",
            "call": "C_CALL"
            }

        self.line_number = -1
        self.current_command = None
        self.current_command_type = None
        self.inpname = argv[1]

        vm_files = glob.glob(os.path.join(self.inpname, "*.vm"))
        bootstrap_file = None
        
        for i, file in enumerate(vm_files):
            if file.__contains__("Sys.vm"):
                bootstrap_file = vm_files.pop(i)
            else:
                continue
        if bootstrap_file:
            vm_files.insert(0,bootstrap_file)
        
        self.source=[]
        for file in vm_files:
            with open(file , "r") as f:
                self.source += f.readlines()
        for line in self.source:
            print(line)

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
                    line = line.replace(comment,r"")
                
                blank_line = re.findall(r"^\s*$", line)
                
                if not blank_line:
                    break
            else:
                return None
                
        self.current_command = line.strip()
        self.current_command_type = self.commandType()

        return self.current_command
    
    
    def commandType(self):
        args = self.current_command.split(" ")
        return self.OPERATIONS[args[0]]


    def arg1(self):
        if self.current_command_type == "C_ARITHMETIC":
            return self.current_command
        else:
            return self.current_command.split(" ")[1]
    def arg2(self):
        return self.current_command.split(" ")[2]

