## Project 3: Memory
### Memory Devices
#### Data Flip Flop (Assumed to be provided)

*API*:<br>
Chip name: DFF<br>
Input: in <br>
Output: out<br>
Function: out(t+1)=in(t)<br>
Comment: DFF has a clock input that feeds from the master clock's signal which allows for a time-based behavior (see its function above).

#### Single-bit Register: designed to store single bit of information - 0 or 1 - over time.

*API*:<br>
Chip name: Bit<br>
Input: in, load <br>
Output: out<br>
Function: <br>
if load(t) then out(t+1) = in(t)
else out(t+1) = out(t)

#### Register (16-bit register)

*API*:<br>
Chip name: Register (16-bit register) <br>
Input: in[16], load <br>
Output: out[16]<br>
Function:<br>
if load(t) then out(t+1) = in(t)
else out: "=" is a 16-bit operation.

#### Random Access Memory (16-bit)

*API*:<br>
Chip name: RAMn (16-bit register) <br>
Input: in[16], load, address[k] ($\ k =log_2 m$) <br>
Output: out[16]<br>
Function:<br>
Out emits the value stored at memory location (register) specified *address*. If load==1, then the memory location specified by the address is set to the value of **in**. The loaded value will be emitted by **out** from the next time step onward.

#### Program Counter  (16-bit)

*API*:<br>
Chip name: PC<br>
Input: in[16], load, inc, reset <br>
Output: out[16]<br>
Function:<br>
if reset(t) out(t+1) = 0<br>
else if load(t) out(t+1) = in(t)<br>
else if inc(t) out(t+1) = out(t) + 1 (integer addition)<br>
else out(t+1) = out(t)<br>
Comment: To use the Program Counter (PC) properly, at most one of the load, inc, or reset bits should be asserted.
