# 4-bit Clocked Circular Left Shift Register

## Aim
To implement a 4-bit clocked circular left shift register using VHDL, following the parallel-input interface shown in the practical notebook.

## Short Theory
The circuit has a 4-bit parallel input D, a clock CLK, an active-HIGH asynchronous clear CLEAR, and a 4-bit output Q. On each rising edge of CLK, the input bits are rotated one position to the left: Q(3 downto 0) receives D(2), D(1), D(0), D(3). The bit that leaves the most significant position wraps around to the least significant position. CLEAR asynchronously resets the stored output to 0000.

This follows the notebook's mapping Q(3 downto 1) <= D(2 downto 0) and Q(0) <= D(3). Because the source input is D rather than the previous Q state, this is a clocked circular rotation of the input bus, not a feedback-based multi-cycle serial shift register.

## State / Transition Table

| CLEAR | Clock condition | Next Q(3 downto 0) |
|---:|---|---|
| 1 | Any | 0000 |
| 0 | Rising edge | D(2) D(1) D(0) D(3) |
| 0 | No rising edge | Holds previous Q |

## Text Simulation (Expected)

```text
Time  : t0-----t1-----t2-----t3-----t4
CLK   : 0------0------^1-----0------^1
CLEAR : 1------0------0------0------0
D     : 0000---1011---1011---0100---0100
Q     : 0000---0000---0111---0111---1000
```

At t2, D=1011 rotates left to Q=0111. At t4, D=0100 rotates left to Q=1000. Q holds its previous value between rising edges.

## VHDL Source
[Open Left_Shift_Register.vhd](../Sequential_Circuits/Left_Shift_Register.vhd)
