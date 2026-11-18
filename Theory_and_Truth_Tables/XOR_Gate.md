# XOR Gate

## Aim
To implement a 2-input XOR gate using VHDL.

## Short Theory
An XOR (exclusive-OR) gate produces HIGH when its two inputs are different. It produces LOW when both inputs are equal. The Boolean expression is Y = A XOR B.

## Truth Table

| A | B | Y |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Text Simulation (Expected)

Apply the input combinations in order.

```text
Time : t0----t1----t2----t3
A    : 0-----0-----1-----1
B    : 0-----1-----0-----1
Y    : 0-----1-----1-----0
```

XOR is HIGH when the two inputs are different.

## VHDL Source
[Open XOR_Gate.vhd](../Logic_Gates/XOR_Gate.vhd)
