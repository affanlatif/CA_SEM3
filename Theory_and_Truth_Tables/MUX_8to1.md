# 8:1 Multiplexer

## Aim
To implement an 8-to-1 multiplexer using VHDL.

## Short Theory
An 8:1 multiplexer selects one of eight single-bit inputs, IP(0) through IP(7), and routes the selected input to OP. A 3-bit select vector S chooses the input. The source maps binary 000 to IP(0), continuing up to 111 to IP(7).

## Truth Table

| S2 | S1 | S0 | Output OP |
|---:|---:|---:|---|
| 0 | 0 | 0 | IP(0) |
| 0 | 0 | 1 | IP(1) |
| 0 | 1 | 0 | IP(2) |
| 0 | 1 | 1 | IP(3) |
| 1 | 0 | 0 | IP(4) |
| 1 | 0 | 1 | IP(5) |
| 1 | 1 | 0 | IP(6) |
| 1 | 1 | 1 | IP(7) |

## Text Simulation (Expected)

Use IP(7 downto 0) = 10100101, meaning IP(7)=1, IP(6)=0, IP(5)=1, IP(4)=0, IP(3)=0, IP(2)=1, IP(1)=0 and IP(0)=1.

```text
Time : t0----t1----t2----t3----t4----t5----t6----t7
S    : 000---001---010---011---100---101---110---111
OP   : 1-----0-----1-----0-----0-----1-----0-----1
```

The selected output OP follows IP(0) through IP(7) in the select order shown in the VHDL.

## VHDL Source
[Open MUX_8to1.vhd](../Combinational_Circuits/MUX_8to1.vhd)
