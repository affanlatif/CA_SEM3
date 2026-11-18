# 4-bit Clocked Register with Rotated Input Mapping

## Aim
To implement a 4-bit clocked register with the bit mapping shown in the practical VHDL source.

## Short Theory
This circuit stores a 4-bit input on the rising edge of CLK. The input bits are mapped into the output in a rotated order: Q(3) receives D(2), Q(2) receives D(1), Q(1) receives D(0), and Q(0) receives D(3). CLEAR is an active-HIGH asynchronous clear and forces Q to 0000 immediately when asserted. This is a rotated input load; it is not a feedback-based ring counter.

## State / Truth Table

| CLEAR | Clock condition | Next output Q(3 downto 0) |
|---:|---|---|
| 1 | Any | 0000 |
| 0 | Rising edge | D(2) D(1) D(0) D(3) |
| 0 | No rising edge | Holds previous Q |

## VHDL Source
[Open Register_4bit.vhd](../Sequential_Circuits/Register_4bit.vhd)
