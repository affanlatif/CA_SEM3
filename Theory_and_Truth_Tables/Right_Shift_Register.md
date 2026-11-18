# 4-bit Clocked Circular Right Shift Register

## Aim
To implement a 4-bit clocked circular right shift register using VHDL, following the parallel-input interface shown in the practical notebook.

## Short Theory
The circuit has a 4-bit parallel input D, a clock CLK, an active-HIGH asynchronous clear CLEAR, and a 4-bit output Q. On each rising edge of CLK, the input bits are rotated one position to the right: Q(3 downto 0) receives D(0), D(3), D(2), D(1). The bit that leaves the least significant position wraps around to the most significant position. CLEAR asynchronously resets the stored output to 0000.

This is the reverse of the notebook's left-rotation mapping. Because the source input is D rather than the previous Q state, this is a clocked circular rotation of the input bus, not a feedback-based multi-cycle serial shift register.

## State / Transition Table

| CLEAR | Clock condition | Next Q(3 downto 0) |
|---:|---|---|
| 1 | Any | 0000 |
| 0 | Rising edge | D(0) D(3) D(2) D(1) |
| 0 | No rising edge | Holds previous Q |

## Text Simulation (Expected)

```text
Time  : t0-----t1-----t2-----t3-----t4
CLK   : 0------0------^1-----0------^1
CLEAR : 1------0------0------0------0
D     : 0000---1011---1011---0100---0100
Q     : 0000---0000---1101---1101---0010
```

At t2, D=1011 rotates right to Q=1101. At t4, D=0100 rotates right to Q=0010. Q holds its previous value between rising edges.

## VHDL Source
[Open Right_Shift_Register.vhd](../Sequential_Circuits/Right_Shift_Register.vhd)
