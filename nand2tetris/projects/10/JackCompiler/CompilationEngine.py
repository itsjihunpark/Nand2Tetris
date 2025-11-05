import JackTokenizer

class CompilationEngine:
    
    def __init__(self, jack_tokenizer:JackTokenizer):
        self.jack_tokenizer = jack_tokenizer
        self.filename = self.jack_tokenizer.jack_file.split('//')[-1]
        self.xml = open(self.filename, 'a', encoding='utf-8')
        
    def process(self, _str):
        if (self.jack_tokenizer.current_token == _str):
            self.print_xml(_str)
        else:
            print("Syntax Error")
        self.jack_tokenizer.advance()

    def print_xml(self, _str):
        print(f'<{self.jack_tokenizer.token_type().lower()}>{_str}</{self.jack_tokenizer.token_type().lower()}>')
        

    def compile_class(self):
        print('<class>')
        self.process('class')
        self.print_xml(self.jack_tokenizer.current_token)
        self.jack_tokenizer.advance()
        self.process('{')
        print('</class>')

    def compile_class_var_dec(self):
        pass

    def compile_subroutine(self):
        pass

    def parameter_list(self):
        pass

    def compile_var_dec(self):
        pass

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