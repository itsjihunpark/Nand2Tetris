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
        self.dest_file_name = argv[1].split("\\")[-1].replace(".vm","")
        self.dest_file = open(f"{self.dest_file_name}.asm","w")
        
    def writeArithmetic(self, command:str):
        self.write_pop(0, 13)
        if command not in ["not", "neg"]:
            self.write_pop(0, 14)
        self.dest_file.writelines(cmd.replace("$COUNTER", str(self.arithmetic_asm_command_count))+"\n" for cmd in self.arithmetic_asm_commands[command])
        for cmd in self.arithmetic_asm_commands[command]:
            print(cmd)
        self.write_push(0, 14)
        self.arithmetic_asm_command_count+=1

    def writePushPop(self, command:str, segment:str, index:int):
        if command == "C_PUSH":
            source_segment, source_addr = self.get_selected_segment_and_index(segment, index)
            self.write_push(source_segment,source_addr)

        elif command == "C_POP":
            dest_segment, dest_addr = self.get_selected_segment_and_index(segment, index)
            self.write_pop(dest_segment, dest_addr)

    def close(self):
        self.dest_file.close()

    
    # Helper

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
            selected_addr = f"{self.dest_file_name}.{index}"
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