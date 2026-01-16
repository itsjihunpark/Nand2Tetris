from JackTokenizer import JackTokenizer
from SymbolTable import SymbolTable
import inspect

ARITHMETIC_OP_MAPPING = {
    '+': 'add',
    '-': 'sub',
    '*': 'call Math.multiply 2',
    '/': 'call Math.divide 2',
    '&amp;': 'and',
    '|': 'or',
    '&lt;': 'lt',
    '&gt;': 'gt',
    '=': 'eq',
}

UNARY_OP_MAPPING = {
    '-': 'neg',
    '~': 'not'
}

KEYWORD_MAPPING = {
    'null': ['push constant 0 // pushing null'],
    'false': ['push constant 0 // pushing false'],
    'true': ['push constant 1 // pushing true', 'neg // pushing true'],
    'this': ['push pointer 0 // pushing this']
}

SYMBOLTABLE_MAPPNIG= {
    "static":"static",
    "field": "this",
    "var": "local",
    "arg":"argument"
}

class CompilationEngine:
    
    def __init__(self, jack_tokenizer:JackTokenizer):
        self.jack_tokenizer = jack_tokenizer
        self.class_level_symbol_table = SymbolTable()
        self.subroutine_level_symbol_table = SymbolTable()
        self.filename = self.jack_tokenizer.jack_file.replace(".jack", "_.xml")
        self.xml = open(self.filename, 'w', encoding='utf-8')
        self.class_name = self.filename.replace("_.xml","").split("\\")[-1]
        self.if_or_while_statement_counter = 0
        self.vm_commands = []

    def process(self, _str):
        if self.jack_tokenizer.current_token == _str:
            self.print_xml(_str)
        else:
            print("Syntax Error")
        self.jack_tokenizer.advance()

    def print_xml(self, _str):
        xml = f'<{self.jack_tokenizer.token_type()}> {_str} </{self.jack_tokenizer.token_type()}>'
        self.xml.writelines(xml+'\n')
        
    def compile_class(self):
        CLASS_VAR_TOKEN = {'static', 'field'}
        SUBROUTINE_TOKEN = {'constructor', 'function', 'method'}
        self.xml.writelines('<class>\n')
        self.process('class')
        # handle className
        self.process(self.jack_tokenizer.current_token)
        
        self.process('{')
    
        while (token := self.jack_tokenizer.current_token) in CLASS_VAR_TOKEN|SUBROUTINE_TOKEN:
            if token in CLASS_VAR_TOKEN:
                self.compile_class_var_dec()
            elif SUBROUTINE_TOKEN:
                self.compile_subroutine()
        
        self.process('}')
        self.xml.writelines('</class>\n')

    def compile_class_var_dec(self):
        self.xml.writelines('<classVarDec>\n')
        # handles ('static'| 'field')
        var_kind = self.jack_tokenizer.current_token
        self.process(var_kind)
        # handles type (i.e., 'int'|'char'|'boolean', 'type')
        var_type = self.jack_tokenizer.current_token
        self.process(var_type)
        # handles varName
        var_name = self.jack_tokenizer.current_token
        self.process(var_name)
        # adding to class level symbol table
        self.class_level_symbol_table.define(var_name, var_type, var_kind)

        # handles multiple varName delimited by commas
        while (comma_token := self.jack_tokenizer.current_token) == ',':
            self.process(comma_token)
            var_name = self.jack_tokenizer.current_token
            self.process(var_name)
            # adding to class level symbol table
            self.class_level_symbol_table.define(var_name, var_type, var_kind)
        
        self.process(";")
        self.xml.writelines('</classVarDec>\n')

    def compile_subroutine(self):
        self.vm_commands.append("// compiling subroutine")
        vm_commands =['function {}.{} {}']
        self.subroutine_level_symbol_table.reset()
        self.xml.writelines('<subroutineDec>\n')
        # handles ('constructor', 'function', 'method')
        subroutine_type = self.jack_tokenizer.current_token
        if subroutine_type == "method":
            self.subroutine_level_symbol_table.define('this', self.class_name, 'arg')
            vm_commands.append("push argument 0") # debug
            vm_commands.append("pop pointer 0") # debug

        elif subroutine_type == "constructor":
            n_fields = self.class_level_symbol_table.var_count("field")
            vm_commands.append(f"push constant {n_fields}") # debug
            vm_commands.append("call Memory.alloc 1") # debug
            vm_commands.append("pop pointer 0") # debug
            
        self.process(subroutine_type)
        # handles ('void', type)
        self.process(self.jack_tokenizer.current_token)
        # handles ('subroutineName')
        subroutine_name = self.jack_tokenizer.current_token
        self.process(subroutine_name)
        self.process('(')
        self.compile_parameter_list()
        self.process(')')
        self.compile_subroutine_body(subroutine_name, vm_commands)
        self.xml.writelines('</subroutineDec>\n')
        
    def compile_parameter_list(self):
        self.xml.writelines('<parameterList>\n')
        # handles type (i.e., 'int'|'char'|'boolean', 'type')
        if (type_token := self.jack_tokenizer.current_token) != ")":
            self.process(type_token)
            # handles varName
            var_name = self.jack_tokenizer.current_token
            self.process(var_name)

            # adding to subrountine level symbol table
            self.subroutine_level_symbol_table.define(var_name, type_token, 'arg')
        
            # handles multiple , type varName delimited by commas
            while (comma_token := self.jack_tokenizer.current_token) == ',':
                self.process(comma_token)
                var_type = self.jack_tokenizer.current_token
                self.process(var_type)
                var_name = self.jack_tokenizer.current_token
                self.process(var_name)
                # adding to subrountine level symbol table
                self.subroutine_level_symbol_table.define(var_name, var_type, 'arg')

        self.xml.writelines('</parameterList>\n')

    def compile_subroutine_body(self, subroutine_name, vm_commands):
        self.xml.writelines('<subroutineBody>\n')
        self.process('{')
        self.compile_var_dec()
        var_count = self.subroutine_level_symbol_table.var_count("var")
        vm_commands[0] = vm_commands[0].format(self.class_name, subroutine_name, var_count)
        for cmd in vm_commands:
            self.vm_commands.append(cmd)
        self.compile_statements()
        self.process('}')
        self.xml.writelines('</subroutineBody>\n')

    def compile_var_dec(self):
        # handle var_dec
        while (var_token := self.jack_tokenizer.current_token) == "var":
            self.xml.writelines('<varDec>\n')
            # handles var
            self.process(var_token)
            # handle type
            var_type = self.jack_tokenizer.current_token
            self.process(var_type)
            # handle varName
            var_name = self.jack_tokenizer.current_token
            self.process(var_name)
            
            # adding to subrountine level symbol table
            self.subroutine_level_symbol_table.define(var_name, var_type, var_token)

            while (comma_token := self.jack_tokenizer.current_token) == ",":
                self.process(comma_token)
                var_name = self.jack_tokenizer.current_token
                self.process(var_name)
                # adding to subrountine level symbol table
                self.subroutine_level_symbol_table.define(var_name, var_type, var_token)
                
            # handle ;
            self.process(";")
            self.xml.writelines('</varDec>\n')
    
    def compile_statements(self):
        self.xml.writelines('<statements>\n')
        STATEMENT_TOKEN_DISPATCH= {
            'let': self.compile_let, 
            'if': self.compile_if, 
            'while': self.compile_while, 
            'do': self.compile_do, 
            'return': self.compile_return
            }
        while (statement_token := self.jack_tokenizer.current_token) in STATEMENT_TOKEN_DISPATCH.keys():
            STATEMENT_TOKEN_DISPATCH[statement_token]()
        self.xml.writelines('</statements>\n')

    def compile_let(self):
        self.xml.writelines('<letStatement>\n')
        self.process('let')
        # handle varName
        var_token = self.jack_tokenizer.current_token
        self.process(var_token)
        symbol_mapping = self.retrieve_from_symbol_table(self.subroutine_level_symbol_table, var_token)
        if not symbol_mapping:
            symbol_mapping = self.retrieve_from_symbol_table(self.class_level_symbol_table, var_token)
        is_array = False
        if (token := self.jack_tokenizer.current_token) == "[":
            is_array = True
            self.process(token)
            self.vm_commands.append(f"push {SYMBOLTABLE_MAPPNIG[symbol_mapping[0]]} {symbol_mapping[2]} // symbol -> {var_token} (array)")
            self.compile_expression()
            self.vm_commands.append("add") 
            self.process(']')
        self.process('=')
        self.compile_expression()
        if is_array:
            self.vm_commands.append("pop temp 0")
            self.vm_commands.append("pop pointer 1")
            self.vm_commands.append("push temp 0")
            self.vm_commands.append("pop that 0")
        else:
            self.vm_commands.append(f"pop {SYMBOLTABLE_MAPPNIG[symbol_mapping[0]]} {symbol_mapping[2]} // symbol -> {var_token}") # debug
        self.process(';')
        self.xml.writelines('</letStatement>\n')

    def compile_if(self):
        self.if_or_while_statement_counter += 1
        current_label_counter = self.if_or_while_statement_counter
        self.xml.writelines('<ifStatement>\n')
        self.process('if')
        self.process('(')
        self.compile_expression()
        self.process(')')
        self.process('{')
        self.vm_commands.append("not")
        self.vm_commands.append(f"if-goto L1.{current_label_counter}")
        self.compile_statements()
        self.vm_commands.append(f"goto L2.{current_label_counter}")
        self.process('}')
        self.vm_commands.append(f"label L1.{current_label_counter}")
        if (else_token := self.jack_tokenizer.current_token) == "else":
            self.process(else_token)
            self.process('{')
            self.compile_statements()
            self.process('}')
        self.xml.writelines('</ifStatement>\n')
        self.vm_commands.append(f"label L2.{current_label_counter}")

    def compile_while(self):
        self.if_or_while_statement_counter += 1
        current_label_counter = self.if_or_while_statement_counter
        self.xml.writelines('<whileStatement>\n')
        self.process('while')
        self.process('(')
        self.vm_commands.append(f"label L1.{current_label_counter}")
        self.compile_expression()
        self.process(')')
        self.process('{')
        self.vm_commands.append("not")
        self.vm_commands.append(f"if-goto L2.{current_label_counter}")
        self.compile_statements()
        self.vm_commands.append(f"goto L1.{current_label_counter}")
        self.process('}')
        self.xml.writelines('</whileStatement>\n')
        self.vm_commands.append(f"label L2.{current_label_counter}")

    def compile_do(self):
        self.xml.writelines('<doStatement>\n')
        self.process('do')
        self.compile_expression()
        self.process(';')
        self.xml.writelines('</doStatement>\n')
        self.vm_commands.append("pop temp 0")

    def compile_return(self):
        self.xml.writelines('<returnStatement>\n')
        self.process('return')
        if (semi_colon_token := self.jack_tokenizer.current_token) == ";":
            self.vm_commands.append("push constant 0")
            self.process(semi_colon_token)
        else:
            self.compile_expression()
            self.process(';')
        self.xml.writelines('</returnStatement>\n')
        self.vm_commands.append("return")

    def compile_expression(self):
        stack = inspect.stack()
        caller_function = stack[1].function

        OP_TOKENS = {'+','-','*','/','&amp;','|','&lt;','&gt;','='}
        if caller_function != "compile_do":
            self.xml.writelines('<expression>\n')
        self.compile_term()
        # handle (op term)*
        while (op_token := self.jack_tokenizer.current_token) in OP_TOKENS:
            self.process(op_token)
            self.compile_term()
            self.vm_commands.append(ARITHMETIC_OP_MAPPING[op_token])
        if caller_function != "compile_do":
            self.xml.writelines('</expression>\n')

    def compile_term(self):
        stack = inspect.stack()
        caller_function = stack[2].function

        LL2_TOKENS = {'(', '[','.'}
        UNARY_OP_TOKEN = {'-', '~'}

        if caller_function != "compile_do":
            self.xml.writelines('<term>\n')
        # 1. handles (expression)
        if (bracket_token := self.jack_tokenizer.current_token) == "(" and self.jack_tokenizer.current_token_type=="symbol":
            self.process(bracket_token)
            self.compile_expression()
            self.process(')')
          
        # 2. handle unaryOp token if exists
        elif (unary_op_token := self.jack_tokenizer.current_token) in UNARY_OP_TOKEN:
            self.process(unary_op_token)
            self.compile_term()
            self.vm_commands.append(UNARY_OP_MAPPING[unary_op_token])

        else:
            """
            handles
            3. intConst
            4. strConst
            5. kwordConst
            6. varName
            7. varName[expression
            8. subroutineName(expressionList
            9. className|varName.subroutineName(expressionList
            """
            
            symbol_token = self.jack_tokenizer.current_token
            symbol_token_type = self.jack_tokenizer.current_token_type
            
            ##############Getting variable to memory segment mapping###############
            # This has to distinguish classname/subroutinename (not to generate push command) vs
            # varname/intConst/strConst/kwordConst (to generate push command)
            # This also has to distinguish varname (to generate push [memory segment] [index]) 
            # and constants
            # the strconst needs to be distinguished since it must invoke the String OS API 
            # whereas intconst just needs to push in the format push constant [intconst]
            # kwordconst also needs to be converted to correct format prior to pushing
            # e.g., 'null'/'false' maps to 0; 'true' maps to -1 (push constant 1; neg); 'this' maps to pointer 0 (push pointer 0)
            # prior to generating push command.

            
            symbol_mapping = self.retrieve_from_symbol_table(self.subroutine_level_symbol_table, symbol_token)
            if not symbol_mapping:
                symbol_mapping = self.retrieve_from_symbol_table(self.class_level_symbol_table, symbol_token)
            
            # if  symbol found on symbol table (i.e., symbol_token is neither a subroutine nor class)
            #if symbol_mapping:
            #    print(f"term: {symbol_token}\ntype: {symbol_token_type}\nmapping: {symbol_mapping}") # debug
            
            ##############Getting variable to memory segment mapping end###########
            
            self.process(symbol_token)
            if (ll2_token := self.jack_tokenizer.current_token) in LL2_TOKENS:
                if ll2_token == '[':
                    segment, type_of, index = symbol_mapping
                    self.vm_commands.append(f"push {SYMBOLTABLE_MAPPNIG[segment]} {index} // symbol -> {symbol_token} (array)")
                    self.process('[')
                    self.compile_expression()
                    self.process(']')
                    self.vm_commands.append("add")
                    self.vm_commands.append("pop pointer 1")
                    self.vm_commands.append("push that 0")
                elif ll2_token == '(':
                    # assuming it is a method as subroutine() is equivalent to this.subroutine()
                    # push symbol mapping of "this"
                    self.process(ll2_token)
                    subroutine_type = 'method'
                    
                    subroutine_name = symbol_token
                    self.vm_commands.append(f"push pointer 0")
                    narg = 1
                    narg += self.compile_expression_list()
                    self.process(')')
                    self.vm_commands.append(f"call {self.class_name}.{subroutine_name} {narg} // subroutine call ({subroutine_type})")
                elif ll2_token == '.':
                    narg = 0
                    subroutine_type = 'function'
                    type_of = symbol_token
                    if symbol_mapping:
                        # if subroutine is a method add 1 to nargs 
                        # (the object reference/memory address in heap to be added)
                        # in addition to the number of arguments provided
                        narg += 1
                        subroutine_type = 'method'
                        
                        segment, type_of, index = symbol_mapping
                        
                        self.vm_commands.append(f"push {SYMBOLTABLE_MAPPNIG[segment]} {index} // symbol -> {symbol_token}")

                    self.process('.')
                    subroutine_name = self.jack_tokenizer.current_token
                    self.process(subroutine_name)
                    self.process('(')
                    narg += self.compile_expression_list()
                    self.process(')')
                    self.vm_commands.append(f"call {type_of}.{subroutine_name} {narg} // subroutine call ({subroutine_type})")
            else:
                # push as normal
                if symbol_mapping:
                    segment, type_of, index = symbol_mapping

                    self.vm_commands.append(f"push {SYMBOLTABLE_MAPPNIG[segment]} {index} // symbol -> {symbol_token}")
                else:
                    # different types of constants (integerConstant/stringConstant/keyword)
                    # require mapping these constants according to standard mapping
                    if symbol_token_type == "integerConstant":
                        self.vm_commands.append(f"push constant {symbol_token}")
                    elif symbol_token_type == "stringConstant":
                        #############################
                        # instantiate string object #
                        # call appendchar           #
                        #############################
                        self.vm_commands.append(f"// Instantiating String: {symbol_token}")
                        self.vm_commands.append(f"push constant {len(symbol_token)}")
                        self.vm_commands.append(f"call String.new 1")
                        for c in symbol_token:
                            self.vm_commands.append(f"push constant {ord(c)}")
                            self.vm_commands.append("call String.appendChar 2")

                        
                    elif symbol_token_type == "keyword":
                        for vmcode in KEYWORD_MAPPING[symbol_token]:
                            self.vm_commands.append(vmcode)

        if caller_function != "compile_do":
            self.xml.writelines('</term>\n')

    def compile_expression_list(self):
        self.xml.writelines('<expressionList>\n')
        expression_list_end_detected = False
        narg = 0
        if self.jack_tokenizer.current_token == ')' and self.jack_tokenizer.current_token_type == "symbol":
            expression_list_end_detected = True
        
        if not expression_list_end_detected:
            self.compile_expression()
            narg+=1
            while (comma_token := self.jack_tokenizer.current_token) == ',':
                self.process(comma_token)
                self.compile_expression()
                narg+=1

        self.xml.writelines('</expressionList>\n')

        return narg

    def retrieve_from_symbol_table(self, table, var_name):
        kind_of = table.kind_of(var_name)
        type_of = table.type_of(var_name)
        index_of = table.index_of(var_name)
        if not kind_of:
            return None
        return kind_of, type_of, index_of