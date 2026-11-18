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

## Text Simulation (Expected)

CLEAR is active-HIGH and asynchronous. At each rising clock edge, Q(3 downto 1) receives D(2 downto 0), and Q(0) receives D(3).

```text
Time  : t0-----t1-----t2-----t3-----t4
CLK   : 0------0------^1-----0------^1
CLEAR : 1------0------0------0------0
D     : 0000---1011---1011---0100---0100
Q     : 0000---0000---0111---0111---1000
```

At t2, D=1011 gives Q=0111. At t4, D=0100 gives Q=1000. Q holds its previous value when there is no rising edge.

## VHDL Source
[Open Register_4bit.vhd](../Sequential_Circuits/Register_4bit.vhd)
