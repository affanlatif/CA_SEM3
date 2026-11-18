# 1:8 Demultiplexer

## Aim
To implement a 1-to-8 demultiplexer using VHDL.

## Short Theory
A 1:8 demultiplexer routes one data input D to exactly one of eight output lines according to the 3-bit select vector S. All unselected outputs are set to LOW. If D is LOW, every output remains LOW.

## Truth Table

| D | S2 | S1 | S0 | Y(7 downto 0) |
|---:|---:|---:|---:|---|
| 1 | 0 | 0 | 0 | 00000001 |
| 1 | 0 | 0 | 1 | 00000010 |
| 1 | 0 | 1 | 0 | 00000100 |
| 1 | 0 | 1 | 1 | 00001000 |
| 1 | 1 | 0 | 0 | 00010000 |
| 1 | 1 | 0 | 1 | 00100000 |
| 1 | 1 | 1 | 0 | 01000000 |
| 1 | 1 | 1 | 1 | 10000000 |

When D = 0, the output is 00000000 for every select combination.

## VHDL Source
[Open DEMUX_1to8.vhd](../Combinational_Circuits/DEMUX_1to8.vhd)
