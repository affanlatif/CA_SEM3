# 1:8 Demultiplexer with Enable

## Aim
To implement a 1-to-8 demultiplexer with an enable input using VHDL.

## Short Theory
A 1:8 demultiplexer routes the single data input D to one of eight output lines Y(0) through Y(7), selected by S(2 downto 0). The active-HIGH enable input EN controls the operation. When EN = 1, D is routed to the selected output and all unselected outputs remain 0. When EN = 0, all eight outputs are forced to 0. The VHDL uses one IF statement to check the enable input and a CASE statement to select the output.

## Selection / Truth Table

| EN | D | S2 | S1 | S0 | Y(7 downto 0) |
|---:|---:|---:|---:|---:|---|
| 0 | X | X | X | X | 00000000 |
| 1 | 0 | X | X | X | 00000000 |
| 1 | 1 | 0 | 0 | 0 | 00000001 |
| 1 | 1 | 0 | 0 | 1 | 00000010 |
| 1 | 1 | 0 | 1 | 0 | 00000100 |
| 1 | 1 | 0 | 1 | 1 | 00001000 |
| 1 | 1 | 1 | 0 | 0 | 00010000 |
| 1 | 1 | 1 | 0 | 1 | 00100000 |
| 1 | 1 | 1 | 1 | 0 | 01000000 |
| 1 | 1 | 1 | 1 | 1 | 10000000 |

X means that the corresponding input is irrelevant for that row.

## Text Simulation (Expected)

Set D=1 and step S through all eight combinations while EN=1. Then disable the DEMUX.

```text
Time : t0--------t1--------t2--------t3--------t4--------t5--------t6--------t7--------t8--------t9
EN   : 1---------1---------1---------1---------1---------1---------1---------1---------1---------0
D    : 1---------1---------1---------1---------1---------1---------1---------1---------1---------1
S    : 000-------001-------010-------011-------100-------101-------110-------111-------000-------XXX
Y    : 00000001--00000010--00000100--00001000--00010000--00100000--01000000--10000000--00000001--00000000
```

When EN=0, every output is forced LOW regardless of D and S.

## VHDL Source
[Open DEMUX_1to8_Enable.vhd](../Combinational_Circuits/DEMUX_1to8_Enable.vhd)
