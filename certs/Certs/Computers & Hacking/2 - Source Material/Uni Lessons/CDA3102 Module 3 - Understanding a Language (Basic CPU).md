
## Notes

### Programmable Processor Concept
#### Overview
A programmable processor can execute instructions from instruction memory, basically can be programmed to do anything. One processor can have multiple functionalities.

![[Pasted image 20241011160350.png]]
Instructions & data memory used together can do additions with registers and ALU (discussed in module 2).

##### Programmable Processor Parts
- **CPU (central processing unit)**: Contains different hardware components for instruction execution (ALU, register files, etc.)
	- **ALU (Arithmetic Logic Unit)**: Performs basic operations (AND, OR, add, sub, NAND, NOR) on data in register file.
	- **[[CDA3102 Module 2 - MUXes,  ALUs, Registers, RAM#Register Files|Register file]]**: Set of registers holding data to be operated on by ALU and other hardware.

- **Instruction memory**: Memory holding instructions ([[CDA3102 Module 2 - MUXes,  ALUs, Registers, RAM#SRAM Design - Array of cells|SRAM]] or [[CDA3102 Module 2 - MUXes,  ALUs, Registers, RAM#DRAM 1-transistor 1-capacitor cell design|DRAM]]).
- **Data memory**: Memory holding data used by instructions.

#### Three instruction type categories 
-  **Data transfer instruction**: Copies data among data memory and register file.
- **ALU instruction**: Operates (logical, arithmetic) on data.
- **Branch instruction**: Specifies location of next instruction to execute, which doesn't necessarily have to be the next adjacent instruction in memory.

Instructions are encoded into a limited-bit size (ex. 8-bit instruction type = 256 unique instructions). Instructions are normally kept very limited (add, store, load, etc.), and functionality must be achieved with that set.

**Instruction set**: A processor's supported instruction types (represented by opcodes/bit combos).

##### Reset input
Causes 0's to be written in all registers in register file, and the program counter. Effectively starts instruction execution back at instruction address 0. *Power-on-reset* circuit resets the register when power is first applied.

#### Register naming
Each register in register file has a name. The *zero register* is a read-only register that holds value 0 at all times. Subsequent registers may be named differently based on CPU architecture (eg. ebp, esp, eip OR rbp, rsp, rip).

![[Pasted image 20241011180018.png]]

### MIPS
- Processor design that was popular in the 90s
- Simple and elegant instruction set, with just over 100 instruction types
- Instruction size is 32 bits
- MIPS register file has 32 registers, each 32-bits in size
- Memory addresses are 32 bits
- Memory can be access by words, (4 bytes), half-words (2 bytes), or bytes

This material uses **MIPSzy**, a simplified, easy educational MIPS version.

Resources:
- [MIPS architecture details](https://www.mips.com/products/architectures/)
- [MIPS interactive](https://www.zybooks.com/catalog/cod-mips/)

#### Basic Instructions
##### Add instructions

###### addi (add immediate)
**Syntax**: `addi $regA, $regB, immediate`
The addi instruction adds an immediate, 16-bit value (+ or -) to RegB and saves the result to RegA. 

6 bits for the instruction opcode, 5 bits for RegA addr, 5 bits for RegB addr, and 16 bits for immediate value. Making total 32-bit instruction.
![[Pasted image 20241011202329.png]]

**Use case #2**: addi can be used to assign a register with an immediate value
**Syntax**: `addi $RegA, $zero, immediate`
[[#Register naming|$zero]] always holds 0, so this syntax computes RegA = immediate.

###### add (add reg values)
**Syntax**: `add $RegA, $RegB, $RegC`
This computes RegA = RegB + RegC, RegA is destination addr, & RegB/RegC are source addrs.

##### Load instructions

###### lw (load word)
**Syntax**: `lw $register, 0(memory-address)` ex. `lw $t6, 0($t3)`
The lw instruction copies data from memory-address into $register. 
The memory-address is a register containing the memory address from which data is intended to be copied (ex. $t6 which contains 0x1111 which contains "ab")

*The 0() will be explained in upcoming section.*

###### sw (store word)
**Syntax**: `sw $register, 0(memory-address)` ex. `sw $t5, 0($t2)`
The sw instruction copies data from $register into memory-address. Same memory-address specification as lw instruction.

###### Loading/storing with offset
**Syntax**: `lw/sw $register, offset(base-address)` ex. `lw $t5, 4($t6)`, `sw $t2, -8($)`
Loading of memory can be done using offsets, since the base address is loaded into a register (being too big to fit into 32-bit MIPS instruction). The offset is 16-bit in MIPS (+ or -).

Memory address 5036 can be access like 5032 + 4. Offsets in MIPS are multiples of 4, because of 32-bit memory alignment.
![[Pasted image 20241011215750.png]]

#### Instructions for Logical Operations
![[Pasted image 20241011223107.png]]

These operations are used commonly to insert and extract *bit fields*. *Bit fields* are C structs that allow objects (ex. Boolean values) to be packed within words (32-bit in MIPS). This allows space saving (ex. 32 1-bit boolean values in 1 word) and matching external interface fields.

All fields must fit within single word (32-bit in MIPS), and are unsigned.
##### Shift operations
Bit shifting can be done, where all bits in a word are moved left/right and emptied bits are filled with 0s.
![[Pasted image 20241011223008.png]]

###### sll & srl (shift left logical & shift right logical)
**Syntax**: `sll/srl $RegA, $RegB, shamt` 
The sll/srl instructions shift $RegB by shamt (shift amount) bits, and store result in $RegA.
These shifts are akin to multiplying/dividing by 2$^{shamt}$, respectively.

##### Boolean operations

###### AND (bitwise)
**Syntax**: `and $RegA, $RegB, $RegC`
Basically, RegA = RegB & RegC. The operation will compare each bit pair-by-pair and output 1/0 based on truth, doing that for all 8 bit pairs.
![[Pasted image 20241011224441.png]]
AND can apply a bit pattern to a set of bits to force 0s where there is a 0 in the bit pattern. Such a bit pattern in conjunction with AND is traditionally called a mask, since the mask "conceals" some bits.
###### OR (bitwise)
**Syntax**: `or $RegA, $RegB, $RegC`
Basically, RegA = RegB | RegC. The operation compares bit pairs, outputting 1 based on OR truth.
Ex. 1010 | 1001 = 1011.

###### NOR (bitwise)
**Syntax**: `nor $RegA, $RegB, $RegC`
A logical bit-by-bit operation with two operands that calculates the NOT of the OR of the two operands. That is, it calculates a 1 only if there is a 0 in both operands.
Basically, RegA = ~(RegB | RegC).
Ex. ~(1010 | 1001) = 0100.

###### NOT (bitwise)
**Syntax**: `nor $RegA, $zero, $RegC`
A logical bit-by-bit operation with one operand that inverts the bits; that is, it replaces every 1 with a 0, and every 0 with a 1.
Basically, RegA = ~(RegC) depending on which has an actual value.
Ex. ~(1010) = 0101.

###### andi / ori (immediate AND/OR)
**Syntax**: `andi/ori $RegA, $RegB, immediate`
AND / OR bitwise boolean operation but with immediate values.
Logical AND immediate and logical OR immediate put 0s into the upper 16 bits to form a 32-bit constant.


#### Control-Flow Operations

##### Branch and jump instructions

###### beq (branch on equal) / bne (branch not equal)
**Syntax**: `beq/bne $regA, $regB, Label`
**Description**: Branch on equal jumps to a specified *label* if the values in regA & regB are equal. Branch not equal does the same action, only when regA & regB are **NOT** equal.
*Label*: A named position that represents instruction memory address. Ex. label *win* might be IM addr 0x1111.

![[Pasted image 20241012180328.png]]
1. beq instruction = True.
2. Jump to Cont
3. Cont: addi instruction to add immediate value

###### j (jump)
**Syntax**: `j Label`
**Description**: A jump instruction specifies the location of the next instruction to execute (by Label).

![[Pasted image 20241012184610.png]]

###### Jump immediates
`j/jal` instruction has 26 immediate bits for jump addr, other 6 bits are `j` opcode. To fit 32-bit addr into 26 bits during instruction, rightmost 2 bits are omitted, as addrs are always multiples of 4.

During addr formulation for `j`, CPU appends `00` to 26-bit immediate addr, and prepends `j` instruction's leftmost 4 bits, forming 32-bit addr.
![[Pasted image 20241013173648.png]]
**NOTE**: `j` instruction can only jump to addrs whose uppermost 4 bits are same as those of `j`
instruction.

###### Branch immediates
`beq/bne` has only 16-bit immediate field, so branch addr is actually an offset from the next instruction to that addr. Offsets are also multiples of 4, so rightmost 2 offset bits are omitted in instruction.

This allows for specifying 18-bit offset from next instruction, or jump range of -2$^{17}$ to +2$^{17}$ - 4. CPU reconstructs 32-bit branch addr by appending `00` to 16-bit offset, and adding the field to next instruction's 32-bit addr.
![[Pasted image 20241013175115.png]]
###### branch and jump control flow direction
![[Pasted image 20241012194712.png]]

When the beq is true, *Equal* and *After* execute. When beq is false, instructions immediately following beq execute. Then program hits `j After` right before Equal, to avoid execution of Equal.

This allows for *Equal* only to execute when beq = 1.

###### If statement in assembly
![[Pasted image 20241012222848.png]]
If the if statement is comparison for equality, a `bne` can be used in assembly to check for inequality, and if unequal, then jump to `After`. Else, the execution just falls through to the next statement.

###### If-else statement in assembly
![[Pasted image 20241012223449.png]]
If the if-else statement is comparing equality:
1. `bne` used to check for inequality.
2. If `bne` = 1, jump to else, and continue to After.
3. If `bne` = 0 (if statement is true), just fall through to next instruction.
	1. When reached Else: label instruction, jump to After label.

###### If else-if statement in assembly
![[Pasted image 20241012224013.png]]
1. Each comparison statement uses `bne` if equality is checked.
2. A `j After` is added at the end of each `bne` block if `bne`=0 and no jump happens, then after execution state fall-through, a jump will happen instead of another if-block being entered.

##### Loops
`bne/beq` and `j` can be used for loops too.
![[Pasted image 20241012225849.png]]
1. `bne/beq` is used as loop condition. If false, branch out to Exit label.
2. `j` is used at the end of while loop to jump back to the start.

**Basic Block**: A sequence of instructions without branches (except possibly at the end) and without branch targets or branch labels (except possibly at the beginning).

###### Greater than/Less than comparisons
`slt` can be used for >/< comparisons. Ex. `slt $t0, $s3, $s4 # $t0 = 1 if $s3 < $s4`
.`slti` can be used for >/< comparisons with immediates instead of registers. Ex. `slti $t0, $s2, 10 # $t0 = 1 if $s2 < 10`.

**With for-loops**:
`for (i = 0; i < 9; ++i) { .... }` -> `slti $t0, $s0, 9`
OR `for (i = 1; i < j; ++i) { loop body }` where i is $s0, j is $s1:
```
Loop: slt $t3, $s0, $s1  
beq $t3, $zero, Exit 
# Loop body 
j Loop
```

**For signed/unsigned comparison differentiation**: Use `slt/slti` for signed comparisons, and `sltu/sltiu` for unsigned comparisons.

Consider this:
![[Pasted image 20241013145524.png]]

**Array index bounds check shortcut**: To check if 0 <= i < y, where i is array index, `sltu` will do both. Ex. `i = 0b1001`, `y = 0b0100 (4)` -> `i (signed) = -1` & `i (unsigned) = 9`. `sltu` implicitly checks both bounds at once. 
![[Pasted image 20241013162122.png]]

###### Case/switch and jump tables
For case/switch, *jump tables* can be used to encode all alternative instruction sequences (conditions) into an array structure. Each address in *jump table* corresponds to a label in the code.

`jr (jump register)` is used to jump to address in register, which was loaded from jump table.


#### Machine Instructions
**Opcode**: An operation code, which encodes machine instruction's operations (ex. add, lw) into bits. Generally 6 bits in size
**Operand**: Arguments to an instruction, encoded into bits. 32-bit addresses are 5 bits, arbitrary numbers (offsets, immediates) are generally 16 bits.

Together, opcodes and operands total 32 bits in size, in MIPS.
![[Pasted image 20241011234835.png]]
![[Pasted image 20241011235411.png]]
##### MIPSzy register encodings/machine instruction encodings

| Name     | $zero | $t0   | $t1   | $t2   | $t3   | $t4   | $t5   | $t6   |
| -------- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Encoding | 00000 | 01000 | 01001 | 01010 | 01011 | 01100 | 01101 | 01110 |
![[Pasted image 20241011235803.png]]

### Base MIPSzy

#### Base Processor Design

##### Components:
- *Instruction memory* (IM)
- *Data memory* (DM)
- *Register file* (RF)
- *Adder* (ADD)
- *Control logic* (CTRL)
- *Program counter* (PC)
To implement the *base MIPSzy processor*, one can create circuit of components that support *MIPSzy behavioral description* actions, and then implement the control logic for those actions in CTRL, as combinational circuit. 

**Base Processor diagram**:
![[Pasted image 20241012024438.png]]
Right side shows base diagram, while left side shows *behavioral description*.

1. ir = IM\[PC/4], PC output is connected to input `a` of IM. Only 11:2 bits of PC 32-bit instruction addr output are connected because MIPSzy only allows addrs 0-4092 for instructions.
2. PC = PC + 4, incremented by 32 bits for next "word" in this 32-bit aligned address space.
3. IM fetches addr given by PC, and outputs it.
4. ir (instruction register) is parsed for sub-bits by wires.
5. ir31_26 (6 opcode bits) is bitwise equality checked to match an opcode by CTRL component.
6. RF[ir25_21] (register file address parsed from ir) is read by RF read port 1, r1a, and value output at dm_a.
7. More connections are added as needed. If 2 or more items connect to one input, a MUX controlled by CTRL is added.
8. SE (sign extender) helps with extending positive/negative immediates from 16 to 32-bit for adder. (Extension helps to fit MIPSzy 32-bit alignment).

###### NOTE:
For simplicity, MIPSzy's design ignores the leftmost bits, assuming a program only accesses instructions in locations 0-4092 and data in locations 4096-8188. By ignoring the leftmost bits, accesses outside that range will still perform an access to a location defined by the rightmost bits, resulting in strange program behavior.

#### Base Behavior / Control Logic

Base MIPSzy only deals with lw, sw, addi, & add. Other instructions are added to extend base MIPSzy.
##### Behavioral description actions
C-like language to describe desired processor behavior.
```c
ir = IM[PC/4];
PC = PC + 4;
// Assume ir31_26 etc are extracted
                    // lw
if      (ir31_26 == 0b100011)  {
  dm_a = RF[ir25_21];
  dm_rd = DM[(dm_a-4096)/4];
  RF[ir20_16] = dm_rd; 
}
                    // sw
else if (ir31_26 == 0b101011)  {
  dm_a = RF[ir25_21];
  dm_wd = RF[ir20_16];
  DM[(dm_a-4096)/4] = dm_wd;
}
                    // addi
else if (ir31_26 == 0b001000)  {
  add1 = RF[ir25_21];
  add2 = ir15_0;
  RF[ir20_16] = add1 + add2;
}
                    // add
else if ( (ir31_26 == 0b000000)
       && (ir5_0 == 0b100000) ){
  add1 = RF[ir25_21];
  add2 = RF[ir20_16];
  RF[ir15_11] = add1 + add2;
}
```
1. Defines behavior of PC.
2. Defines steps to take if lw instruction is detected
3. Defines steps to take if sw is detected
4. Defines steps for add & addi too

##### Control logic actions
Any control signal not explicitly set (with 0 or 1) on a given pass through the Execute state is implicitly set with 0.
```c
// PC11:2 connected to IM's address sets ir
// PC's ld input tied to 1 loads PC + 4

                     // lw
if  (ir31_26 == 0b100011)  { 
   rf_r1e = 1; // Reads RF[ir25_21] onto dm_a
   dm_re = 1;  // Reads DM using dm_a 11:2
   rf_wd_s = 0;  rf_wa_s = 1;  rf_we  = 1;
}
                     // sw
else if (ir31_26 == 0b101011)  {
   rf_r1e = 1;
   rf_r2e = 1;
   dm_we = 1;
}
                     // addi
else if (ir31_26 == 0b001000)  {
   rf_r1e = 1;
   add_add2_s = 0; 
   rf_wd_s = 1;  rf_wa_s = 1;  rf_we = 1;
}
                       // add
else if ( (ir31_26 == 0b000000)
        && (ir5_0   == 0b100000) ){ 
   rf_r1e = 1;
   rf_r2e = 1;  add_add2_s = 1;
   rf_wd_s = 1;  rf_wa_s = 0;  rf_we = 1;
}
```
Converted high-level behavior to control logic.
1. ir = IM[PC/4] is done by default, as PC output is IM input. No control logic needed for this.
2. PC ld = 1 always, no control logic needed for PC + 4.
3. Each variable set enables or disables different paths for instructions to execute.
4. For future me, just correlate control logic to wiring and input/output to trace what different "variables" in this control logic do.

#### Instruction execution flow on base MIPSzy
1. Program loaded into IM.
2. Processor starting, power-on-reset circuitry would enable rst on PC & RF, clearing them.
3. PC has instruction addr 0, read into IM, saved to ir.
4. ir opcode flows to CTRL.
5. CTRL sets appropriate control outputs (based on above defined control logic) to do instruction.
6. RF has outputs sent by CTRL waiting at its inputs, which take effect on next rising clk.
7. All done during one Execute state.
![[Pasted image 20241012024527.png]]

![[Pasted image 20241012162028.png]]

#### Base MIPSzy + sub instruction

##### Component diagram
The ADD component can be replaced with ADD/SUB. This adder is capable of subtraction too.
![[Pasted image 20241012164826.png]]

##### Behavior / Logic control update
The high-level behavior can be updated to add an else-if for sub instruction.
```c
// sub 
else if ((ir31_26 == 0b000000) && (ir5_0 == 0b100010)) { 
	add1 = RF[ir25_21]; 
	add2 = RF[ir20_16]; 
	RF[ir15_11] = add1 - add2; 
}
```
1. Leftmost 6, rightmost 6 bits are checked for [[#MIPSzy register encodings/machine instruction encodings|sub opcode]] field matching.
2. Add1, add2 addrs extracted from appropriate fields.
3. RF saves subtraction to specified register.

The control logic for CTRL updated to add sub instructions.
```c
// add 
else if ( (ir31_26 == 0b000000) && (ir5_0 == 0b100000) ) { 
	rf_r1e = 1; 
	rf_r2e = 1; 
	add_add2_s = 1; 
	rf_wd_s = 1; rf_wa_s = 0; rf_we = 1; 
	add_sub = 0; 
} 
// sub 
else if ( (ir31_26 == 0b000000) && (ir5_0 == 0b100010) ) { 
	rf_r1e = 1; 
	rf_r2e = 1; 
	add_add2_s = 1; 
	rf_wd_s = 1; rf_wa_s = 0; rf_we = 1; 
	add_sub = 1;
}
```
1. add/sub control logic is the same, only one difference.
2. add_sub control signal = 0 for add, 1 for sub.

#### Base MIPSzy + slt instruction
The [[#MIPSzy register encodings/machine instruction encodings|slt instruction]] will return 1 to destination register if source register 1 is less than source register 2, else returns 0. For more info, [click here](https://www3.ntu.edu.sg/home/smitha/FYP_Gerald/sltInstruction.html).
##### Component diagram
![[Pasted image 20241012171527.png]]
1. To support slt, [ALU supporting slt](https://www.cs.ccsu.edu/~markov/ccsu_courses/385SL5.pdf) is put in place of ADD component (adder).
2. alu_less control signal used by CTRL to control ALU.
3. All other is in place, output of ALU piped back into RF, just like with ADD component.

##### Behavior / logic control update
The high-level behavior updated to add functionality for slt.
```c
// slt 
else if ((ir31_26 == 0b000000) &&(ir5_0 == 0b101010)) {
	add1 = RF[ir25_21]; 
	add2 = RF[ir20_16]; 
	RF[ir15_11] = (add1 < add2);
}
```
1. Check for correct slt opcodes at leftmost & rightmost fields.
2. add1 is assigned first source register value.
3. add2 is assigned second source register value.
4. RF saves the result of add1 < add2 (on circuit add1 - add2 < 0 implies add1 < add2) to ir15_11.
5. Result will be 1 if add1 < add2, else 0.

The control logic for CTRL updated to add slt instructions.
```c
// slt 
else if ((ir31_26 == 0b000000) &&(ir5_0 == 0b101010)) {
	rf_r1e = 1; 
	rf_r2e = 1; 
	add_add2_s = 1; 
	alu_less = 1; 
	rf_wd_s = 1; rf_wa_s = 0; rf_we = 1;
}
```
1. Control logic is the same, reading and writing from registers and all that. One difference.
2. alu_less = 1 to enable slt on ALU.
3. For add, addi, alu_less = 0.

#### Base MIPSzy + beq/bne
More logic and components can be added to support `beq/bne` instructions.
![[Pasted image 20241013180947.png]]
1. Adder is replaced with ALU that can compare-for-equality.
2. alu_eq control signal is added to CTRL.
3. New wire for ir15_0 (immediate bits) is added, fed into sign extender (SE) which takes in `00` as input for appending too.
4. Adder is placed after SE, to [[#Branch immediates|create full branch addr]].
5. MUX is added, which allows either PC+4 or next branch addr to flow through to PC.
6. pc_s control signal is connected as select line for MUX. If alu_eq = 1, pc_s = 1, allowing branch jump to go to PC. Else, PC + 4 is loaded and execution continues as normal.
7. `bne` is also supported because "true" condition is just alu_eq == 0 instead of 1. And some CTRL logic additions based on `bne` opcode detection.

#### Base MIPSzy + j/jal
##### Component diagram for jump
![[Pasted image 20241013182456.png]]
1. ir25_0 wire added for `j`'s 26 immediate bits.
2. ir25_0 + `00` prepended with PC+4\[31:28], to create full `j` addr.
3. MUX added with pc_s select line to pass jump addr to PC only if `j` opcode is detected by CTRL.
##### Behavior/logic control update for jump
High-level behavior updated to add functionality for `j`.
```c
// j 
else if (ir31_26 == 0b000010) {
	PC = {PC31_28, ir25_0, 0b00};
}
```
1. Check for `j` opcode.
2. Set PC to leftmost 4 bits of PC+4, combined with ir25_0, and append `00`.

The control logic updated on CTRL for `j`.
```c
// j 
else if (ir31_26 == 0b000010) {
	pc_s = 1;
}
```
1. Check for `j` opcode.
2. Set pc_s to 1, enabling MUX passthrough of 32-bit jump address to PC.

##### Component diagram for jal (jump and link)
`jal` (jump and link) jumps to specified label, and saves PC+4 to special register $ra which is at reg file location 31.

![[Pasted image 20241013184318.png]]
1. Still includes `j` components
2. MUXes for `wd` and `wa` inputs for RF are updated with larger MUXes.
3. `wd` MUX includes input 2, which is PC+4.
4. `wa` MUX includes input 2 which is RF\[31].
5. `rf_wa_s1s0` and `rf_wd_s1s0` added as select lines for both updated MUXes.

##### Behavior/logic control update for jal
High-level behavior update for `jal`. It is the same as `j` with one more added line
```c
// jal 
else if (ir31_26 == 0b000011) { 
	RF[31] = PC; 
	PC = {PC31_28, ir25_0, 0b00);
}
```
1. Check for `jal` opcode.
2. Assign PC+4 to RF\[31], AKA $ra.
3. Do the same as `j` behavior does.

Control logic update on CTRL for `jal`.
```c
// jal 
else if (ir31_26 == 0b000011) {
	rf_wd_s1s0 = 0b10; 
	rf_wa_s1s0 = 0b10; 
	we = 1; 
	pc_s = 1;
}
```
1. Check for `jal` opcode.
2. Set `rf_wa_s1s0` and `rf_wd_s1s0` select lines to option 2 on MUX.
3. set `we = 1` to enable writing of RF
4. Do the same as `j` logic control does.zx