## Project 2: Boolean Arithmetic
### Adders
#### Half-adder
*Truth table:*
| a | b | carry | sum |
| - | - | - | - |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 |

*API*:<br>
Chip name: HalfAdder<br>
Input: a, b<br>
Output: sum, carry<br>
Function: <br>
sum: LSB of a + b<br>
carry: MSB of a + b<br>

#### Full-adder
*Truth table:*
| a | b | c | carry | sum |
| - | - | - | - | - |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 1 |

*API*:<br>
Chip name: FullAdder<br>
Input: a, b, c<br>
Output: sum, carry<br>
Function: <br>
sum: LSB of a + b + c<br>
carry: MSB of a + b + c <br>

#### Adder (16 bit)
*API*:<br>
Chip name: Add16<br>
Input: a[16], b[16]<br>
Output: out[16]<br>
Function: Adds two 16-bit numbers.<br>
Comment: The overflow bit is ignored

#### Incrementer (16 bit)
*API*:<br>
Chip name: Inc16<br>
Input: in[16]<br>
Output: out[16]<br>
Function: out = in + 1<br>
Comment: The overflow bit is ignored

### Arithmetic Logic Unit
#### ALU
*API*:<br>
Chip name: ALU<br>
Input: <br>
x[16], y[16], // Two 16 bit data inputs <br>
zx, // Zero the x input <br> 
nx, // Negate the x input<br>
zy, // Zero the y input <br> 
ny, // Negate the y input<br>
f, // if f==1  out=add(x, y) else out=and (x, y) <br> 
no, // Negate the out output <br>

Output:<br> 
out[16], // 16-bit output <br> 
zr, // if out==0 zr=1 else zr=0<br> 
ng // if out<0 ng=1 else ng=0 <br> 
Function: <br>
if zx x= 0 // 16-bit zero constant<br> 
if nx  x=!x // Bit-wise negation <br> 
if zy y= 0 // 16-bit zero constant<br> 
if ny  y=!y // Bit-wise negation <br> 
if f out=x+y // Integer two's complement addition <br> 
else out=x&y // Bit-wise And <br> 
if no out=!out // Bit-wise negation <br> 
if out==0 zr=1 else zr=0 // 16-bit equality comparison <br> 
if out<0 ng=1 else ng=0 // two's complement comparison <br> 
Comment: The overflow bit is ignored

