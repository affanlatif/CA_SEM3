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

## Text Simulation (Expected)

Activate one input at a time. Input bus is shown D7D6D5D4D3D2D1D0 order.

```text
Time     : t0--------t1--------t2--------t3--------t4--------t5--------t6--------t7
D7..D0   : 00000001--00000010--00000100--00001000--00010000--00100000--01000000--10000000
A2A1A0   : 000-------001-------010-------011-------100-------101-------110-------111
```

The output is the binary index of the single HIGH input. This expected trace assumes exactly one input is HIGH at a time.

## VHDL Source
[Open Encoder_8to3.vhd](../Combinational_Circuits/Encoder_8to3.vhd)
