# 4-bit ALU with Eight Selectable Operations

## Aim
To implement a 4-bit Arithmetic Logic Unit capable of performing eight selectable arithmetic and logical operations using VHDL.

## Short Theory
The ALU operates on two 4-bit operands, A and B, and uses a 3-bit select input SEL to choose one of eight functions. The operations include addition, subtraction, bitwise AND, bitwise OR, bitwise XOR, bitwise NOT of A, increment and decrement. The output Y is 4 bits wide, so arithmetic carry or borrow beyond that width is not separately available.

## Operation / Truth Table

| SEL(2) | SEL(1) | SEL(0) | Operation |
|---:|---:|---:|---|
| 0 | 0 | 0 | A + B |
| 0 | 0 | 1 | A − B |
| 0 | 1 | 0 | A AND B |
| 0 | 1 | 1 | A OR B |
| 1 | 0 | 0 | A XOR B |
| 1 | 0 | 1 | NOT A |
| 1 | 1 | 0 | A + 1 (increment) |
| 1 | 1 | 1 | A − 1 (decrement) |

## Text Simulation (Expected)

Example test: keep A = 0101 and B = 0011, then apply SEL from 000 to 111.

```text
Time : t0----t1----t2----t3----t4----t5----t6----t7
SEL  : 000---001---010---011---100---101---110---111
A    : 0101--0101--0101--0101--0101--0101--0101--0101
B    : 0011--0011--0011--0011--0011--0011--0011--0011
Y    : 1000--0010--0001--0111--0110--1010--0110--0100
```

The expected outputs are A+B, A-B, A AND B, A OR B, A XOR B, NOT A, A+1 and A-1. Results are shown as 4-bit values; carry or borrow beyond four bits is not shown. These are expected ideal logic values, not a simulator capture.

## VHDL Source
[Open shift_09.vhd](../ALU/shift_09.vhd)

## Implementation Note
The source retains the mixed package declarations from the Xilinx ISE reference code. It includes NUMERIC_STD together with the legacy STD_LOGIC_ARITH and STD_LOGIC_UNSIGNED packages. Mixing arithmetic packages can cause tool-dependent overload or compatibility issues; do not assume the source is portable across every VHDL simulator without checking its library configuration.
