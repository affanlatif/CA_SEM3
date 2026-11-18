# 8:1 Multiplexer with Enable

## Aim
To implement an 8-to-1 multiplexer with an enable input using VHDL.

## Short Theory
An 8:1 multiplexer selects one of eight data inputs, IP(0) through IP(7), and transfers the selected bit to output OP. The three select lines S(2 downto 0) choose the input. The active-HIGH enable input EN controls the operation: when EN = 1, the selected input appears at OP; when EN = 0, OP is forced to 0. The VHDL uses one IF statement to check the enable input, with a CASE statement for selection.

## Selection / Truth Table

| EN | S2 | S1 | S0 | Output OP |
|---:|---:|---:|---:|---|
| 0 | X | X | X | 0 |
| 1 | 0 | 0 | 0 | IP(0) |
| 1 | 0 | 0 | 1 | IP(1) |
| 1 | 0 | 1 | 0 | IP(2) |
| 1 | 0 | 1 | 1 | IP(3) |
| 1 | 1 | 0 | 0 | IP(4) |
| 1 | 1 | 0 | 1 | IP(5) |
| 1 | 1 | 1 | 0 | IP(6) |
| 1 | 1 | 1 | 1 | IP(7) |

X means the select inputs do not affect the output while EN=0.

## Text Simulation (Expected)

Use IP(7 downto 0) = 10100101. Therefore, IP(0) through IP(7) are 1, 0, 1, 0, 0, 1, 0, 1 respectively. First keep EN=0, then enable the MUX and step through every select value.

```text
Time : t0----t1----t2----t3----t4----t5----t6----t7----t8
EN   : 0-----1-----1-----1-----1-----1-----1-----1-----1
S    : XXX---000---001---010---011---100---101---110---111
OP   : 0-----1-----0-----1-----0-----0-----1-----0-----1
```

When EN=0, OP is forced LOW. When EN=1, OP follows the selected IP bit.

## VHDL Source
[Open MUX_8to1_Enable.vhd](../Combinational_Circuits/MUX_8to1_Enable.vhd)
