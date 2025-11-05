import regex
from jacktokens import *

class JackTokenizer:

    def __init__(self, path)->None:
        """
        Constructor/initialiser - open the input source file / stream and get ready to parse th input file/stream

        Returns: returns nothing

        """

        
        if ".jack" in path:
            self.jack_file = path
        else:
            raise ValueError
        self.source = open(self.jack_file, "r").read() # .replace(" ", "") => shouldn't replace every whitespace (like whitespace within string)
        self.remove_comments()
        self.tokens = []
        self.current_token = ""
        self.tokenise()
        self.advance()

    def __ittr__(self):
        return self
    
    def __next__(self):
        self.current_token = self.tokens.pop(0)
        return self.current_token

    def remove_comments(self):
        """
        """
        comment_pattern_in_regex = comments
        self.source = regex.sub(comment_pattern_in_regex, r"", self.source)

    def has_more_tokens(self):
        """
        """
        return True if len(self.tokens)>0 else False
    
    def advance(self):
        """
        """
        return next(self)

    def tokenise(self):
        """
        """
        regex_pattern = r""
        for pattern in tokens.items():
            regex_pattern+=pattern[1]+r"|"
        regex_pattern = regex_pattern[:-1]
        found_tokens = regex.finditer(regex_pattern, self.source, overlapped=False)
        for token in found_tokens:
            self.tokens.append(token.group())
    
    def token_type(self):
        """
        """
        for pattern in tokens.items():
            if regex.findall(pattern[1], self.current_token):
                return pattern[0]

    def keyword(self):
        """
        """
        return self.current_token
    
    def symbol(self):
        """
        """
        return self.current_token
    
    def identifier(self):
        """
        """
        return self.current_token

    def intval(self):
        """
        """
        return int(self.current_token)

    def stringval(self):
        """
        """
        return self.current_token.replace('"',"")

import sys

if __name__ == "__main__":
    inpname = sys.argv[1]
    tknzr = JackTokenizer(inpname)

    while tknzr.has_more_tokens():
        print(tknzr.current_token, tknzr.token_type())
        if tknzr.token_type() == "KEYWORD":
            print(tknzr.keyword())
        elif tknzr.token_type() == "SYMBOL":
            print(tknzr.symbol())
        elif tknzr.token_type() == "IDENTIFIER":
            print(tknzr.identifier())
        elif tknzr.token_type() == "INT_CONST":
            print(tknzr.intval())
        elif tknzr.token_type() == "STRING_CONST":
            print(tknzr.stringval())
        tknzr.advance()

    print("End Of Program")