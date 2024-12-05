2024-09-05 00:25

Status: #Adult 

Tags: [[binary-numbers]]


# Float Structure in 32-bit Binary

### IEEE single-precision binary floating point

Normalized scientific notation is used to represent floats.
**A float binary representation usually has 3 items:** (From leftmost bit to rightmost in order)
- **Sign**: 1 bit, 0 is positive & 1 is negative
- **Exponent**: 8 bits with bias value of **127**, that is subtracted from exponent Ex. 00000000 = $2^{0-127}$
- **Fraction**: 23 bits, for precision. Because the significand's first digit is always 1, it implicitly precedes the fraction and isn't represented.


# References & Related

[[Why Floats Lose Precision in Binary]]
[IEEE single-precision binary floating-point format](https://en.wikipedia.org/wiki/Single-precision_floating-point_format#IEEE_754_single-precision_binary_floating-point_format:_binary32)
[IEEE double-precision binary floating-point format](https://en.wikipedia.org/wiki/Double-precision_floating-point_format#IEEE_754_double-precision_binary_floating-point_format:_binary64)
