from Parser import Parser
from Code import Code
from SymbolTable import SymbolTable
import sys

def main():
    ############## Initialisation #############
    parser = Parser(sys.argv)
    code = Code()
    symbol_table = SymbolTable()

    ############## First pass #################
    while parser.hasMoreLines():
        parser.advance()
        instr = parser.current_instruction_type
        if instr == "L_INSTRUCTION":
            symbol = parser.symbol()
            symbol_table.addEntry(symbol,parser.line_number+1)
    print(symbol_table.symbol_table)
    
    ############## Second pass ################
    parser = Parser(sys.argv)
    output = []
    while parser.hasMoreLines():
        returned = parser.advance()
        if returned:
            instr = parser.current_instruction_type
            if instr=="A_INSTRUCTION":
                opcode = [0] # 1 if C_INSTRUCTION else 0
                symbol = parser.symbol() # constant, RAM, or ROM address
                
                ######### Enabling Symbolic References ##########
                try:
                    address = int(symbol)
                except:
                    contains = symbol_table.contains(symbol)
                    
                    if contains: 
                        address=symbol_table.getAddress(symbol)
                    else:
                        
                        symbol_table.addEntry(symbol, symbol_table.next_available_address)
                        symbol_table.next_available_address+=1
                        address=symbol_table.getAddress(symbol)

                ################## Binary2Dec ###################
                bin = bin2dec(address)
                bin = opcode + bin
                bin = str(bin).replace(",","").replace(" ","").replace("[","").replace("]","")

            elif instr=="C_INSTRUCTION":
                opcode = "1" # 1 if C_INSTRUCTION else 0
                unused = "11" # unused leftmost bits
                dest =code.dest(parser.dest()) # LHS of equality sign
                a_bit, comp = code.comp(parser.comp()) # RHS of equality sign or LHS of semi-colon or entire string when there is neither equality sign nor semi-colon
                jump = code.jump(parser.jump()) # RHS of semi-colon
                bin = opcode+unused+a_bit+comp+dest+jump
            else:
                continue
            print(parser.line_number, parser.current_instruction, bin)
            output.append(bin+"\n")

    with open(parser.inpname.replace(".asm", ".hack"), "w") as f:
        f.writelines(output)
    f.close()
    for k in symbol_table.symbol_table.keys():
        print(k, symbol_table.symbol_table[k])
          
            

def bin2dec(address):
    total = 0
    for n in range(0,15):
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
    return bin
if __name__ == "__main__":
    main()