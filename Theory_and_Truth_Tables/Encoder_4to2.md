# 4:2 Encoder

## Aim
To implement a 4-to-2 encoder using VHDL.

## Short Theory
A 4-to-2 encoder converts one active-HIGH input among four input lines into a 2-bit binary code. The implementation is a simple encoder and assumes that exactly one of D0, D1, D2 or D3 is HIGH at a time. It is not a priority encoder; multiple HIGH inputs are outside its specified operating condition.

## Truth Table (one-hot inputs)

| D3 | D2 | D1 | D0 | A1 | A0 |
|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

## VHDL Source
[Open Encoder_4to2.vhd](../Combinational_Circuits/Encoder_4to2.vhd)
