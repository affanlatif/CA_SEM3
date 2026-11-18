# AND Gate

## Aim
To implement a 2-input AND gate using VHDL.

## Short Theory
An AND gate produces HIGH (1) only when both inputs are HIGH. If either input is LOW, the output is LOW. The Boolean expression is Y = A AND B.

## Truth Table

| A | B | Y |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Text Simulation (Expected)

Apply the input combinations in order.

```text
Time : t0----t1----t2----t3
A    : 0-----0-----1-----1
B    : 0-----1-----0-----1
Y    : 0-----0-----0-----1
```

The output is HIGH only during the final interval, when both A and B are HIGH.

## VHDL Source
[Open AND_Gate.vhd](../Logic_Gates/AND_Gate.vhd)
