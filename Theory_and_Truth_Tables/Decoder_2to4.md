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

## Text Simulation (Expected)

Step the inputs through all four combinations. The output bus is written in D3D2D1D0 order.

```text
Time  : t0--------t1--------t2--------t3
A0A1  : 00--------01--------10--------11
D3D2D1D0 : 0001----0010----0100----1000
```

Exactly one active-HIGH output is produced for each input combination.

## VHDL Source
[Open Decoder_2to4.vhd](../Combinational_Circuits/Decoder_2to4.vhd)
