2024-09-04 22:36

Status: #Adult

Tags: [[binary-numbers]]


# Signing Methods for Binary Numbers

### Signed-magnitude representation
Uses leftmost bit for the sign (0 is positive, 1 is negative). Rarely used because calculations involving negative numbers require special circuits aside from adders.
Ex. 0011 = **3** & 1011 = **-3** in signed-magnitude

### Two's-complement representation
Uses adder for both positive and negative numbers, no special circuitry needed for adding negatives.
A complement is a new number that, when added to the original, gives a result of 1 followed by all zeros. It can also represent the negative of the original number.

To find binary complement or **two's-complement**: Invert every bit of original number and then add 0001 to it.
Ex. 0011 (3) --> 1100 --> 1101 (-8 (MSB) + 5 = -3); 0011 (3) + 1101 (-3) = ~~1~~ 0000 = 0 (ignore carry)
The **Most-significant bit** (MSB) represents sign of number.

# References