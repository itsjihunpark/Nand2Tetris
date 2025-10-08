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
        multiline_comment = False

        while True:
            line = next(self)
            if line:
                line = line.strip()
                comment_opened = re.findall(r"\/\*.*", line)

                comment_closed = re.findall(r".*\*\/", line)

                if multiline_comment:
                    line = ""

                if len(comment_opened) > 0:
                    multiline_comment = True
                    for comment in comment_opened:
                        line = line.replace(comment, r"")

                if len(comment_closed) > 0:
                    multiline_comment = False
                    for comment in comment_closed:
                        line = line.replace(comment, r"")

                comments = re.findall(r"(\/\/.*)", line)
                for comment in comments:
                    line = line.replace(comment,r"")
                
                blank_line = re.findall(r"^\s*$", line)

                if blank_line:
                    self.current_token = None
                    self.current_token_type = None
                else:
                    break
            else:
                return None
                
        self.current_token = line.strip()
        self.current_token_type = self.tokenType()

        return self.current_token
    
    
    def tokenType(self):
        return "some type"
    
import sys

if __name__ == "__main__":

    tknzr = JackTokenizer(sys.argv)

    while tknzr.hasMoreLines():
        tknzr.advance()
        if tknzr.current_token:
            print(tknzr.current_token)
            print(tknzr.current_token_type)
        