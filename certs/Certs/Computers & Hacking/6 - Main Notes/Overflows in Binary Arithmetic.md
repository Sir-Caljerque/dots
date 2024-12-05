2024-09-04 17:36

Status: #Adult 

Tags: [[binary-numbers]]


# Overflows in Binary Arithmetic

### Unsigned
**Overflow** happens when the result of a binary operation is too large to fit in the allowed number of bits. When adding 2 unsigned numbers, if leftmost bit generates carry bit, overflow has occurred. 

Ex. 1111 + 0001 = **10000**

### Signed (Two's complement)
Two's complement represents one more negative than positive (-8 = 1000 since MSB is 1, +8 = 1000 too so it can't be represented in 4-bit). +8, +9, ... cannot be represented in 4-bit, same with -9, -10, ...

Adding 2 positives / 2 negatives can create a value that can't be represented in the given number of bits, which leads to **overflow**. 
Ex. 0101 (5) + 0011 (3) = 1000 (-8 in two's complement). **This is incorrect and overflow**.

# References