# 4-bit Parallel Register (D Flip-Flop Register)

## Aim
To implement a 4-bit parallel register using VHDL.

## Short Theory
A 4-bit parallel register stores all four input bits simultaneously on the rising edge of the clock. CLEAR is an active-HIGH asynchronous clear; when CLEAR is asserted, all output bits are reset to zero without waiting for a clock edge. When CLEAR is LOW and there is no rising clock edge, the previous value is retained.

## State / Truth Table

| CLEAR | Clock condition | Next output Q |
|---:|---|---|
| 1 | Any | 0000 |
| 0 | Rising edge | D(3) D(2) D(1) D(0) |
| 0 | No rising edge | Holds previous Q |

## VHDL Source
[Open Register_4bit_Parallel.vhd](../Sequential_Circuits/Register_4bit_Parallel.vhd)
