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

## VHDL Source
[Open Half_Subtractor.vhd](../Arithmetic_Circuits/Half_Subtractor.vhd)
