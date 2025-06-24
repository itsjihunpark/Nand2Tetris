from Parser import Parser
from Code import Code
import sys

def main():
    parser = Parser(sys.argv)
    code = Code()
    while parser.hasMoreLines():
        parser.advance()
        instr = parser.instructionType()
        print(parser.line_number, instr, parser.current_instruction)
        if instr == "L_INSTRUCTION" or instr=="A_INSTRUCTION":
            opcode = [1] # 1 if C_INSTRUCTION else 0
            symbol = parser.symbol() # constant, RAM, or ROM address
            address = int(symbol)
            
            
            ################### Enabling Symbolic References #################
            
            ################ Enabling Symbolic References End ################
            
            ##########################  Binary2Dec  ##########################
            total = 0
            for n in range(0,14):
                base = 2**n
                total+=base
                diff = total-address
                if diff>=0:
                    max_n=n
                    break
            bin = []
            remainder = address
            for n in range(14,-1,-1):
                if n<=max_n:
                    diff = remainder - (2**n) 
                    if diff<0:
                        bin.append(0)
                    else:
                        bin.append(1)
                        remainder=diff 
                else:
                    bin.append(0)
            bin = str(bin).replace(",","").replace(" ","")
            print(bin)
            ##########################  Binary2Dec  End ######################
        else:
            opcode = [1] # 1 if C_INSTRUCTION else 0
            unused = [1,1] # unused leftmost bits
            code.dest(parser.dest()) # LHS of equality sign
            code.comp(parser.comp()) # RHS of equality sign or LHS of semi-colon or entire string when there is neither equality sign nor semi-colon
            code.jump(parser.jump()) # RHS of semi-colon

        
            

if __name__ == "__main__":
    main()