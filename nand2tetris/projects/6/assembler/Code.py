import re

"""
This module provides services for translating symbolic Hack mnemonics into their binary codes.
"""

class Code:
    """
        Code encapsulates services to translate symbol hack mnemonics into their binary code according to the language specification.

        Methods:
            dest(str): returns the binary code of the dest mnemonics.
            comp(str): returns the binary code of the comp mnemonics.
            jump(str): returns the binary code of the jump mnemonics.
    """
    
    def __init__(self):
        """
        Constructor/initialiser
        """

    def dest(self, mnemonics: str) -> str:
        """
            Param mnemonics: assembly code 
            Returns: 3 bits, as a string
        """
        dest_binary = {
            "A":0,
            "D":0,
            "M": 0
        }

        if mnemonics:
            for char in mnemonics:
                dest_binary[char]=1
        return  str(list(dest_binary.values())).replace(",","").replace(" ","").replace("[","").replace("]","")
        
    def comp(self, mnemonics: str) -> str:
        """
            Returns: 7 bits, as a string
        """
        a_bit = "0" # 1 if M else A
        comp_map = {
            r"^[0]$":[1,0,1,0,1,0],
            r"^[1]$":[1,1,1,1,1,1],
            r"^[-][1]$": [1,1,1,0,1,0],
            r"^[D]$": [0,0,1,1,0,0],
            r"^[A]$|^[M]$": [1,1,0,0,0,0],
            r"^[!][D]$": [0,0,1,1,0,1],
            r"(^[!][A]$)|(^[!][M])$": [1,1,0,0,0,1],
            r"^[-][D]$": [0,0,1,1,1,1],
            r"(^[-][A]$)|(^[-][M]$)": [1,1,0,0,1,1],
            r"^[D][+][1]$": [0,1,1,1,1,1],
            r"(^[A][+][1]$)|(^[M][+][1]$)": [1,1,0,1,1,1],
            r"^[D][-][1]$": [0,0,1,1,1,0],
            r"(^[A][-][1]$)|(^[M][-][1]$)": [1,1,0,0,1,0],
            r"(^[D][+][A]$)|(^[D][+][M]$)": [0,0,0,0,1,0],
            r"(^[D][-][A]$)|(^[D][-][M]$)": [0,1,0,0,1,1],
            r"(^[A][-][D]$)|(^[M][-][D]$": [0,0,0,1,1,1],
            r"(^[D][\&][A]$)|(^[D][\&][M]$)": [0,0,0,0,0,0],
            r"(^[D][\|][A]$)|(^[D][\|][M]$)":[0,1,0,1,0,1]
        }
        for key in comp_map.keys():
            found_match = re.findall(key, mnemonics)
            if found_match:
                M_found = re.findall(r"M", mnemonics)
               
                if M_found:
                    a_bit="1"

                return a_bit, str(list(comp_map[key])).replace(",","").replace(" ","").replace("[","").replace("]","")
            else:
                continue
        if not found_match:
            return None, None
            
    def jump(self, mnemonics: str)-> str:
        """
            Returns: 3 bits, as a string
        """
        map = {
            None : [0,0,0],
            "JGT": [0,0,1],
            "JEQ": [0,1,0],
            "JGE": [0,1,1],
            "JLT": [1,0,0],
            "JNE": [1,0,1],
            "JLE": [1,1,0],
            "JMP": [1,1,1]
        }
        return str(list(map[mnemonics])).replace(",","").replace(" ","").replace("[","").replace("]","")

