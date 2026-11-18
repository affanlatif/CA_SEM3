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

## Text Simulation (Expected)

Apply the input combinations in order.

```text
Time : t0----t1----t2----t3
A    : 0-----0-----1-----1
B    : 0-----1-----0-----1
Y    : 1-----1-----1-----0
```

The NAND output is the complement of the AND result.

## VHDL Source
[Open NAND_Gate.vhd](../Logic_Gates/NAND_Gate.vhd)
