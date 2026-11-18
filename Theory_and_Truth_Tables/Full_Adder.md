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

## VHDL Source
[Open Full_Adder.vhd](../Arithmetic_Circuits/Full_Adder.vhd)
