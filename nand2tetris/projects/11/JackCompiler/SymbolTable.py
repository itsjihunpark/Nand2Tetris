from collections import Counter

class SymbolTable:

    def __init__(self):
        self.table = {}

    def reset(self):
        self.table = {}

    def define(self, _name:str, _type:str, _kind:str):
        idx = self.var_count(_kind)
        self.table[_name] = {
            'type': _type,
            'kind': _kind,
            'index': idx
        }

    def var_count(self, kind):
        count = 0
        for val in self.table.values():
            if kind == val['kind']:
                count +=1
        return count

    def kind_of(self, _name:str):
        if var:=self.table.get(_name, None):
            var = var['kind']
        return var
    
    def type_of(self, _name:str):
        if var:=self.table.get(_name, None):
            var = var['type']
        return var

    def index_of(self, _name:str):
        if var:=self.table.get(_name, None):
            var = var['index']
        return var

if __name__ == "__main__":
    symbol_table = SymbolTable()
    print(symbol_table.kind_of('some_boolean'))
    print(symbol_table.type_of('some_boolean'))
    print(symbol_table.index_of('some_boolean'))

    symbol_table.define('some_string', 'String', 'STATIC')
    symbol_table.define('some_int', 'int', 'FIELD')
    symbol_table.define('some_char', 'char', 'STATIC')
    symbol_table.define('some_boolean', 'bool', 'FIELD')
    
    print(symbol_table.table)

    print(symbol_table.kind_of('some_boolean'))
    print(symbol_table.type_of('some_boolean'))
    print(symbol_table.index_of('some_boolean'))

    symbol_table.reset()
    print(symbol_table.table)