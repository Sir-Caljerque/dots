
## Notes

### Sequential Circuit
Output depends on the present and past sequence of input values (circuit stores at least one bit).
Sequential circuits use clocks to synchronize storing of bits, simplifying sequential circuit design.
### Latch
Simplest circuit for storing a bit

##### SR Latch (Set-Reset Latch)
Stores one bit. Has an input `s` to set the latch to 1, an input `r` to reset the latch to 0, and stored bit appearing on output `q`.

![[Pasted image 20241009002605.png]]

SR latch is built with 2 cross-coupled NOR gates (output of top gate is 1 input to bottom and vice-versa).
If s = 1, r = 0
Top NOR = (s + I$_2$)' -> (1 + 0)' = 0 (B$_1$).
Bottom NOR = (B$_1$ + r)' -> (0 + 0) -> 1.
Therefore, q (storage bit) = 1.
I$_2$ also = 1.

s now resets to 0.
Top NOR = (s + I$_2$)' -> (0 + 1)' -> 0.
Bottom NOR = (B$_1$ + r)' -> (0 + 0) -> 1. 
Bottom gate stays the same, therefore q stays the same, condition is stored and persisted until another "button press".

##### SR Latch 11 Input Problem
![[Pasted image 20241009004200.png]]

If s = 1 & r = 1, both NOR gates output 0  which makes q = 0. Also, gate outputs become input for I$_2$ and B$_1$, causing both gates to output 1 **when s & r reset**, and q = 1.

Outputs of 1 become input and gates output 0, q also = 0 again. This is an *Oscillation* of output q, until wire delays cause q to settle at 0 or 1.

##### D Latch (Data Latch)
Stores 1 bit, with input d (data) having bit to be stored, an input e (enable) that, when 1, enables storing the bit, and output q which stored bit appears on.

![[Pasted image 20241009010316.png]]
D latch doesn't have an oscillation problem, an internal SR latch with s = d and r = d' implements a D latch. e essentially enables d to be stored, whether d is 0 or 1, due to AND gate implementation.

| e   | d   | q                                    |
| --- | --- | ------------------------------------ |
| 0   | 0   | Previously stored bit (d is ignored) |
| 0   | 1   | Previously stored bit (d is ignored) |
| 1   | 0   | 0 (d is stored)                      |
| 1   | 1   | 1 (d is stored)                      |
### Clock

##### Clock Signal
Oscillating signal to control when to store bits. Bits are stored at a clock's *rising edge*: The instant a clock signal changes from 0 to 1 (kind of like an automated enabler (e)).

An oscillator generates a clock signal at a specific frequency. On component diagram, a small triangle indicates clock signal input.
![[Pasted image 20241009011827.png]]
##### Clock Cycle
The time between two rising edges, AKA the *clock period*.
##### Clock Frequency
Number of clock cycles per second, AKA *Hertz (Hz)*. 1 MHz clock has 1mil cycles/second.
Frequency is the inverse of period. Ex: A 1 microsecond (0.000001) period yields a frequency of 1 MHz (because 1 / 0.000001 s = 1,000,000 Hz).
##### D flip-flop
D latch that stores a new bit only at the instant of a clock input's rising edge, a flip-flop is edge-triggered.

![[Pasted image 20241009020829.png]]
D flip-flop implementation with 2 D-latches, with first latch enable input inverted, called a *main-secondary arrangement*. 
When clk is 0, first D latch is activated (e'), q value is stored. 
When clk is 1, second D latch is activated, and q value of D latch 1 propagates to D latch 2.

### Registers

##### Register
Circuit that stores a group of bits, a 3-bit register stores 3 bits. All bits are stored, or rather *loaded* simultaneously on rising clock edge.
##### D flip-flop based register
![[Pasted image 20241009021617.png]]
Multiple D latches in series, each storing 1 bit, activated by the same clock signal.
When clk rises, all 3 bits are loaded, and preserved until next clk signal and loading of new bits.

##### Load Register
Can be built with 2x1 MUXes and D flip-flops. It has a control input *ld* which allows control over which clock cycles to load new values into the register. ld = 1 causes a load operation on clk rise, ld = 0 causes a maintain operation on clk rise.
Load registers can also have rst control bit, resetting all data bits to 0. It has preference over ld bit.

![[Pasted image 20241009145750.png]]

N-bit registers can be shown like the following image:
![[Pasted image 20241009151437.png]]
Timing diagram for multiple bits can be represented with decimal / binary notation of bits in blocks.

*An interesting picture on how adders and registers might be used to do math and preserve values:*
![[Pasted image 20241009153231.png]]

##### Three-State Buffer
A component that allows multiple wires to combine into one wire, allowing multiple components to use the same one wire for data input. When a = 1, y = b (0 or 1). When a = 0, y = *Z*, AKA *High Impedance*, which means "no connection", or the input is "disconnected". High impedance means close to infinite electric flow resistance.

![[Pasted image 20241009161047.png]]

##### Register Files
An NxM register file implements access to N M-bit registers. It consists of a *write port* (data input **W_data**, address input **W_addr**, enable input **W_en**), handling write operations.

Also has a *read port* (single 32-bit data output **RA_data**, 4-bit addr input **RA_addr**, enable input **RA_en**), which handles read operations. There can be multiple read ports, allowing for more simultaneous reading.

Enable and address inputs managed by decoders of size N. Three-state buffers allow for all registers to use same wiring for Q (data) output.

Read operations are asynchronous (happen right away), while write ops happen based on clk rise.

An internal diagram for register files:
![[Pasted image 20241009221909.png]]
### Ram Design

##### SRAM Design - Array of cells
![[Pasted image 20241009225234.png]]
##### SRAM 6-transistor cell design
The design uses two inverters to store a bit, which bounces back and forth in the inverter loop indefinitely.

When we (word enable) = 1, transistors are enabled and wdata value can enter the loop (left side). wdata' is also entered into loop (right side) to avoid interference by previous value with storing of new value.
![[Pasted image 20241009225101.png]]
[Data reading](https://en.wikipedia.org/wiki/Static_random-access_memory#Reading) uses complex electrical techniques. Word enable line passes through left to right to adjacent cell.
##### DRAM 1-transistor 1-capacitor cell design
The design stores a bit as charge on capacitor, with 1 transistor that can pass data to capacitor. Much more compact design that SRAM 6-transistor cell. 

But capacitors leak, slowly to ground, so DRAM must be refreshed (read, write back again) within 60ms to preserve data. This is done with a state machine controller. This makes DRAM access slower than SRAM.
![[Pasted image 20241009232141.png]]
[More DRAM info](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)

### Virtual Memory
Virtual memory makes physical memory appear larger to programs, by storing only a subset of all program items in memory as needed, and keeping the rest on the drive.

##### Virtual-Physical memory management
![[Pasted image 20241010003852.png]]

Virtual memory can be divided into pieces called *pages*, ex. 8 KB of VMM can be 8 1KB pages. Leftmost three address bits denote page in physical drive (in this example only, generally amount of pages determines leftmost bit amount for page denotation).

When processor accesses location, the location's entire page is copied into physical mem. A *page table* tracks page's place in the physical mem, whether that page is in physical mem (using a valid bit), and the page's place in the hard drive.

A *Memory Management Unit (MMU)* manages the page table. Page table can reside in physical mem or MMU. If access is to page currently in physical mem, a *page hit* occurs, else a *page fault* occurs, which causes the copying of page mentioned above. Pages are places into specific locations in mem called *page frames*.

##### Page replacement
When a program accesses an address, it is likely to soon access nearby addresses, AKA *spatial locality*.

**Balance must be achieved in assigning page size**, large page size = good for spatial locality, but also more frequent replacements, more space consumed, and more page replacement time.

When page is replaced in physical memory, the MMU replaces the *least recently used* (LRU) page. Other recently-accessed pages are kept in page table, due to *temporal locality*.

*Dirty bit* (0 = false, 1 = true) indicates whether location in page has been written while in physical mem. If so, upon replacement, page is copied back into drive, else it can be discarded, as unmodified copy exists drive already.

![[Pasted image 20241010010645.png]]

##### Virtual memory with multiple programs
When multiple programs/processes run, each process has its own virtual memory and page table (in the MMU). OS informs MMU to use a specific process' page table when it is running.

![[Pasted image 20241010011855.png]]

##### Extra details on v-mem
- **Address Translation and TLB:**
    - Virtual memory makes physical memory appear larger by using both RAM and disk storage.
    - The MMU converts virtual addresses to physical addresses using a **page table** stored in physical memory (typically DRAM), which may take several clock cycles to access.
    - The **Translation Lookaside Buffer (TLB)**, a small, fast buffer, caches recent address translations, reducing the need to access the slower page table repeatedly due to **temporal locality** (repeated access to the same addresses).
- **Security:**
    - Virtual memory provides **security** by separating kernel processes (which configure the MMU and special memory addresses) from user processes.
    - User processes can't modify the MMU or access special addresses, protecting sensitive memory and **preventing unauthorized access** to other processes' memory locations.

### Cache Basics

##### Off-chip memory vs. on-chip memory
Cache lives on-chip on a processor, for faster access to heavily used memory items. Much slower to retrieve items from DRAM due to wire signal travel speed and DRAM speed. Caches are normally SRAM. **Caches are generally much smaller than DRAM, ~1/1000th size**.

Reading items fills cache with copies of memory items. On subsequent reads, cache is checked first. If item exists, *hit*, else, *miss*. The system then copies item from memory to cache.

Cache hit may require 1 clk cycle, while miss may require ~10 clk cycles. For 1000, accesses, hits = 1000 clk cycles, while misses = 10,000 clk cycles. **MUCH faster with cache**.

![[Pasted image 20241010020004.png]]

##### Direct-Mapped Cache
Directly maps memory addresses to cache addresses using 2 subsets of address bits.
*Index*: Rightmost bits of specific memory address stored as cache address (ex. 00 as shown in image).
*Tag*: Remaining bits stored in cache entry (ex. 101 show in image).

To check if mem addr is in cache, system uses index bits and matches cache entry tag bits. If there is a full mem addr match, then *hit*, else *miss*, and system retrieves correct tag.

![[Pasted image 20241010021357.png]]

Each cache entry has a *valid bit*, initially set to 0, then 1 upon copy of item.
![[Pasted image 20241010025848.png]]
###### Spatial locality and blocks
If memory item doesn't exist in cache, system copies the item and several adjacent items (AKA *block* or *line*) due to spatial locality. Block sizes generally 16/32/64 bytes. Address bits can be used to *offset* into block to get right item.
*Offset* can be the rightmost bit (scaled for larger blocks), index precedes it, tag precedes index.
![[Pasted image 20241010030541.png]]

###### Write policies
- *Write through*: Processor writes data to cache, system also writes that data to memory
- *Write back* (faster approach): Processor writes data to cache, marks cache block as dirty. Writes block to memory when block is being replaced in cache.
- *Usage*: Write through is used when cache and memory cannot be temporarily inconsistent, ex. when multiple processors share data in memory.

![[Pasted image 20241010031800.png]]

##### Set-Associative Cache
*Thrashing*: A pattern that causes two blocks to keep replacing each other in the cache.

*2-way set associative cache*: This cache, designed to allow **two blocks** per cache address, can be implemented to reduce thrashing. To check if mem block exists, system checks tags of both blocks.
![[Pasted image 20241010032722.png]]
To keep 2-way cache same size as original direct-mapped while reducing thrashing, number of cache address is halved.

###### Associative cache sizes
- Common associatives are 1-way (AKA direct-mapped). There also exists 4-way, 8-way, and higher (like 64-way). 
- Better hit rates with higher associatives, but requires more internal logic, slowing cache access. As with anything, balance must be found.
- Fully associative cache looks up with just tags (essentially having one address), kinda seems useless by description though.

Realistic cache/mem size diagram (4GB):
![[Pasted image 20241010033806.png]]

###### Temporal locality and replacement policy
*Cache replacement policy*: System decision on which of 2 existing blocks to replace in a copy operation for a new block. (2-way associative). Temporal locality is used to make this decision, and consequently the *LRU* (least recently used) block is replaced.

Implementation: 1 LRU bit is created per cache address, indicating which way is the current LRU for the cache address. Block replacement is done based on which way is pointed to by LRU.
![[Pasted image 20241010040641.png]]


##### Configuring a cache
Cache size increase exponentially decreases miss rate at first, with diminishing returns later on.
![[Pasted image 20241010035330.png]]

Same thing happens with associativity on caches, albeit less exponential decrease of misses.
![[Pasted image 20241010035436.png]]

###### Block Size Effects
- Optimal block sizes: 16 to 64 bytes
- Larger blocks: Worse miss rates, longer miss penalties
###### Design Considerations
- Designers choose: cache size, associativity, block size
- Automated tools generate cache components
###### Larger Cache Trade-offs
- Pros: Potentially fewer cycles for program execution
- Cons:
    - More chip space
    - Longer access times
    - May slow overall clock speed
###### Performance Balance
- Larger caches don't always improve overall performance
- Example:
    - Small cache: 5000 cycles * 8 ns = 40,000 ns
    - Large cache: 4000 cycles * 10 ns = 40,000 ns
    - Smaller cache preferable due to equal performance and less chip space


##### Memory hierarchy
![[Pasted image 20241010041125.png]]
