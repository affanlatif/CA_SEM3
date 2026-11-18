# 4:1 Multiplexer

## Aim
To implement a 4-to-1 multiplexer using VHDL.

## Short Theory
A 4:1 multiplexer selects one of four single-bit data inputs (D0–D3) and transfers it to output Y. Two select lines, S1 and S0, determine which input is selected.

## Truth Table

| S1 | S0 | Output Y |
|---:|---:|---|
| 0 | 0 | D0 |
| 0 | 1 | D1 |
| 1 | 0 | D2 |
| 1 | 1 | D3 |

## Text Simulation (Expected)

Use fixed data inputs D0=0, D1=1, D2=0 and D3=1. Step the select lines through all four states.

```text
Time : t0----t1----t2----t3
S1S0 : 00----01----10----11
D0   : 0-----0-----0-----0
D1   : 1-----1-----1-----1
D2   : 0-----0-----0-----0
D3   : 1-----1-----1-----1
Y    : 0-----1-----0-----1
```

Y follows the data input selected by S1S0: D0, D1, D2 or D3.

## VHDL Source
[Open MUX_4to1.vhd](../Combinational_Circuits/MUX_4to1.vhd)
