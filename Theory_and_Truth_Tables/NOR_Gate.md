# NOR Gate

## Aim
To implement a 2-input NOR gate using VHDL.

## Short Theory
A NOR gate is the complement of an OR gate. Its output is HIGH only when both inputs are LOW. The Boolean expression is Y = NOT (A OR B), equivalent to A NOR B.

## Truth Table

| A | B | Y |
|---:|---:|---:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## Text Simulation (Expected)

Apply the input combinations in order.

```text
Time : t0----t1----t2----t3
A    : 0-----0-----1-----1
B    : 0-----1-----0-----1
Y    : 1-----0-----0-----0
```

The NOR output is HIGH only when both inputs are LOW.

## VHDL Source
[Open NOR_Gate.vhd](../Logic_Gates/NOR_Gate.vhd)
