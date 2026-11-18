# NAND Gate

## Aim
To implement a 2-input NAND gate using VHDL.

## Short Theory
A NAND gate is the complement of an AND gate. Its output is LOW only when both inputs are HIGH; in all other cases, the output is HIGH. The Boolean expression is Y = NOT (A AND B), equivalent to A NAND B.

## Truth Table

| A | B | Y |
|---:|---:|---:|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## VHDL Source
[Open NAND_Gate.vhd](../Logic_Gates/NAND_Gate.vhd)
