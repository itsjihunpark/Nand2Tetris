


# Nand 2 to Tetris  Project: Building a modern computer from first principles
This project based learning is credited entirely to the book:  [The Elements of Computing Systems: Building a Modern Computer from First Principles (The MIT Press): Nisan, Noam, Schocken, Shimon](https://www.amazon.co.uk/Elements-Computing-Systems-Building-Principles/dp/0262640686)

This project is made up of two parts: Hardware and Software. 

For the Hardware project I have built a "no particular type (neither RISC nor CISC)" instruction set, 16bit, Von Neumann variant hardware platform from elemental logic gate (Nand) defined with Hardware Definition Language (HDL). In addition, an assembler was developed to translate symbolic machine code (assembly) to binary machine code which can be executed on this hardware platform. 

For the Software project ... (tbc)

"What I cannot create, I do not understand" - Richard Feynman

## Project checkpoints
| Project | Time required | Component | Current Status | Tasks | 
|----------|---------------|----------|---------|---------------------------------|
| [Boolean Logic](https://github.com/itsjihunpark/Nand_Gates_to_Tetris/blob/main/docs/boolean_logic/project-1-boolean-logic.md) | > 5 hours  | Hardware | completed | Implement chips by writing HDL for (given the provided Nand gate) and test them using compare files: <br> *Basic Gates*<br> - [ x ] **Not** Gate <br> - [ x ] **And** Gate <br> - [ x ] **Or** Gate <br> - [ x ] **Xor** Gate <br> - [ x ] **Multiplexer** <br> - [ x ] **Demultiplexer** <br> <br>*Multi-bit Basic Gates*<br> - [ x ] **Multi-bit Not** Gate (16 bit) <br> - [ x ] **Multi-bit And** Gate (16 bit) <br> - [ x ] **Multi-bit Or** Gate (16 bit) <br> - [ x ] **Multi-bit Multiplexer** Gate (16 bit) <br><br>*Multi-way Basic Gates*<br> - [ x ] **Multi-way Or** Gate (8 way) <br> - [ x ] **Multi-way/Multi-bit Multiplexer** Gate (4-way, 16 bit) <br> - [ x ] **Multi-way/Multi-bit Multiplexer** Gate (8-way, 16 bit) <br> - [ x ] **Multi-way/Multi-bit Demultiplexer** Gate (4-way, 1 bit) <br> - [ x ] **Multi-way/Multi-bit Demultiplexer** Gate (8-way, 1 bit)
| [Boolean Arithmetic](https://github.com/itsjihunpark/Nand_Gates_to_Tetris/tree/main/docs/boolean_arithmetic) | > 5 hours  | Hardware | completed | Implement combinational chips by writing HDL for (given basic chips) and test them using compare files: <br> *Adders* <br> - [ x ] **Half-adder** <br> - [ x ] **Full-adder** <br> - [ x ] **Adder (16-bit)**<br> - [ x ] **Incrementer (16-bit)**<br><br> *Arithmetic Logic Unit* <br> - [ x ] **Arithmetic Logic Unit** 
| [Memory](https://github.com/itsjihunpark/Nand_Gates_to_Tetris/tree/main/docs/memory) | > 5 hours  | Hardware | completed | Implement sequential chips by writing HDL for (given basic data flip flop) and test them using compare files: <br> *Memory chips* <br> - [ x ] **single-bit register** (i.e., bit) <br> - [ x ] **16-bit register** (i.e., register) <br> - [ x ] **Random Access Memory** (16K/16384 16-bit registers) 
| [Machine Language](https://github.com/itsjihunpark/Nand2Tetris/blob/main/docs/machine-language.md)   | > 5 hours  | Hardware | completed |Write two assembly (symbolic machine language) program: <br>- [ x ] **Mult.asm** (In: values stored in R0 and R1 aka RAM[0] and RAM[1] aka virtual registers; Computes: R0*R1 and stores results in R2; Assumes R0>=0, R1>=0, and R2<32768) <br> - [ x ] **Fill.asm** (I/O handling - An infinite loop that listens to keyboard,  memory mapped in data memory, and when any key is pressed, the program blackens the screen, also memory mapped - in 8K memory block; 256 rows of 512 pixel per row - in data memory starting at RAM[16384])   
| [Computer Architecture](https://github.com/itsjihunpark/Nand2Tetris/tree/main/docs/computer_architecture) | > 5 hours  | Hardware | completed | Implement following chips by writing HDL for (given all previously implemented chips) and test them using compare files: <br> - [ x ] **Central Processing Unit** <br> - [ o ] **ROM 32K** (i.e., instruction memory; provided by project) <br> - [ o ] **Screen chip** (i.e., interfaces with a physical screen -  256 rows of 512 b/w pixels each - via a memory map implemented by a  16-bit, 8K RAM chip; provided by project) <br> - [ o ] **Keyboard chip** (i.e., interfaces with physical keyboard via a memory map implemented by keyboard chip - read only 16 bit register with a side effect of reflecting the state of the physical keyboard; provided by project) <br> - [ x ] **Data memory** (i.e., realises the data memory with a set of three 16-bit chip-parts: RAM16K, Screen, and Keyboard) <br> - [ x ] **Computer chip** (i.e., Topmost element; a computer-on-a-chip named Computer that can be connected to a screen, and keyboard). When 'reset' input is set to 1 and then to 0, the computer should start executing the currently loaded program after which, the fate of the computer user is "at the mercy of the software")
| Assembler | > 5 hours  | Hardware meets Software | completed | Develop an assembler, using any high-level programming language, that translates programs written in assembly language (symbolic machine language) into binary code (binary machine language) and test them using compare files: <br> - [ x ] **Parser module** <br> - [ x ] **Code module** <br> - [ x ] **SymbolTable module** 
| Virtual Machine I: Processing| > 5 hours  | Software | not started |
| Virtual Machine II: Control| > 5 hours  | Software | not started | 
| High level language | > 5 hours  | Software | not started | 
| Compiler I: Syntax Analysis | > 5 hours  | Software | not started | 
| Compiler II: Compiler II: Code Generation | > 5 hours  | Hardware | not started | 
| Operating System | > 5 hours  | Software | not started | 
 
