## Project 1: Boolean logic
### Basic Gates Specification
#### Nand: Returns 0 when both inputs are 1, and 0 otherwise:
*Truth table:*
| a | b | Nand (a,b) |
| - | -|----------- |
| 0 | 0 | 1 |
| 1 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 1 | 0 |

*API*:<br>
Chip name: Nand<br>
Input: a, b<br>
Output: out<br>
Function: if ( (a == 1) and (b == 1) ) then out  = 0 else out = 1

#### Not: a.k.a., inverter, outputs the opposite value of its input:
*Truth table:*
| in | Not (in) |
| - |----------- |
| 0 | 1 |
| 1 | 0 |

*API*:<br>
Chip name: Not<br>
Input: in<br>
Output: out<br>
Function: if (a == 1)  then out  = 0 else out = 1

#### And: Returns 1 when both its inputs are 1, and 0 otherwise:
*Truth table:*
| a | b | And (a,b) |
| - | -|----------- |
| 0 | 0 | 0 |
| 1 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 1 | 1 |

*API*:<br>
Chip name: And<br>
Input: a, b<br>
Output: out<br>
Function:  if ( (a == 1) and (b == 1) ) then out  = 1 else out = 0

#### Or Gate: Returns 1 when at least one of its input is 1, and 0 otherwise:
*Truth table:*
| a | b | Or (a,b) |
| - | -|----------- |
| 0 | 0 | 0 |
| 1 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 1 | 1 |

*API*:<br>
Chip name: Or<br>
Input: a, b<br>
Output: out<br>
Function:  if ( (a == 0) and (b == 0) ) then out  = 0 else out = 1

#### Xor Gate: a.k.a., exclusive or, returns 1 when exactly one of its inputs is 1, and 0 otherwise:
*Truth table:*
| a | b | Xor (a,b) |
| - | -|----------- |
| 0 | 0 | 0 |
| 1 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 1 | 0 |

*API*:<br>
Chip name: Xor<br>
Input: a, b<br>
Output: out<br>
Function:  if ( (a != b) ) then out  = 1 else out = 0

#### Multiplexer:   Three input gate (a,b, and sel) a.k.a., selector. Two input bits a and b are referred to as data bits, and a third input bit named sel - interpreted as a selection bit. 'sel' is used to select the output value of either a or b.
*Truth table:*
| a | b | sel | out |
| - | - | - | - |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 |

*API*:<br>
Chip name: Mux<br>
Input: a, b, sel<br>
Output: out<br>
Function:  if (sel==0) then out = a, else out = b

#### Demultiplexer: Two input and two output gate - it takes a single data bit (in) and selection bit (sel) and routes it to one of two possible outputs according to the selection bit. 
*Truth table:*
| sel | a |b |
| - | -|----------- |
| 0 | in | 0 |
| 1 | 0 | in |

*API*:<br>
Chip name: DMux<br>
Input: in, sel<br>
Output: a, b<br>
Function:  if (sel==0) then {a, b} = {in, 0}, else {a, b} = {0, in}

### Multi-bit Basic Gates
#### Multi-bit Not (16 bit): An n-bit Not gate applies Boolean operation Not to every one of the bits in its n-bit input:
*API*:<br>
Chip name: Not16<br>
Input: in[16]<br>
Output: out[16]<br>
Function: for i = 0..15 out[i] = Not (in[i])  

#### Multi-bit And (16 bit): An n-bit And gate applies Boolean operation And to every respective pair in its two n-bit inputs:
*API*:<br>
Chip name: And16<br>
Input: in[16]<br>
Output: out[16]<br>
Function: for i = 0..15 out[i] = And (a[i], a[i])  

#### Multi-bit Or (16 bit): An n-bit Or gate applies Boolean operation Or to every respective pair in its two n-bit inputs:
*API*:<br>
Chip name: Or16<br>
Input: in[16]<br>
Output: out[16]<br>
Function: for i = 0..15 out[i] = Or(a[i], a[i])  

#### Multi-bit Multiplexer(16 bit): An n-bit multiplexer applies operates exactly the same as a basic multiplexor, except that its inputs and outputs are n-bit wide:
*API*:<br>
Chip name: Mux16<br>
Input: a[16], b[16], sel<br>
Output: out[16]<br>
Function: if (sel ==0) then for i in = 0..15 out[i]=a[i], else for i = 0..15 out[i] = b[i]

### Multi-way Gates  
#### Multi-way Or Gate (8 way): An m-way Or gate outputs 1 when at least one of its m input bits is 1, and 0 otherwise.
*API*:<br>
Chip name: Or8Way<br>
Input: in[8]<br>
Output: out<br>
Function: out = Or (in[0], in[1],... ,in[7])

#### Multi-way/Multi-bit Multiplexer Gate: An m-way n-bit multiplexer selects one of its m n-bit inputs, and outputs it to its n-bit output. The selection is specified by a set of k selection bits, where $\ k =log_2 m$. 
##### Multi-way/Multi-bit Multiplexer Gate (4-way, 16 bit)
*Truth table:*
| sel[1] | sel[0] | out |
| - | - | - |
| 0 | 0 | a |
| 0 | 1 | b |
| 1 | 0 | c |
| 1 | 1 | d |

*API*:<br>
Chip name: Mux4Way16<br>
Input: a[16], b[16], c[16], d[16], sel[2] <br>
Output: out[16]<br>
Function: If  (sel==00, 01, 10,  or 11) then out = a, b, c, or d<br>
Comment: The assignment is a 16 bit operation. E.g., "out = a" means "for i = 0..15 out[i] = a[i]"

##### Multi-way/Multi-bit Multiplexer Gate (8-way, 16 bit)  
*Truth table:*
| sel[2] | sel[1] | sel[0]| out |
| - | - | - | - |
| 0 | 0 | 0 | a |
| 0 | 0 | 1 | b |
| 0 | 1 | 0 | c |
| 0 | 1 | 1 | d |
| 1 | 0 | 0 | e |
| 1 | 0 | 1 | f |
| 1 | 1 | 0 | g |
| 1 | 1 | 1 | h |


*API*:<br>
Chip name: Mux8Way16<br>
Input: a[16], b[16], c[16], d[16], e[16], f[16], g[16], h[16], sel[3] <br>
Output: out[16]<br>
Function: If  (sel==000, 001, 010, ..., or 111) then out = a, b, c, d, ..., or h<br>
Comment: The assignment is a 16 bit operation. E.g., "out = a" means "for i = 0..15 out[i] = a[i]"

#### Multi-way/Multi-bit Demultiplexer Gate (4-way, 1 bit)  
*Truth table:*
| sel[1] | sel[0] | a | b | c | d |
| - | - | - | - | - | - |
| 0 | 0 | in | 0 | 0 | 0 |
| 0 | 1 | 0 | in | 0 | 0 |
| 1 | 0 | 0 | 0 | in | 0 |
| 1 | 1 | 0 | 0 | 0 | in |

*API*:<br>
Chip name: DMux4Way<br>
Input: in[16], sel[2] <br>
Output: a, b, c, d<br>
Function: <br>
if (sel=00) then {a, b, c, d} = {1,0,0,0}<br>
else if (sel=01) then {a, b, c, d} = {0,1,0,0}<br>
else if (sel=10) then {a, b, c, d} = {0,0,1,0}<br> 
else if (sel=11) then {a, b, c, d} = {0,0,0,1}<br>

#### Multi-way/Multi-bit Demultiplexer Gate (8-way, 1 bit)
*Truth table:*
| sel[2] | sel[1] | sel[0] | a | b | c | d | e | f | g | h | 
| - | - | - | - | - | - | - | - | - | - | - | 
| 0 | 0 | 0 | in | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | in | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | in | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 | in | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | in | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | in | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | in | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | in |

*API*:<br>
Chip name: DMux8Way<br>
Input: in[16], sel[3] <br>
Output: a, b, c, d, e, f, g, h<br>
Function: <br>
if (sel=000) then {a, b, c, ..., h} = {1,0,0,0,0,0,0,0}<br>
else if (sel=001) then {a, b, c, ..., h} = {0,1,0,0,0,0,0,0}<br>
else if (sel=010) then {a, b, c, ..., h} = {0,0,1,0,0,0,0,0}<br> 
...<br>
else if (sel=111) then {a, b, c, ..., h} = {0,0,0,0,0,0,0,1}<br>
