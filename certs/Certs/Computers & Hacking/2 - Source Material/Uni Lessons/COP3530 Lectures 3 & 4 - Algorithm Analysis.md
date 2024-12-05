
## Notes

Time-speed of algorithms generally relies input size (among other factors).

Algorithm: Linear-search for Maximum
Total time: `c * n` where n is the number of comparisons and c is time-per-comparison
Can be represented as `T(n) = c * n` since total time is a function of input size

### Big-O Notation

Gives rough indication of worst-running time of algorithm and amount of memory it uses.
"O" stands for "order of".
Calculator of Asymptotic Complexity
**REMEMBER** it is an estimate and really only useful for large values of `n` 
Calculated based on the dominant term or worst-case value

`O(1) = Constant`: **Best case.** Same amount of time always
`O(log n) = logarithmic`: **Pretty great.** Halves data amount per iteration, ex. binary search
`O(n) = linear`: **Good.** Linear amount of time ex. sequential search
`O(n * log n) = linearithmic`: **Decent.** Slightly worse than linear ex. fastest-general purpose sorting algorithms
`O(n^2) = quadratic`: **Kinda slow.** Doubling n makes it 4 times slower ex. algorithms using nested loops.
`O(n^3) = cubic`: **Poor performance.** If n = 100, then work done = $100^3$ ex. matrix multiplication
`O(2^n) = exponential`: **Very poor performance.** One input added doubles running time ex. traveling salesperson problem.
`O(n!) = factorial`: **Intolerably slow.** Literally takes a *million* years to do anything

### Example Calculation

If T(N) = 6N + 4, then the method is O(N) because the degree of the expression is 1.
If T(N) = 5(logN)$^3$ + 6N$^3$ + 3N$^2$ + 10logN + 7N, then T(N) = O(N$^3$), since expression degree is 3.   
If T(N) = $\frac{N \times (N+1)}{2}$ = $\frac{N^2+N}{2}$, then O(N) = N$^2$ since worst-case value (highest degree) is 2.

These expressions are created based on unit of time per operation (assignment, iteration, etc.) in any given program.

### General Rules

#### Rule 1 - For loops
Running time of for loop = `R`
Running time of statements inside for loop (including tests) = `F`
For loop iterations = `i`
`R = F * i`

#### Rule 2 - Nested loops
Total running time of statement inside a group of nested loops = `S`
Running time of statement itself = `s`
Product of the sizes of all the loops = `P`
`S = P * s`

#### Rule 3 - Consecutive Statements
These just add.

#### Rule 4 - if/else
```c
if (condition)
	S1
else
	S2
```
Total possible maximum runtime = `T`
Running time of condition = `C`
Larger running time `S1` vs. `S2` = `S_MAX` 
`T = C + S_MAX`

### Experimental Analysis Challenges

1. Running times of 2 algorithms are tough to directly compare unless both algorithms run in same software & hardware environment
2.  Experiments can be done only on a limited set of test inputs, leaving out possibly important inputs
3. An algorithm must be fully implemented in order to study its running time experimentally

### Big-O Addition vs Multiplication

#### Addition
When adding Big O, the upper limit is what counts:
O(log N) + O(N) = O(N) 
O(N log N) + O(N) = O(N log N)
O(N log N) + O(N2) = O(N2)
O(2N) + O(N2) = O(2N)

As seen, the faster value is dropped and the worst-case value is retained (AKA no addition is really done here)
#### Multiplication
With multiplication, you *actually* multiply the values, the result being the upper limit.
O(log N) * O(N) = O(N log N)
O(N log N) * O(N) = O(N$^2$ log N)
O(N) * O(1) = O(N)

### Big-O vs. Big-Omega vs. Big-Theta

#### Big-O
O(x) - Less than
In other words, Big-O gives the worst running time of an algorithm, ex. "Our algorithm runs at most O(n$^2$)"

#### Big-Omega
Ω(x) - Greater than
In other words, it shows the **best** running time of an algorithm, asymptotically. AKA "greater than or equal to"
Ex. "Our lower bound shows Ω(n$^2$)"

#### Big-Theta
Θ(x) - Equal to
In addition, there is a notation that allows us to say that two algorithms grow at the same rate, up to constant factors. Ex. "Our bounds are tight at Θ(n$^2$)"

##### Note on O(log N)
An algorithm is generally O(log N) if it takes constant time O(1) to cut the problem size by a fraction. A great example is the binary search algo, if it had 16 items, it would take at most 4 steps to run.
Also remember that reading N input elements in would take O(N) time, so O(log N) complexity applies to work done *after* reading the input.

#### Calculating time efficiency of binary search implemented in Java
When X is not found.

```java
/**
 * Performs the standard binary search.
 * @return index where item is found, or -1 if not found.
 */
int NOT_FOUND = -1; // NOT_FOUND is defined as -1

public static <AnyType extends Comparable<? super AnyType>>
int binarySearch ( AnyType [] a, AnyType x ) {
	int low = 0, high = a.length - 1;
	while( low <= high ) {
		int mid = ( low + high ) / 2;
		if( a[ mid ].compareTo( x ) < 0 )  // x > a[mid]
			low = mid + 1;
	    else if( a[ mid ].compareTo( x ) > 0 )  // x < a[mid]
		    high = mid - 1;
	    else
	        return mid; // Found
	}
	return NOT_FOUND; 
}
```

How many iterations are executed before low > high?
- After first iteration: N/2 items remaining
- After 2nd iteration: (N/2)/2 = N/4 remaining
- After k-th iteration?
    - N/2K remaining
- Last iteration occurs when N/2K ≥ 1 and N/2K+1 < 1 item remaining
- 2K ≤ N and 2K+1 > N [take log of both sides]
- Number of iterations is k ≤ logN and k > logN – 1
    - k = logN

### Euclid's Algorithm for GCD

#### Rules
1. gcd(M,N) = gcd(N, M mod N), if N != 0
2. gcd(N,0) = N

In java:
```java
public static long gcd( long m, long n ) {
	while ( n != 0 ) {
		long rem = m % n;
		m = n;
		n = rem;
	}
	return m;
}	
```

#### Calculating worst-running time
1. Running time depends on how long the sequence of remainders is
2. After 2 iterations, r is halved at most
3. So iterations = 2logN = O(logN)
4. Running time is O(logN)

##### Note on use-case:
This algorithm is used in cryptography. #DelveDeeper


