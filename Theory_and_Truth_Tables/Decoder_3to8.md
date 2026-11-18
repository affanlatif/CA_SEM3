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

## Text Simulation (Expected)

Step A2A1A0 through all eight input combinations. The output bus is shown in D7D6D5D4D3D2D1D0 order.

```text
Time    : t0--------t1--------t2--------t3--------t4--------t5--------t6--------t7
A2A1A0  : 000-------001-------010-------011-------100-------101-------110-------111
D7..D0  : 00000001--00000010--00000100--00001000--00010000--00100000--01000000--10000000
```

Exactly one output is HIGH for each 3-bit input combination.

## VHDL Source
[Open Decoder_3to8.vhd](../Combinational_Circuits/Decoder_3to8.vhd)
