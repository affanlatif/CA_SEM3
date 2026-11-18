# Combined Half Adder / Half Subtractor

## Aim
To implement a selectable 1-bit half adder and half subtractor using VHDL.

## Short Theory
This circuit combines the existing half-adder and half-subtractor functions using a mode-select input. When MODE = 0, it works as a half adder and adds A and B. When MODE = 1, it works as a half subtractor and subtracts B from A.

The SUM_DIFF output is A XOR B in both modes. The second output is mode-dependent: CARRY_BORROW gives the carry from A AND B in addition mode, and the borrow from (NOT A) AND B in subtraction mode. This is a 1-bit combined half adder/subtractor; it is not a multi-bit full adder-subtractor.

## Truth Table

| MODE | A | B | SUM_DIFF | CARRY_BORROW | Selected operation |
|---:|---:|---:|---:|---:|---|
| 0 | 0 | 0 | 0 | 0 | Half addition |
| 0 | 0 | 1 | 1 | 0 | Half addition |
| 0 | 1 | 0 | 1 | 0 | Half addition |
| 0 | 1 | 1 | 0 | 1 | Half addition |
| 1 | 0 | 0 | 0 | 0 | Half subtraction |
| 1 | 0 | 1 | 1 | 1 | Half subtraction |
| 1 | 1 | 0 | 1 | 0 | Half subtraction |
| 1 | 1 | 1 | 0 | 0 | Half subtraction |

## Text Simulation (Expected)

Apply all four input combinations first in addition mode, then repeat them in subtraction mode.

```text
Time         : t0----t1----t2----t3----t4----t5----t6----t7
MODE         : 0-----0-----0-----0-----1-----1-----1-----1
A            : 0-----0-----1-----1-----0-----0-----1-----1
B            : 0-----1-----0-----1-----0-----1-----0-----1
SUM_DIFF     : 0-----1-----1-----0-----0-----1-----1-----0
CARRY_BORROW : 0-----0-----0-----1-----0-----1-----0-----0
```

When MODE=0, CARRY_BORROW represents carry. When MODE=1, it represents borrow.

## VHDL Source
[Open HALF_ADDER_SUBTRACTOR.vhd](../Arithmetic_Circuits/HALF_ADDER_SUBTRACTOR.vhd)
