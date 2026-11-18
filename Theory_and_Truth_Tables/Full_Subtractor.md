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

## VHDL Source
[Open Full_Subtractor.vhd](../Arithmetic_Circuits/Full_Subtractor.vhd)
