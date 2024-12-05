
## Notes

##### Voltage
The potential for charge to move, measured in **volts.**
In practicality, determines how many devices or circuits can be powered, as more "pressure" difference creates more desire for electrons to move.

##### Current
The amount of charge flow, measured in **amps.**
Like the amount of water actually flowing through the hose.
Determined by the voltage amount, more electrons will move in the "current" if voltage is high.

##### Resistance
A wire's opposition to flow, measured in **ohms.**
The "thinness" of the wire, like the thinness of a hose to resist stronger flow of water.

##### Ground
Current flows from a higher voltage point to lower voltage point on wire.
0 V is called **ground** and is drawn as 3 line segments on diagrams.

##### Ohm's Law
$current=I$, $voltage=V$, $resistance=R$
$I=V\div R$

#### REMEMBER
Current is conventionally shown to travel from high V to low V, but since electrons are negatively charged, the actual flow is in the other direction.

##### Electronically controlled switch
Has another input terminal whose voltage can turn the switch on, that terminal is called the **control input.**
![[Pasted image 20240908183737.png]]

##### Transistor
It is a smaller, simpler switch with no mechanical parts. 
![[Pasted image 20240908184009.png]]

#### CMOS Technology
CMOS tech (Complementary Metal Oxide Semiconductor) uses pMOS and nMOS to implement digital circuits.

##### nMOS transistor
Negative Metal Oxide Semiconductor conducts when its control input is 1.
![[Pasted image 20240908185638.png]]

##### pMOS transistor
Positive Metal Oxide Semiconductor conducts when control input is 0.
![[Pasted image 20240908185614.png]]

#### Logic Gates

**NOT gate** (inverter) built from CMOS transistors:
![[Pasted image 20240909192545.png]]

**AND gate** built from CMOS transistors:
![[Pasted image 20240909194517.png]]
It is constructed using a **NAND gate** (Not AND) combined with a NOT gate.

**OR gate** built from CMOS transistors:
![[Pasted image 20240909195128.png]]
It is constructed using a **NOR gate** (Not OR) combined with a NOT gate.

#### Digital-designer shorthand
`a AND b` = ab (looks like multiplication, AKA abutment)
`a OR b` = a + b (looks like addition)
`NOT(a)` = a' (complement of a)

##### Combinational Circuit
A circuit whose output value determined solely by present combination of input values.

##### Sequential Circuit
A circuit whose output values may depend on past sequence of input values, not only present values.

#### Circuit drawing conventions
![[Pasted image 20240910140203.png]]

##### Timing Diagram
Graphically shows a circuit's output values for given input values that change over time. Each signal name listed on the left, time proceeds to the right.
![[Pasted image 20240910140519.png]]

#### Common Boolean-algebra properties
![[Pasted image 20240914155741.png]]

#### K-Maps
