# Half Subtractor

## Aim
To implement a half subtractor using VHDL.

## Short Theory
A half subtractor subtracts the single-bit input B from A. It produces a DIFFERENCE bit D and a BORROW output. Difference is A XOR B; borrow is generated only when A = 0 and B = 1.

## Truth Table

| A | B | D (Difference) | Borrow |
|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

## Text Simulation (Expected)

Apply the four possible combinations of A and B.

```text
Time   : t0----t1----t2----t3
A      : 0-----0-----1-----1
B      : 0-----1-----0-----1
D      : 0-----1-----1-----0
BORROW : 0-----1-----0-----0
```

Borrow is generated only for A=0 and B=1.

## VHDL Source
[Open Half_Subtractor.vhd](../Arithmetic_Circuits/Half_Subtractor.vhd)
