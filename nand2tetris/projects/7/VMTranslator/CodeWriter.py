class CodeWriter:
    
    def __init__(self, argv):
        self.memory_segment_mapping = {
            "local":"LCL",
            "argument":"ARG",
            "this": "THIS",
            "that": "THAT"
        }
        self.dest_file_name = argv[1].split("\\")[-1].replace(".vm","")

    def writeArithmetic(self, command:str):
        pass

    def writePushPop(self, command:str, segment:str, index:int):
        if command == "C_PUSH":
            source_segment = None
            source_addr = ""
             
            if segment == "static":
                source_addr = f"{self.dest_file_name}.{index}"

            elif segment == "constant":
                source_addr = index
            elif segment == "temp":
                source_addr = 5 + index # TEMP segment is set at RAM[5-12]
            elif segment == "pointer":
                source_addr = 3+index # pointer segment is mapped directly onto address 3 and 4
            else:
                source_segment = self.memory_segment_mapping[segment]
                source_addr = index

            self.write_push(source_segment, source_addr)
        elif command == "C_POP":
            pass

    def close(self):
        pass


    def write_push(self, source_segment, source_addr):
        
        if source_segment:
            push_command = [f"@{source_addr}","D=A", f"@{source_segment}","A=M+D", "D=M"]
        else:
            push_command = [f"@{source_addr}","D=M"]
        increment_stack_pointer = ["@SP", "A=M", "M=D", "@SP", "M=M+1"]
        push_command = push_command + increment_stack_pointer
        
        for cmd in push_command:
            print(cmd)
        