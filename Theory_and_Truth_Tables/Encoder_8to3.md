# 8:3 Encoder

## Aim
To implement an 8-to-3 encoder using VHDL.

## Short Theory
An 8:3 encoder converts one active-HIGH input among eight input lines (D0–D7) into a 3-bit binary code (A2, A1, A0). The implementation is a simple encoder, so it assumes that exactly one input is HIGH at a time. It is not a priority encoder; multiple simultaneous HIGH inputs are outside its specified operating condition. A2 is the most significant output bit (MSB), and A0 is the least significant output bit (LSB).

## Truth Table (one-hot inputs)

| Active input | D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0 | A2 | A1 | A0 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| D0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| D1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 1 |
| D2 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 1 | 0 |
| D3 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 1 | 1 |
| D4 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| D5 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 1 |
| D6 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| D7 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 |

## VHDL Source
[Open Encoder_8to3.vhd](../Combinational_Circuits/Encoder_8to3.vhd)
