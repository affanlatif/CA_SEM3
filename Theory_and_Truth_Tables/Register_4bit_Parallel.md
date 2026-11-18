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

## Text Simulation (Expected)

CLEAR is active-HIGH and asynchronous. With CLEAR LOW, the register loads all four input bits together on each rising clock edge.

```text
Time  : t0-----t1-----t2-----t3-----t4-----t5
CLK   : 0------0------^1-----0------^1-----0
CLEAR : 1------0------0------0------0------1
D     : 0000---1011---1011---0100---0100---0100
Q     : 0000---0000---1011---1011---0100---0000
```

The output holds between rising edges. When CLEAR becomes HIGH at t5, Q immediately becomes 0000 without waiting for another clock edge.

## VHDL Source
[Open Register_4bit_Parallel.vhd](../Sequential_Circuits/Register_4bit_Parallel.vhd)
