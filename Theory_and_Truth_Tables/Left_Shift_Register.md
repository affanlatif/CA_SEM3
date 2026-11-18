# 4-bit Left Shift Register

## Aim
To implement a 4-bit serial-in, parallel-out (SIPO) left shift register using VHDL.

## Short Theory
A left shift register stores serial data and shifts its current contents one position toward the most significant bit on every rising edge of CLK. In this implementation, the new SERIAL_IN bit enters Q(0), while the old Q(2 downto 0) moves to Q(3 downto 1). CLEAR is active-HIGH and asynchronously resets the register to 0000. The four-bit output Q provides the stored data in parallel.

## State / Transition Table

| CLEAR | Clock condition | Next Q(3 downto 0) |
|---:|---|---|
| 1 | Any | 0000 |
| 0 | Rising edge | Previous Q(2 downto 0) & SERIAL_IN |
| 0 | No rising edge | Holds previous Q |

## Text Simulation (Expected)

Start with CLEAR=1, then deassert CLEAR. Apply serial bits 1, 0, 1, 1 on successive rising clock edges.

```text
Time      : t0-----t1-----t2-----t3-----t4
CLK       : 0------^1-----^1-----^1-----^1
CLEAR     : 1------0------0------0------0
SERIAL_IN : X------1------0------1------1
Q         : 0000---0001---0010---0101---1011
```

The output shifts left by one bit at each rising edge, with the incoming serial bit entering Q(0). X indicates that SERIAL_IN is irrelevant while CLEAR is asserted.

## VHDL Source
[Open Left_Shift_Register.vhd](../Sequential_Circuits/Left_Shift_Register.vhd)
