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
        self.tokens = []
        self.current_token = ""
        self.tokenise()

    def __ittr__(self):
        return self
    
    def __next__(self):
        self.current_token = self.tokens.pop(0)
        return self.current_token

    def has_next(self):
        return True if len(self.tokens)>0 else False

    def remove_comments(self):
        comment_pattern_in_regex = comments
        self.source = regex.sub(comment_pattern_in_regex, r"", self.source)
    
    def tokenise(self):
        regex_pattern = r""
        for token_type in tokens.keys():
            regex_pattern+=tokens[token_type]+r"|"
        regex_pattern = regex_pattern[:-1]
        found_tokens = regex.finditer(regex_pattern, self.source, overlapped=False)
        for token in found_tokens:
            self.tokens.append(token.group())
            
    def advance(self):
        return next(self)

import sys

if __name__ == "__main__":
    tknzr = JackTokenizer(sys.argv)

    while tknzr.has_next():
        tknzr.advance()
        print(tknzr.current_token)
    print("End Of Program")