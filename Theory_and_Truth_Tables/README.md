# Theory and Truth Tables

This section contains short theory, the corresponding truth/operation/state table, and an expected text simulation trace for every VHDL experiment. Each document also links to its VHDL source.

| No. | Experiment | Documentation |
|---:|---|---|
| 1 | OR Gate | [OR_Gate.md](OR_Gate.md) |
| 2 | AND Gate | [AND_Gate.md](AND_Gate.md) |
| 3 | NOT Gate | [NOT_Gate.md](NOT_Gate.md) |
| 4 | NAND Gate | [NAND_Gate.md](NAND_Gate.md) |
| 5 | NOR Gate | [NOR_Gate.md](NOR_Gate.md) |
| 6 | XOR Gate | [XOR_Gate.md](XOR_Gate.md) |
| 7 | XNOR Gate | [XNOR_Gate.md](XNOR_Gate.md) |
| 8 | Half Adder | [Half_Adder.md](Half_Adder.md) |
| 9 | Full Adder | [Full_Adder.md](Full_Adder.md) |
| 10 | Half Subtractor | [Half_Subtractor.md](Half_Subtractor.md) |
| 11 | Full Subtractor | [Full_Subtractor.md](Full_Subtractor.md) |
| 12 | Combined Half Adder / Half Subtractor | [HALF_ADDER_SUBTRACTOR.md](HALF_ADDER_SUBTRACTOR.md) |
| 12 | 2:4 Decoder | [Decoder_2to4.md](Decoder_2to4.md) |
| 13 | 4:2 Encoder | [Encoder_4to2.md](Encoder_4to2.md) |
| 14 | 4:1 Multiplexer | [MUX_4to1.md](MUX_4to1.md) |
| 15 | 8:1 Multiplexer | [MUX_8to1.md](MUX_8to1.md) |
| 16 | 1:8 Demultiplexer | [DEMUX_1to8.md](DEMUX_1to8.md) |
| 17 | 3:8 Decoder | [Decoder_3to8.md](Decoder_3to8.md) |
| 18 | 8:3 Encoder | [Encoder_8to3.md](Encoder_8to3.md) |
| 19 | 4-bit Register with Rotated Input Mapping | [Register_4bit.md](Register_4bit.md) |
| 20 | 4-bit Parallel Register | [Register_4bit_Parallel.md](Register_4bit_Parallel.md) |
| 21 | 4-bit Circular Left Shift Register | [Left_Shift_Register.md](Left_Shift_Register.md) |
| 22 | 4-bit Circular Right Shift Register | [Right_Shift_Register.md](Right_Shift_Register.md) |
| 23 | 4-bit ALU — 8 operations | [shift_09.md](shift_09.md) |
| 24 | 4-bit ALU — 4 operations | [ALU_4bit_4operations.md](ALU_4bit_4operations.md) |

## Required format for future experiments

Every experiment must have:
- A VHDL source file.
- Short theory.
- A truth table, operation-selection table, or state table appropriate to the circuit.
- An expected text simulation trace (`----` for stable intervals; `^` for rising clock edges where applicable).
- A link to the VHDL source and documentation in the root README.
