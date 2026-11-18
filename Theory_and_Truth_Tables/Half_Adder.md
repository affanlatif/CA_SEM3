# Half Adder

## Aim
To implement a half adder using VHDL.

## Short Theory
A half adder adds two single-bit binary inputs, A and B. It produces a SUM bit and a CARRY bit. SUM is the XOR of the inputs, while CARRY is their AND.

## Truth Table

| A | B | SUM | CARRY |
|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

## VHDL Source
[Open Half_Adder.vhd](../Arithmetic_Circuits/Half_Adder.vhd)
