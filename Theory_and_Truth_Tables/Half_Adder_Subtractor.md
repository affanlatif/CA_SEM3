# 1-bit Adder-Subtractor Using Half Adder and Half Subtractor

## Aim
To implement a 1-bit selectable adder-subtractor using the logic of a half adder and a half subtractor in VHDL.

## Short Theory
This circuit performs either half addition or half subtraction on two 1-bit inputs A and B. The MODE input selects the operation. When MODE = 0, the circuit works as a half adder and produces the SUM and CARRY. When MODE = 1, it works as a half subtractor and produces the DIFFERENCE and BORROW.

The SUM and DIFFERENCE have the same Boolean expression, A XOR B. The status output is selected according to the mode: for addition it is A AND B (carry), and for subtraction it is (NOT A) AND B (borrow). RESULT carries the sum/difference bit, while CARRY_BORROW carries either the carry or borrow according to MODE.

- MODE = 0: A + B (half adder)
- MODE = 1: A - B (half subtractor)

This is a 1-bit circuit, not a 4-bit adder-subtractor.

## Truth Table

| MODE | A | B | Operation | RESULT | CARRY_BORROW |
|---:|---:|---:|---|---:|---:|
| 0 | 0 | 0 | Half addition | 0 | 0 |
| 0 | 0 | 1 | Half addition | 1 | 0 |
| 0 | 1 | 0 | Half addition | 1 | 0 |
| 0 | 1 | 1 | Half addition | 0 | 1 (Carry) |
| 1 | 0 | 0 | Half subtraction | 0 | 0 |
| 1 | 0 | 1 | Half subtraction | 1 | 1 (Borrow) |
| 1 | 1 | 0 | Half subtraction | 1 | 0 |
| 1 | 1 | 1 | Half subtraction | 0 | 0 |

## Text Simulation (Expected)

The first four intervals use MODE=0 (half adder); the next four use MODE=1 (half subtractor).

```text
Time          : t0----t1----t2----t3----t4----t5----t6----t7
MODE          : 0-----0-----0-----0-----1-----1-----1-----1
A             : 0-----0-----1-----1-----0-----0-----1-----1
B             : 0-----1-----0-----1-----0-----1-----0-----1
RESULT        : 0-----1-----1-----0-----0-----1-----1-----0
CARRY_BORROW  : 0-----0-----0-----1-----0-----1-----0-----0
```

When MODE=0, CARRY_BORROW represents the carry output. When MODE=1, it represents the borrow output.

## VHDL Source
[Open Half_Adder_Subtractor.vhd](../Arithmetic_Circuits/Half_Adder_Subtractor.vhd)
