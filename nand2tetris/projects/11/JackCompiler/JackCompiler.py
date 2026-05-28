import sys
import os
import glob
from JackTokenizer import JackTokenizer
from CompilationEngine import CompilationEngine

class JackCompiler:

    def __init__(self, argv):
        inpname = argv[1]
        if ".jack" in inpname:
            jack_files = [inpname]
        else:
            jack_files = glob.glob(os.path.join(inpname, "*.jack"))
        for path in jack_files: 
            print(f"compiling {path}")
            jack_tokenizer = JackTokenizer(path)
            compilation_engine = CompilationEngine(jack_tokenizer)
            compilation_engine.compile_class()
            
            jack_tokenizer.dest.close()
            compilation_engine.xml.close() 

            with open(path.replace(".jack", ".vm"), "w", encoding="utf-8") as vm_file:
                for command in compilation_engine.vm_commands:
                    vm_file.writelines(command + "\n")
            vm_file.close()
if __name__ == "__main__":
    JackCompiler(sys.argv)
