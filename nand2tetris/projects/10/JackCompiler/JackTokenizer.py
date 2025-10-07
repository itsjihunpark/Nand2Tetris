import re
import glob
import os

class JackTokenizer:
    def __iter__(self):
        return self

    
    def __next__(self):

        if self.hasMoreLines():
            next_token = self.source.pop(0)
            return next_token
        else:
            return False
    
    def __init__(self, argv):
        """
        Constructor/initialiser - open the input source file / stream and get ready to parse th input file/stream

        Returns: returns nothing

        """

        self.line_number = -1
        self.current_token = None
        self.current_token_type = None
        self.inpname = argv[1]
        if ".jack" in self.inpname:
            self.jack_files = [self.inpname]
        else:
            self.jack_files = glob.glob(os.path.join(self.inpname, "*.jack"))

        self.source=[]
        for file in self.jack_files:
            with open(file , "r") as f:
                self.source += f.readlines()

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
                
        self.current_token = line.strip()
        self.current_token_type = self.tokenType()

        return self.current_token
    
    
    def tokenType(self):
        return "NOT IMPLEMENTED YET"
    
import sys

if __name__ == "__main__":

    tknzr = JackTokenizer(sys.argv)

    while tknzr.hasMoreLines():
        tknzr.advance()
        print(tknzr.current_token)
        print(tknzr.current_token_type)
        