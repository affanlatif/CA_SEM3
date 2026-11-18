# Half Adder

## Aim
To implement a half adder using VHDL.

## Short Theory
A half adder adds two single-bit binary inputs, A and B. It produces a SUM bit and a CARRY bit. SUM is the XOR of the inputs, while CARRY is their AND.

## Truth Table

| A | B | SUM | CARRY |
|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

## Text Simulation (Expected)

Apply the four possible combinations of A and B.

```text
Time  : t0----t1----t2----t3
A     : 0-----0-----1-----1
B     : 0-----1-----0-----1
SUM   : 0-----1-----1-----0
CARRY : 0-----0-----0-----1
```

The SUM becomes HIGH when the inputs differ; CARRY becomes HIGH only for A=B=1.

## VHDL Source
[Open Half_Adder.vhd](../Arithmetic_Circuits/Half_Adder.vhd)
