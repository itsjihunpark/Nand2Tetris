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
            "add":["//ADD","@13 // Y","D=M", "@14 // X","M=M+D",],
            "sub": ["//SUB","@13 // Y","D=M", "@14 // X","M=M-D",],
            "neg":["//NEG", "@14 // X", "M=-M",],
            "eq": ["//EQ","@13 // y","D=M", "@14 // x","D=M-D", 
                   f"@EQ$COUNTER","D;JEQ","D=0",
                   f"@ENDEQ$COUNTER","0;JMP",
                   f"(EQ$COUNTER)","D=-1",
                   f"(ENDEQ$COUNTER)","@14","M=D",
            ],
            "gt":["//GT","@13  // Y","D=M", "@14 // X","D=M-D",
                  f"@GT$COUNTER", "D;JGT","D=0",
                  f"@ENDGT$COUNTER","0;JMP",
                  f"(GT$COUNTER)","D=-1",
                  f"(ENDGT$COUNTER)","@14","M=D",],
            "lt":["//LT","@13  // Y","D=M", "@14 // X","D=M-D",
                  f"@LT$COUNTER", "D;JLT","D=0",
                  f"@ENDLT$COUNTER","0;JMP",
                  f"(LT$COUNTER)","D=-1",
                  f"(ENDLT$COUNTER)","@14","M=D",],
            "and":["//AND","@13 // first pop value","D=M", 
                   "@14 // second pop value","M = M&D",],
            "or":["//OR","@13 // first pop value","D=M", 
                  "@14 // second pop value","M = M|D",],
            "not":["//NOT","@14 // first pop value","M=!M",]
        }
        self.function_chain = {}
        self.current_function = None
        self.file_name = argv[1].split("\\")[-1]
        dest_file_path = f"{argv[1]}\\{self.file_name}.asm"
        self.dest_file = open(dest_file_path,"w")

        bootstrap_command = ["@256","D=A", "@SP", "M=D"]
        self.dest_file.writelines(cmd+"\n" for cmd in bootstrap_command)
        for cmd in bootstrap_command:
            print(cmd)
        self.writeCall("Sys.init", 0)

    def writeArithmetic(self, command:str):
        self.write_pop(None, 13)
        if command not in ["not", "neg"]:
            self.write_pop(None, 14)
        self.dest_file.writelines(cmd.replace("$COUNTER", str(self.arithmetic_asm_command_count))+"\n" for cmd in self.arithmetic_asm_commands[command])
        for cmd in self.arithmetic_asm_commands[command]:
            print(cmd)
        self.write_push(None, 14)
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
        label_command = f"({self.build_label(label)})\n"
        self.dest_file.writelines(label_command)
        print(self.build_label(label))

    def writeGoto(self, label:str):
        goto_command = [f"@{self.build_label(label)}", "0;JMP"]
        self.dest_file.writelines(cmd+"\n" for cmd in goto_command)
        for cmd in goto_command:
            print(cmd) 

    def writeIf(self, label:str):
        self.write_pop(None, 13)
        if_goto_command = ["@13", "D=M", f"@{self.build_label(label)}","D;JNE"]
        self.dest_file.writelines(cmd+"\n" for cmd in if_goto_command)
        for cmd in if_goto_command:
            print(cmd)
        
    def writeFunction(self, functionName: str, nVars:int):
        self.current_function = functionName
        function_label = f"({functionName})"
        print(function_label)
        self.dest_file.writelines(function_label+"\n")
        for i in range(0, nVars):
            self.write_push("constant", 0)

    def writeCall(self, functionName: str, nArgs:int):
        try:
            call_count = self.function_chain[functionName]
        except:
            self.function_chain[functionName] = 0
            call_count = self.function_chain[functionName]

        return_label = f"{functionName}$ret.{call_count}"
        
        self.write_push("constant", return_label)
        self.write_push(None,"LCL")
        self.write_push(None,"ARG")
        self.write_push(None,"THIS")
        self.write_push(None,"THAT")
        self.function_chain[functionName]+=1
        
        call_command = ["@SP", "D=M", "@5", "D=D-A", f"@{nArgs}",
                        "D=D-A", "@ARG", "M=D", "@SP","D=M", "@LCL", 
                        "M=D", f"@{functionName}","0;JMP"]
        self.dest_file.writelines(cmd+"\n" for cmd in call_command)
        for cmd in call_command:
            print(cmd)
        self.dest_file.writelines(f"({return_label})\n")
        print(return_label)

    def writeReturn(self):
        return_command = ["//frame = LCL","@LCL","D=M", 
                            "@13 // frame","M=D",
                            "//retAddr = frame-5","@5",
                            "D=A","@13","D=M-D // RAM address that has the return address (ROM)", "A=D", "D=M //return address itself"
                            ,"@14 // retAddr","M=D"]
        for cmd in return_command:
            print(cmd)
        self.dest_file.writelines(cmd+"\n" for cmd in return_command)
        self.write_pop(None,15)   

        return_command = ["@15","D=M", "@ARG","A=M", "M=D","//SP = ARG+1",
                        "@ARG", "D=M", "@SP", "M=D+1",    
                        "//THAT = *frame-1","@13","D=M-1","A=D", 
                        "D=M","@THAT", "M=D","//THIS = *frame-2",
                        "@13","D=M", "@2","D=D-A","A=D","D=M", 
                        "@THIS", "M=D","//ARG = *frame-3","@13",
                        "D=M", "@3","D=D-A","A=D","D=M","@ARG", 
                        "M=D","//LCL = *frame-4","@13","D=M", "@4",
                        "D=D-A", "A=D","D=M","@LCL", "M=D",
                        "//goto retAddr","@14","A=M","0;JMP"]

        self.dest_file.writelines(cmd+"\n" for cmd in return_command)  
        for cmd in return_command:
            print(cmd) 


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
                push_command = [f"@{source_addr}","D=A"]
            else:
                push_command = [f"@{source_addr}","D=A", f"@{source_segment}","A=M+D", "D=M"]
        else:
            push_command = [f"@{source_addr}","D=M"]

        increment_stack_pointer = ["@SP", "A=M", "M=D", "@SP", "M=M+1"]
        push_command = push_command + increment_stack_pointer
        self.dest_file.writelines(cmd+"\n" for cmd in push_command)
        for cmd in push_command:
            print(cmd)
            
    
    def write_pop(self, dest_segment, dest_addr):
        if dest_segment:
            pop_command = ["@13 // memory space needed by VM translator",
                           "M=D // load value from the top of stack",
                           f"@{dest_addr}", "D=A", f"@{dest_segment}","D=D+M",
                           "@14", "M=D // load target memory segment address",
                           "@13","D=M","@14","A=M", "M=D"]
        else:
            pop_command = [f"@{dest_addr}","M=D"]

        decrement_stack_pointer = ["@SP", "M=M-1","A=M","D=M"]
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