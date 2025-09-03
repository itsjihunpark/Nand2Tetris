import ASMCommand

class CodeWriter:
    
    def __init__(self, argv):
        self.memory_segment_mapping = {
            "local":"LCL",
            "argument":"ARG",
            "this": "THIS",
            "that": "THAT",
        }
        self.arithmetic_asm_command_count = 0
        self.arithmetic_asm_commands = {
            "add": ASMCommand.C_ARITHMETIC_ADD,
            "sub": ASMCommand.C_ARITHMETIC_SUB,
            "neg": ASMCommand.C_ARITHMETIC_NEG,
            "eq": ASMCommand.C_ARITHMETIC_EQ,
            "gt": ASMCommand.C_ARITHMETIC_GT,
            "lt": ASMCommand.C_ARITHMETIC_LT,
            "and": ASMCommand.C_ARITHMETIC_AND,
            "or": ASMCommand.C_ARITHMETIC_OR,
            "not": ASMCommand.C_ARITHMETIC_NOT
        }
        self.function_chain = {}
        self.current_function = None
        self.file_name = argv[1].split("\\")[-1]
        dest_file_path = f"{argv[1]}\\{self.file_name}.asm"
        self.dest_file = open(dest_file_path,"w")

        bootstrap_command = ASMCommand.C_RETURN+["(BOOTSTRAP)","@256","D=A", "@SP", "M=D"]
        self.dest_file.writelines(cmd+"\n" for cmd in bootstrap_command)
        for cmd in bootstrap_command:
            print(cmd)
        self.writeCall("Sys.init", 0)

    def writeArithmetic(self, command:str):
        self.dest_file.writelines(cmd.format(counter=str(self.arithmetic_asm_command_count))+"\n" for cmd in self.arithmetic_asm_commands[command])
        for cmd in self.arithmetic_asm_commands[command]:
            print(cmd.format(counter=str(self.arithmetic_asm_command_count)))
        self.arithmetic_asm_command_count+=1

    def writePushPop(self, command:str, segment:str, index:int):
        if command == "C_PUSH":
            source_segment, source_addr = self.get_selected_segment_and_index(segment, index)
            self.write_push(source_segment,source_addr)

        elif command == "C_POP":
            dest_segment, dest_addr = self.get_selected_segment_and_index(segment, index)
            self.write_pop(dest_segment, dest_addr)

    # VM II implementations
    def writeLabel(self, label:str): 
        self.dest_file.writelines(cmd.format(label=self.build_label(label)) for cmd in ASMCommand.C_LABEL)
        print(self.build_label(label))

    def writeGoto(self, label:str):
        self.dest_file.writelines(cmd.format(label=self.build_label(label))+"\n" for cmd in ASMCommand.C_GOTO)
        for cmd in ASMCommand.C_GOTO:
            print(cmd) 

    def writeIf(self, label:str):
        self.dest_file.writelines(cmd.format(label=self.build_label(label))+"\n" for cmd in ASMCommand.C_IF)
        for cmd in ASMCommand.C_IF:
            print(cmd)
        
    def writeFunction(self, functionName: str, nVars:int):
        self.current_function = functionName
        self.dest_file.writelines(cmd.format(functionName=functionName, nVars=nVars)+"\n" for cmd in ASMCommand.C_FUNCTION)
        for i in range(0, nVars):
            self.write_push("constant", 0)

    def writeCall(self, functionName: str, nArgs:int):
        try:
            call_count = self.function_chain[functionName]
        except:
            self.function_chain[functionName] = 0
            call_count = self.function_chain[functionName]

        returnLabel = f"{functionName}$ret.{call_count}"   
        self.function_chain[functionName]+=1

        self.dest_file.writelines(cmd.format(returnLabel=returnLabel, functionName=functionName,nArgs=str(nArgs))+"\n" for cmd in ASMCommand.C_CALL)
        for cmd in ASMCommand.C_CALL:
            print(cmd.format(returnLabel=returnLabel, functionName=functionName,nArgs=str(nArgs)))
        

    def writeReturn(self):
        #self.dest_file.writelines(cmd+"\n" for cmd in ASMCommand.C_RETURN)
        self.dest_file.writelines(cmd+"\n" for cmd in ["@RETURN","0;JMP"])
        #for cmd in ASMCommand.C_RETURN:
        #    print(cmd)


    def close(self):
        self.dest_file.close()

    
    # Helper

    def build_label(self, label):
        if self.current_function:
            full_label = f"{self.current_function}${label}"
        else:
            full_label = f"{self.file_name}.${label}"
        return full_label
    
    def write_push(self, source_segment, source_addr):
        if source_segment:
            if source_segment == "constant":
                push_command = [f"@{source_addr}",
                                "D=A"]
            else:
                push_command = [f"@{source_addr}",
                                "D=A", 
                                f"@{source_segment}",
                                "A=M+D", 
                                "D=M"]
        else:
            push_command = [f"@{source_addr}",
                            "D=M"]

        increment_stack_pointer = ["@SP", 
                                   "M=M+1", 
                                   "A=M-1",  
                                   "M=D"]
        
        push_command = push_command + increment_stack_pointer
        self.dest_file.writelines(cmd+"\n" for cmd in push_command)
        for cmd in push_command:
            print(cmd)
            
    
    def write_pop(self, dest_segment, dest_addr):
        if dest_segment:
            pop_command = ["@13 // memory space needed by VM translator",
                           "M=D // load value from the top of stack",
                           f"@{dest_addr}", 
                           "D=A", 
                           f"@{dest_segment}",
                           "D=D+M",
                           "@14", 
                           "M=D // load target memory segment address",
                           "@13",
                           "D=M",
                           "@14",
                           "A=M", 
                           "M=D"]
        else:
            pop_command = [f"@{dest_addr}","M=D"]

        decrement_stack_pointer = ["@SP", "AM=M-1","D=M"]
        pop_command = decrement_stack_pointer + pop_command
        self.dest_file.writelines(cmd+"\n" for cmd in pop_command)
        for cmd in pop_command:
            print(cmd)

    def get_selected_segment_and_index(self, segment, index):
        selected_segment = None
        selected_addr = ""
        
        if segment == "static":
            filename = self.current_function.split(".")[0]
            selected_addr = f"{filename}.{index}"
        elif segment == "constant":
            selected_segment = "constant"
            selected_addr = index
        elif segment == "temp":
            selected_addr = 5 + index # TEMP segment is mapped on RAM[5-12]
        elif segment == "pointer":
            selected_addr = 3 + index # pointer segment is mapped directly onto address 3 and 4 (i=0 or i=1)
        else:
            selected_segment = self.memory_segment_mapping[segment]
            selected_addr = index
        
        return selected_segment, selected_addr