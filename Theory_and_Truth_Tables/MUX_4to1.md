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

## VHDL Source
[Open MUX_4to1.vhd](../Combinational_Circuits/MUX_4to1.vhd)
