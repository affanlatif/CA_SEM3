# 4-bit ALU with Four Operations

## Aim
To implement a 4-bit Arithmetic Logic Unit capable of selecting four arithmetic and logical operations using VHDL.

## Short Theory
This ALU accepts two 4-bit operands, A and B, and produces a 4-bit output Y. It calculates four candidate results in parallel: addition, subtraction, bitwise AND and bitwise OR. The two select inputs S1 and S0 choose which candidate is passed to Y. Arithmetic results are limited to four bits in this design, so any carry beyond the most significant output bit is not exposed.

## Operation / Truth Table

| S1 | S0 | Selected result | Operation |
|---:|---:|---|---|
| 0 | 0 | D0 | A + B |
| 0 | 1 | D1 | A − B |
| 1 | 0 | D2 | A AND B |
| 1 | 1 | D3 | A OR B |

## Text Simulation (Expected)

Example test: keep A = 0101 and B = 0011, then change S1S0 through all four selections.

```text
Time : t0--------t1--------t2--------t3
S1S0 : 00--------01--------10--------11
A    : 0101------0101------0101------0101
B    : 0011------0011------0011------0011
D0   : 1000------1000------1000------1000   (A + B)
D1   : 0010------0010------0010------0010   (A - B)
D2   : 0001------0001------0001------0001   (A AND B)
D3   : 0111------0111------0111------0111   (A OR B)
Y    : 1000------0010------0001------0111
```

The selected output Y follows D0, D1, D2 or D3 according to S1S0. These are expected ideal logic values; propagation delays are not represented.

## VHDL Source
[Open ALU_4bit_4operations.vhd](../ALU/ALU_4bit_4operations.vhd)

## Implementation Note
The source uses the legacy IEEE.STD_LOGIC_ARITH and IEEE.STD_LOGIC_UNSIGNED packages as shown in the practical implementation. These packages are supported by some Xilinx ISE setups but are non-standard extensions; for portable VHDL, numeric_std is generally preferred.
