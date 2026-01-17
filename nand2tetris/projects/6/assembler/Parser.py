import sys
import re

"""
This module provides a convenient means for advancing through the source code, skipping comments,
White spaces, and breaking each symbolic instruction into its underlying components.
"""

class Parser:
    """
        Parser encapsulates access to the input assembly code (symbolic machine language) and enables
        accessing input one line at a time. 

        Methods:
            hasMoreLines(): Returns boolean on whether there are more lines in the input
            advance(): skips write space and comments, reads next instruction from the input and makes it the current instruction
            instructionType(): Returns the type of the current instruction
            symbol(): If the current instruction is either (xxx) or @xxx, it returns the symbol or decimal xxx (as a string)
            dest(): Returns the symbolic dest part of the current C-instruction (8 possibilities)
            comp(): Returns the symbolic comp part of the current C-instruction (28 possibilities)
            jump(): Returns the symbolic jump part of the current C-instruction (8 possibilities)
    """
    
    def __iter__(self):
        return self

    
    def __next__(self):

        if self.hasMoreLines():
            next_instruction = self.source.pop(0)
            return next_instruction
        else:
            return False
        
    def __init__(self, argv):
        """
        Constructor/initialiser - open the input source file / stream and get ready to parse th input file/stream

        Returns: returns nothing

        """
        self.line_number = -1
        self.current_instruction = None
        self.current_instruction_type = None
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
                    line = line.replace(comment,r"")
                
                blank_line = re.findall(r"^\s*$", line)
                
                if not blank_line:
                    break
            else:
                return None
                
        self.current_instruction = line.strip()
        type = self.instructionType()
        if type!="L_INSTRUCTION":
            self.line_number+=1
        
        return line
        
        
        
    def instructionType(self) -> str:
        """
        Returns the type of the current instruction: 

        A_INSTRUCTION for @xxx, where xxx is either a decimal number or a symbol
        C_INSTRUCTION for dest=comp;jump
        L_INSTRUCTION for (xxx), where xxx is a symbol
        """

        instruction_type = None
        A_INSTRUCTION = re.findall("^\@.+$", self.current_instruction)
        L_INSTRUCTION = re.findall(r"^\(.+\)$" , self.current_instruction)
        C_INSTRUCTION = re.findall("^[-|!|]?((?!.*(.).*\1)[ADM|1]{1,3}|0)[=]?([A|D|M|-]?[\-|\+|0|1|\|\&)]?[A|D|M|1|]?)|[;][J|M|P|E|Q|L|N|G|T|]{3}$" , self.current_instruction)


        # A_INSTRUCTION
        if A_INSTRUCTION:
            self.current_instruction_type  = "A_INSTRUCTION"

        # L_INSTRUCTION
        elif L_INSTRUCTION:
            self.current_instruction_type  = "L_INSTRUCTION"
        
        # C_INSTRUCTION
        elif C_INSTRUCTION:
            self.current_instruction_type  = "C_INSTRUCTION"
        
        return self.current_instruction_type 
        
    def symbol(self)-> str:
        """
        If the current instruction is (xxx), returns the symbol xxx. If the curent
        instruction is @xxx, returns the symbol or decimal xxx (as a string)
        Should only be called if instructionType is A_INSTRUCTION or L_INSTRUCTION.
        """
        if self.current_instruction_type=="L_INSTRUCTION":
            symbol = self.current_instruction.replace("(","").replace(")","")
        else:
            symbol = self.current_instruction.replace("@","")
        return symbol


    def dest(self) -> str:
        """
        Returns the symbolic dest part of the current C-instruction(8 possibilities)
        Should only be called if instructionType is C_INSTRUCTION. 
        
        null if there is no dest
        """
        equality_sign_found = re.findall("=", self.current_instruction)
        if equality_sign_found:
            return self.current_instruction.split("=")[0]
        else:
            return None

    def comp(self) -> str:
        """
        Returns the symbolic comp part of the current C-instruction(28 possibilities)
        Should only be called if instructionType is C_INSTRUCTION.        
        """
        equality_sign_found = re.findall("=", self.current_instruction)
        semi_colon_found = re.findall(";", self.current_instruction)
        if equality_sign_found:
            return self.current_instruction.split("=")[1]
        elif semi_colon_found:
            return self.current_instruction.split(";")[0]
        else:
            return self.current_instruction

    def jump(self) -> str:
        """
        Returns the symbolic jump part of the current C-instruction(8 possibilities)
        Should only be called if instructionType is C_INSTRUCTION.
        """
        semi_colon_found = re.findall(";", self.current_instruction)
        
        if semi_colon_found:
            return self.current_instruction.split(";")[1]
        else:
            return None


