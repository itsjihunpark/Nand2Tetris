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
