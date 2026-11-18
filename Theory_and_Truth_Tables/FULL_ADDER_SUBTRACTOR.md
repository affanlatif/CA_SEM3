# Full Adder / Full Subtractor

## Aim
To implement a selectable 1-bit full adder and full subtractor using VHDL.

## Short Theory
This circuit combines a full adder and a full subtractor using a mode-select input. It has two data inputs, A and B, and a third input named CIN_BIN. When MODE = 0, CIN_BIN acts as the carry-in and the circuit performs A + B + CIN_BIN. When MODE = 1, CIN_BIN acts as the borrow-in and the circuit performs A - B - CIN_BIN.

The SUM_DIFF output is A XOR B XOR CIN_BIN in both modes. The second output is mode-dependent: CARRY_BORROW produces the full-adder carry-out when MODE = 0 and the full-subtractor borrow-out when MODE = 1.

This is a 1-bit full adder/full subtractor. It is different from a half adder/subtractor because it includes the third carry-in/borrow-in input.

## Truth Table

| MODE | A | B | CIN_BIN | SUM_DIFF | CARRY_BORROW | Selected function |
|---:|---:|---:|---:|---:|---:|---|
| 0 | 0 | 0 | 0 | 0 | 0 | Full addition |
| 0 | 0 | 0 | 1 | 1 | 0 | Full addition |
| 0 | 0 | 1 | 0 | 1 | 0 | Full addition |
| 0 | 0 | 1 | 1 | 0 | 1 | Full addition |
| 0 | 1 | 0 | 0 | 1 | 0 | Full addition |
| 0 | 1 | 0 | 1 | 0 | 1 | Full addition |
| 0 | 1 | 1 | 0 | 0 | 1 | Full addition |
| 0 | 1 | 1 | 1 | 1 | 1 | Full addition |
| 1 | 0 | 0 | 0 | 0 | 0 | Full subtraction |
| 1 | 0 | 0 | 1 | 1 | 1 | Full subtraction |
| 1 | 0 | 1 | 0 | 1 | 1 | Full subtraction |
| 1 | 0 | 1 | 1 | 0 | 1 | Full subtraction |
| 1 | 1 | 0 | 0 | 1 | 0 | Full subtraction |
| 1 | 1 | 0 | 1 | 0 | 0 | Full subtraction |
| 1 | 1 | 1 | 0 | 0 | 0 | Full subtraction |
| 1 | 1 | 1 | 1 | 1 | 1 | Full subtraction |

## Text Simulation (Expected)

The first eight intervals use MODE=0 (full adder). The next eight use MODE=1 (full subtractor). The input combinations run from 000 through 111, where A, B and CIN_BIN are shown as separate signals.

```text
Time         : t0-t1-t2-t3-t4-t5-t6-t7 | t8-t9-t10-t11-t12-t13-t14-t15
MODE         : 0---0---0---0---0---0---0---0 | 1---1---1----1----1----1----1----1
A            : 0---0---0---0---1---1---1---1 | 0---0---0----0----1----1----1----1
B            : 0---0---1---1---0---0---1---1 | 0---0---1----1----0----0----1----1
CIN_BIN      : 0---1---0---1---0---1---0---1 | 0---1---0----1----0----1----0----1
SUM_DIFF     : 0---1---1---0---1---0---0---1 | 0---1---1----0----1----0----0----1
CARRY_BORROW : 0---0---0---1---0---1---1---1 | 0---1---1----1----0----0----0----1
```

For MODE=0, CARRY_BORROW is the carry-out. For MODE=1, it is the borrow-out. This is an expected text trace calculated from the Boolean equations, not a simulator capture.

## VHDL Source
[Open FULL_ADDER_SUBTRACTOR.vhd](../Arithmetic_Circuits/FULL_ADDER_SUBTRACTOR.vhd)
