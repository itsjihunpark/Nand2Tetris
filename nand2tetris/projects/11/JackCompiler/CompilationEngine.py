from JackTokenizer import JackTokenizer
from SymbolTable import SymbolTable
import inspect

class CompilationEngine:
    
    def __init__(self, jack_tokenizer:JackTokenizer):
        self.jack_tokenizer = jack_tokenizer
        self.class_level_symbol_table = SymbolTable()
        self.subroutine_level_symbol_table = SymbolTable()
        self.filename = self.jack_tokenizer.jack_file.replace(".jack", "_.xml")
        self.xml = open(self.filename, 'w', encoding='utf-8')
        
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
        self.subroutine_level_symbol_table.reset()
        self.xml.writelines('<subroutineDec>\n')
        # handles ('constructor', 'function', 'method')
        subroutine_type = self.jack_tokenizer.current_token
        if subroutine_type == "method":
            class_name = self.filename.replace("_.xml","").split("\\")[-1]
            self.subroutine_level_symbol_table.define('this', class_name, 'arg')
        self.process(subroutine_type)
        # handles ('void', type)
        self.process(self.jack_tokenizer.current_token)
        # handles ('subroutineName')
        self.process(self.jack_tokenizer.current_token)
        self.process('(')
        self.compile_parameter_list()
        self.process(')')
        self.compile_subroutine_body()
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

    def compile_subroutine_body(self):
        self.xml.writelines('<subroutineBody>\n')
        self.process('{')
        self.compile_var_dec()
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
        self.process(self.jack_tokenizer.current_token)
        if (token := self.jack_tokenizer.current_token) == "[":
            self.process(token)
            self.compile_expression()
            self.process(']')
        self.process('=')
        self.compile_expression()
        self.process(';')
        self.xml.writelines('</letStatement>\n')

    def compile_if(self):
        self.xml.writelines('<ifStatement>\n')
        self.process('if')
        self.process('(')
        self.compile_expression()
        self.process(')')
        self.process('{')
        self.compile_statements()
        self.process('}')
        if (else_token := self.jack_tokenizer.current_token) == "else":
            self.process(else_token)
            self.process('{')
            self.compile_statements()
            self.process('}')
        self.xml.writelines('</ifStatement>\n')

    def compile_while(self):
        self.xml.writelines('<whileStatement>\n')
        self.process('while')
        self.process('(')
        self.compile_expression()
        self.process(')')
        self.process('{')
        self.compile_statements()
        self.process('}')
        self.xml.writelines('</whileStatement>\n')

    def compile_do(self):
        self.xml.writelines('<doStatement>\n')
        self.process('do')
        self.compile_expression()
        self.process(';')
        self.xml.writelines('</doStatement>\n')

    def compile_return(self):
        self.xml.writelines('<returnStatement>\n')
        self.process('return')
        if (semi_colon_token := self.jack_tokenizer.current_token) == ";":
            self.process(semi_colon_token)
        else:
            self.compile_expression()
            self.process(';')
        self.xml.writelines('</returnStatement>\n')

    def compile_expression(self):
        stack = inspect.stack()
        caller_function = stack[1].function

        OP_TOKENS = {'+','-','*','/','&amp;','|','&lt;','&gt;','='}
        if caller_function != "compile_do":
            self.xml.writelines('<expression>\n')
        print("################Expression Starts################")
        self.compile_term()
        # handle (op term)*
        while (op_token := self.jack_tokenizer.current_token) in OP_TOKENS:
            self.process(op_token)
            self.compile_term()
        print("#################Expression Ends#################\n")
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
            
            term_token = self.jack_tokenizer.current_token
            term_token_type = self.jack_tokenizer.current_token_type
            ##############Getting variable to memory segment mapping###############
            from_class_symbol_table = self.retrieve_from_symbol_table(self.class_level_symbol_table, term_token)
            from_subroutine_symbol_table = self.retrieve_from_symbol_table(self.subroutine_level_symbol_table, term_token)
            print(term_token, term_token_type, from_class_symbol_table, from_subroutine_symbol_table)
            ##############Getting variable to memory segment mapping end###########
            
            self.process(term_token)
            if (ll2_token := self.jack_tokenizer.current_token) in LL2_TOKENS:
                if ll2_token == '[':
                    self.process('[')
                    self.compile_expression()
                    self.process(']')
                elif ll2_token == '(':
                    self.process('(')
                    self.compile_expression_list()
                    self.process(')')
                elif ll2_token == ".":
                    self.process('.')
                    self.process(self.jack_tokenizer.current_token)
                    self.process('(')
                    self.compile_expression_list()
                    self.process(')')
                    
        if caller_function != "compile_do":
            self.xml.writelines('</term>\n')

    def compile_expression_list(self):
        self.xml.writelines('<expressionList>\n')
        expression_list_end_detected = False
        
        if self.jack_tokenizer.current_token == ')' and self.jack_tokenizer.current_token_type == "symbol":
            expression_list_end_detected = True
        else:
            expression_list_end_detected = False
        
        if not expression_list_end_detected:
            self.compile_expression()
            while (comma_token := self.jack_tokenizer.current_token) == ',':
                self.process(comma_token)
                self.compile_expression()

        self.xml.writelines('</expressionList>\n')

    def retrieve_from_symbol_table(self, table, var_name):
        kind_of = table.kind_of(var_name)
        type_of = table.type_of(var_name)
        index_of = table.index_of(var_name)
        if not kind_of:
            return None, None, None
        return kind_of, type_of, index_of