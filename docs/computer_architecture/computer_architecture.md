## Project 5: Computer Architecture
### Central Processing Unit

*API*:<br>
Chip name: CPU<br>
Input:<br>
instruction[16] // Instruction to execute<br>
inM[16] // The instruction's M input (content of RAM[A])<br>
reset // Signals whether to restart the program (if reset==1) or continue executing the program (if reset==0)<br>
Output: <br>
outM[16] // Written to RAM[addressM], the instruction's M output<br> 
addressM[15] // At which address to write<br>
writeM // Write to the memory?<br> 
pc[15] // Address of next instruction<br>

### Instruction Memory

*API*:<br>
Chip name: ROM32K<br>
Input: address[15] <br>
Output: out[16]<br>
Function: Emits the 16-bit value stored in the address seleted by the *address* input. It is assumed that the chip is preloaded with a program written in the Hack machine language.

### Input/Output
#### Screen
*API*:<br>
Chip name: Screen // Screen memory map<br>
Input:<br>
in[16] // What to write<br>
address[13] // Where to read/write<br>
load // Write enable bit<br>

Output: out[16] // Screen value at the given address<br>
Function: Exactly like a 16 bit, 8K RAM, plus a screen refresh side effect<br>
Comment: <br>
Emits the value stored at the memory location specified by *address*.<br>
If load=1, then the memory location specified by *address* is set to the value *in*.<br>
The loaded value will be emitted by out from the next time step onward.<br>
In addition, the chip continuously refreshes a physical screen, consisting of 256 rows and 512 columns of black and white pixels.<br>
<br>
The pixel at row *r* from the top and column c from the left (0<=r<=255, 0<=c<=511)<br>
is mapped onto the c%16 bit (counting from LSB to MSB) of the 16 bit word stored in Screen[r*32+c/16] (integer division).<br>
(Simulators of the Hack computer are expected to simulate the physical screen, the mapping, adn the refresh contract).<br>

#### Keyboard
*API*:<br>
Chip name: Keyboard // Keyboard memory map<br>
Output: out[16] <br>
Function: Emits the 16-bit character code of the currently pressed key on the physical keyboard or 0 if no key is pressed.<br>
Comment: (Simulators of the Hack computer are expected to simulate this refresh contract).

### Data Memory
*API*:<br>
Chip name: Memory // Data memory<br>
In: <br>
in[16] // What to write<br>
address[15] // Where to read/write<br>
load // Write-enable bit<br>
Output: out[16] // Value at the given address<br>
Function: <br>
The complete address space of the Hack computer's data memory.<br>
Only the top 16K + 8K + 1 words of the address space are used.<br>
Accessing an address in the range 0 - 16383 results in accessing RAM16K;<br>
Accessing an address in 16384-24575 results in accessing Screen;<br>
Accessing the address 24576 results in accessing Keyboard<br>
Accessing any other address is invalid

### Computer
*API*:<br>
Chip name: Computer<br>
In: reset <br>
Function: <br>
When reset==0, the program stored in the computer executes.<br>
When reset==1, the execution of the program restarts.<br>
To start the program's execution, set reset to 1, and then to 0.<br>
(It is assumed that the computer's instruction memory is loaded with a program written in the Hack machine language)<br>


