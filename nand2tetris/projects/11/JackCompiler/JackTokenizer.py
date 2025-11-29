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
        self.source = open(self.jack_file, "r", encoding='utf-8').read() # .replace(" ", "") => shouldn't replace every whitespace (like whitespace within string)
        self.dest = open(self.jack_file.replace(".jack", 'T_.xml'), 'w', encoding='utf-8')
        self.dest.writelines("<tokens>\n")
        self.remove_comments()
        self.tokens = []
        self.current_token = ""
        self.current_token_type = None
        self.escape_sequence_map = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;'
        }
        # '"': '&qout;',
        self.tokenise()
        self.advance()

    def __ittr__(self):
        return self
    
    def __next__(self):
        if self.has_more_tokens():
            current_token = self.tokens.pop(0)
            #if current_token in self.escape_sequence_map.keys():
            #    current_token  =  self.escape_sequence_map.get(current_token)
            for escape_seq, equivalent in self.escape_sequence_map.items():
                current_token = current_token.replace(escape_seq, equivalent)
            
            self.current_token = current_token
            return self.current_token
        else: 
            self.dest.writelines("</tokens>\n")
            return None
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
        token = next(self)
        if token:
            for pattern in tokens.items():
                if regex.findall(pattern[1], self.current_token):
                    self.current_token_type = pattern[0]
                    break
            
            self.current_token = self.current_token.replace('"','')
            
            xml = f"<{self.token_type()}> {self.current_token} </{self.token_type()}>"
            self.dest.writelines(xml+'\n')
        return token

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
        return self.current_token_type

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
        return self.current_token

import sys

if __name__ == "__main__":
    inpname = sys.argv[1]
    tknzr = JackTokenizer(inpname)

    while tknzr.has_more_tokens():
        print(tknzr.current_token, tknzr.token_type())
        if tknzr.token_type() == "keyword":
            print(tknzr.keyword())
        elif tknzr.token_type() == "symbol":
            print(tknzr.symbol())
        elif tknzr.token_type() == "identifier":
            print(tknzr.identifier())
        elif tknzr.token_type() == "integerConstant":
            print(tknzr.intval())
        elif tknzr.token_type() == "stringConstant":
            print(tknzr.stringval())
        tknzr.advance()

    print("End Of Program")