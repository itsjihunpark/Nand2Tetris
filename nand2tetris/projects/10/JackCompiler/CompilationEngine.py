import JackTokenizer

class CompilationEngine:
    
    def __init__(self, jack_tokenizer:JackTokenizer):
        self.jack_tokenizer = jack_tokenizer
        self.filename = self.jack_tokenizer.jack_file.split('//')[-1]
        self.xml = open(self.filename, 'a', encoding='utf-8')
        
    def process(self, _str):
        if self.jack_tokenizer.current_token == _str:
            print(f'<{self.jack_tokenizer.token_type().lower()}>{_str}</{self.jack_tokenizer.token_type().lower()}>')
        else:
            print("Syntax Error")
        self.jack_tokenizer.advance()

    def print_xml(self, _str):
        print(f'<{self.jack_tokenizer.token_type().lower()}>{_str}</{self.jack_tokenizer.token_type().lower()}>')
        self.jack_tokenizer.advance()
        
    def compile_class(self):
        CLASS_VAR_TOKEN = {'static', 'field'}
        SUBROUTINE_TOKEN = {'constructor', 'function', 'method'}
        print('<class>')
        self.process('class')
        self.print_xml(self.jack_tokenizer.current_token)
        
        self.process('{')
    
        while (token := self.jack_tokenizer.current_token) in CLASS_VAR_TOKEN|SUBROUTINE_TOKEN:
            if token in CLASS_VAR_TOKEN:
                self.compile_class_var_dec()
            elif SUBROUTINE_TOKEN:
                self.compile_subroutine()
        
        self.process('}')
        print('</class>')

    def compile_class_var_dec(self):
        print('<classVarDec>')
        # handles ('static'| 'field')
        self.print_xml(self.jack_tokenizer.current_token)
        # handles type (i.e., 'int'|'char'|'boolean', 'type')
        self.print_xml(self.jack_tokenizer.current_token)
        # handles varName
        self.print_xml(self.jack_tokenizer.current_token)
        # handles multiple varName delimited by commas
        while (token := self.jack_tokenizer.current_token) == ',':
            self.process(token)
            self.print_xml(self.jack_tokenizer.current_token)
            
        self.process(";")
        print('</classVarDec>')

    def compile_subroutine(self):
        print('<subroutineDec>')
        # handles ('constructor', 'function', 'method')
        self.print_xml(self.jack_tokenizer.current_token)
        # handles ('void', type)
        self.print_xml(self.jack_tokenizer.current_token)
        # handles ('subroutineName')
        self.print_xml(self.jack_tokenizer.current_token)
        self.process('(')
        self.compile_parameter_list()
        self.process(')')
        self.compile_subroutine_body()
        print('</subroutineDec>')
        
    def compile_parameter_list(self):
        print('<parameterList>')
        # handles type (i.e., 'int'|'char'|'boolean', 'type')
        if (token := self.jack_tokenizer.current_token) != ")":
            self.print_xml(self.jack_tokenizer.current_token)
            # handles varName
            self.print_xml(self.jack_tokenizer.current_token)
            # handles multiple , type varName delimited by commas
            while (token := self.jack_tokenizer.current_token) == ',':
                self.process(token)
                self.print_xml(self.jack_tokenizer.current_token)
                self.print_xml(self.jack_tokenizer.current_token)
        print('</parameterList>')

    def compile_subroutine_body(self):
        print('<subroutineBody>')
        self.process('{')
        self.compile_var_dec()
        self.compile_statements()
        self.process('}')
        print('</subroutineBody>')

    def compile_var_dec(self):
        print('<varDec>')
        # handle var_dec
        while (token := self.jack_tokenizer.current_token) == "var":
            # handles var
            self.process(token)
            # handle type
            self.print_xml(self.jack_tokenizer.current_token)
            # handle varName
            self.print_xml(self.jack_tokenizer.current_token)

            while (token := self.jack_tokenizer.current_token) != ";":
                # handle varName
                self.print_xml(token)           
            # handle ;
            self.process(";")
        print('</varDec>')
    
    def compile_statements(self):
        pass
    
    def compile_let(self):
        pass

    def compile_if(self):
        pass

    def compile_while(self):
        pass

    def compile_do(self):
        pass

    def compile_return(self):
        pass

    def compile_expression(self):
        pass

    def compile_term(self):
        pass

    def compile_expression_list(self):
        pass