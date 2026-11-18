# 3:8 Decoder

## Aim
To implement a 3-to-8 decoder using VHDL.

## Short Theory
A 3:8 decoder converts a 3-bit binary input (A2, A1, A0) into one of eight active-HIGH output lines (D0–D7). The input A2 is the most significant bit (MSB), and A0 is the least significant bit (LSB). For each input combination, exactly one output is HIGH while all other outputs remain LOW.

## Truth Table

| A2 | A1 | A0 | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |

## VHDL Source
[Open Decoder_3to8.vhd](../Combinational_Circuits/Decoder_3to8.vhd)
