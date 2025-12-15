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
            jack_tokenizer = JackTokenizer(path)
            compilation_engine = CompilationEngine(jack_tokenizer)
            compilation_engine.compile_class()
if __name__ == "__main__":
    JackCompiler(sys.argv)
