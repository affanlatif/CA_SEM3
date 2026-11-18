# Full Subtractor

## Aim
To implement a full subtractor using VHDL.

## Short Theory
A full subtractor subtracts B and the borrow-in Bin from A. It produces a DIFFERENCE bit D and a borrow-out Bout. The difference is A XOR B XOR Bin; Bout is HIGH when the minuend A is insufficient for the subtraction.

## Truth Table

| A | B | Bin (Borrow-in) | D (Difference) | Bout (Borrow-out) |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

## Text Simulation (Expected)

Apply all eight combinations of A, B and borrow-in Bin in binary count order.

```text
Time : t0----t1----t2----t3----t4----t5----t6----t7
A    : 0-----0-----0-----0-----1-----1-----1-----1
B    : 0-----0-----1-----1-----0-----0-----1-----1
Bin  : 0-----1-----0-----1-----0-----1-----0-----1
D    : 0-----1-----1-----0-----1-----0-----0-----1
Bout : 0-----1-----1-----1-----0-----0-----0-----1
```

D is the one-bit difference and Bout is the borrow-out for A-B-Bin.

## VHDL Source
[Open Full_Subtractor.vhd](../Arithmetic_Circuits/Full_Subtractor.vhd)
