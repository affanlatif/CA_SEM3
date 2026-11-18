# XNOR Gate

## Aim
To implement a 2-input XNOR gate using VHDL.

## Short Theory
An XNOR (exclusive-NOR) gate is the complement of XOR. It produces HIGH when both inputs are equal and LOW when they are different. The Boolean expression is Y = NOT (A XOR B), equivalent to A XNOR B.

## Truth Table

| A | B | Y |
|---:|---:|---:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Text Simulation (Expected)

Apply the input combinations in order.

```text
Time : t0----t1----t2----t3
A    : 0-----0-----1-----1
B    : 0-----1-----0-----1
Y    : 1-----0-----0-----1
```

XNOR is HIGH when both inputs are equal.

## VHDL Source
[Open XNOR_Gate.vhd](../Logic_Gates/XNOR_Gate.vhd)
