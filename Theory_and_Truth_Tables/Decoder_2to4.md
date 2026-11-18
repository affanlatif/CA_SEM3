# 2:4 Decoder

## Aim
To implement a 2-to-4 decoder using VHDL.

## Short Theory
A 2-to-4 decoder converts a 2-bit input into one of four active-HIGH output lines. For each valid binary input, exactly one output is HIGH. In this implementation, A0 and A1 are interpreted in the order shown in the VHDL equations.

## Truth Table

| A0 | A1 | D0 | D1 | D2 | D3 |
|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |

## VHDL Source
[Open Decoder_2to4.vhd](../Combinational_Circuits/Decoder_2to4.vhd)
