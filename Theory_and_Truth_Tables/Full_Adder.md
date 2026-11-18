# Full Adder

## Aim
To implement a full adder using VHDL.

## Short Theory
A full adder adds three single-bit inputs: A, B and carry-in C. It produces SUM and carry-out CARRY. SUM is A XOR B XOR C; carry-out is HIGH when at least two of the three inputs are HIGH.

## Truth Table

| A | B | C (Carry-in) | SUM | CARRY (Carry-out) |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## Text Simulation (Expected)

Apply all eight combinations of A, B and carry-in C in binary count order.

```text
Time  : t0----t1----t2----t3----t4----t5----t6----t7
A     : 0-----0-----0-----0-----1-----1-----1-----1
B     : 0-----0-----1-----1-----0-----0-----1-----1
C     : 0-----1-----0-----1-----0-----1-----0-----1
SUM   : 0-----1-----1-----0-----1-----0-----0-----1
CARRY : 0-----0-----0-----1-----0-----1-----1-----1
```

SUM is the least significant bit of A+B+C, and CARRY is the carry-out.

## VHDL Source
[Open Full_Adder.vhd](../Arithmetic_Circuits/Full_Adder.vhd)
