class CodeWriter:
    
    def __init__(self, argv):
        self.memory_segment_mapping = {
            "local":"LCL",
            "argument":"ARG",
            "this": "THIS",
            "that": "THAT"
        }
        self.dest_file_name = argv[1].split("\\")[-1].replace(".vm","")
        self.dest_file = open(f"{self.dest_file_name}.asm","w")

    def writeArithmetic(self, command:str):
        pass

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
            pop_command = ["@SP","M=M-1","A=M","D=M", 
                           "@13 // memory space needed by VM translator",
                           "M=D // load value from the top of stack",
                           f"@{dest_addr}", "D=A", f"@{dest_segment}","D=D+A",
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
            selected_addr = index
        elif segment == "temp":
            selected_addr = 5 + index # TEMP segment is mapped on RAM[5-12]
        elif segment == "pointer":
            selected_addr = 3 + index # pointer segment is mapped directly onto address 3 and 4 (i=0 or i=1)
        else:
            selected_segment = self.memory_segment_mapping[segment]
            selected_addr = index
        
        return selected_segment, selected_addr