# OR Gate

## Aim
To implement a 2-input OR gate using VHDL.

## Short Theory
An OR gate produces HIGH (1) when at least one input is HIGH. Its output is LOW only when both inputs are LOW. The Boolean expression is Y = A OR B.

## Truth Table

| A | B | Y |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Text Simulation (Expected)

Apply the input combinations in order.

```text
Time : t0----t1----t2----t3
A    : 0-----0-----1-----1
B    : 0-----1-----0-----1
Y    : 0-----1-----1-----1
```

The OR output becomes HIGH when either input or both inputs are HIGH.

## VHDL Source
[Open OR_Gate.vhd](../Logic_Gates/OR_Gate.vhd)
