import regex
import glob
import os
from jacktokens import *

class JackTokenizer:

    def __init__(self, argv)->None:
        """
        Constructor/initialiser - open the input source file / stream and get ready to parse th input file/stream

        Returns: returns nothing

        """

        self.inpname = argv[1]
        if ".jack" in self.inpname:
            self.jack_files = [self.inpname]
        else:
            self.jack_files = glob.glob(os.path.join(self.inpname, "*.jack"))
        self.source = open(self.jack_files[0], "r").read() # .replace(" ", "") => shouldn't replace every whitespace (like whitespace within string)
        self.remove_comments()
        self.tokenise()


    def remove_comments(self):
        comment_pattern_in_regex = comments
        self.source = regex.sub(comment_pattern_in_regex, r"", self.source)
    
    def tokenise(self):
        for token_type in tokens.keys():
            found = regex.findall(tokens[token_type],self.source)
            print(found)
            
import sys

if __name__ == "__main__":
    tknzr = JackTokenizer(sys.argv)
    #print(tknzr.source)