"""
This module provides services for resolving symbolic references into actual addresses using a <symbol, address> map.
"""

class SymbolTable:
    """
        Code encapsulates services to resolve symbolic references into actual addresses.

        Methods:
            __init__(): Creates a new empty symbol table
            addEntry(symbol: str, address: int): Adds <symbol, address> to the table.
            contains(symbol: str): Returns boolean which signifies whether symbol table contain the given symbol.
            getAddress(symbol: str): Returns the address (int) associated with the provided symbol.
    """
    
    def __init__(self):
        """
        Constructor/initialiser
        """
        self.next_available_address = 16
        self.symbol_table= {
            "R0":0,
            "R1":1,
            "R2":2,
            "R3":3,
            "R4":4,
            "R5":5,
            "R6":6,
            "R7":7,
            "R8":8,
            "R9":9,
            "R10":10,
            "R11":11,
            "R12":12,
            "R13":13,
            "R14":14,
            "R15":15,
            "SP":0,
            "LCL":1,
            "ARG":2,
            "THIS":3,
            "THAT":4,
            "SCREEN": 16384,
            "KBD": 24576
        }

    def addEntry(self, symbol: str, address: int) -> None:
        """
        Adds <symbol, address> to the table
        """
        self.symbol_table[symbol] = address


    def contains(self, symbol: str) -> bool:
        """
        Does the symbol table contain the given symbol?
        """
        return True if symbol in self.symbol_table else False

        
    def getAddress(self, symbol: str)-> int:
        """
        Return the address associated with the symbol
        """
        return self.symbol_table[symbol]