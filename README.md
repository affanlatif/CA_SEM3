# CA_SEM3 — VHDL Practical Programs

Semester 3 VHDL practical repository covering logic gates, arithmetic circuits, combinational circuits, sequential circuits and ALU designs.

**Documentation standard:** Every experiment must have its VHDL source, short theory, truth/operation/state table, and links to both source and documentation in this README. See [CONTRIBUTING.md](CONTRIBUTING.md).

## Experiments

### Logic Gates

| No. | Experiment | VHDL Source | Short Theory & Truth Table |
|---:|---|---|---|
| 1 | OR Gate | [OR_Gate.vhd](Logic_Gates/OR_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/OR_Gate.md) |
| 2 | AND Gate | [AND_Gate.vhd](Logic_Gates/AND_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/AND_Gate.md) |
| 3 | NOT Gate | [NOT_Gate.vhd](Logic_Gates/NOT_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/NOT_Gate.md) |
| 4 | NAND Gate | [NAND_Gate.vhd](Logic_Gates/NAND_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/NAND_Gate.md) |
| 5 | NOR Gate | [NOR_Gate.vhd](Logic_Gates/NOR_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/NOR_Gate.md) |
| 6 | XOR Gate | [XOR_Gate.vhd](Logic_Gates/XOR_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/XOR_Gate.md) |
| 7 | XNOR Gate | [XNOR_Gate.vhd](Logic_Gates/XNOR_Gate.vhd) | [Theory + Table](Theory_and_Truth_Tables/XNOR_Gate.md) |

### Arithmetic Circuits

| No. | Experiment | VHDL Source | Short Theory & Truth Table |
|---:|---|---|---|
| 8 | Half Adder | [Half_Adder.vhd](Arithmetic_Circuits/Half_Adder.vhd) | [Theory + Table](Theory_and_Truth_Tables/Half_Adder.md) |
| 9 | Full Adder | [Full_Adder.vhd](Arithmetic_Circuits/Full_Adder.vhd) | [Theory + Table](Theory_and_Truth_Tables/Full_Adder.md) |
| 10 | Half Subtractor | [Half_Subtractor.vhd](Arithmetic_Circuits/Half_Subtractor.vhd) | [Theory + Table](Theory_and_Truth_Tables/Half_Subtractor.md) |
| 11 | Full Subtractor | [Full_Subtractor.vhd](Arithmetic_Circuits/Full_Subtractor.vhd) | [Theory + Table](Theory_and_Truth_Tables/Full_Subtractor.md) |

### Combinational Circuits

| No. | Experiment | VHDL Source | Short Theory & Truth / Selection Table |
|---:|---|---|---|
| 12 | 2:4 Decoder | [Decoder_2to4.vhd](Combinational_Circuits/Decoder_2to4.vhd) | [Theory + Table](Theory_and_Truth_Tables/Decoder_2to4.md) |
| 13 | 4:2 Encoder | [Encoder_4to2.vhd](Combinational_Circuits/Encoder_4to2.vhd) | [Theory + Table](Theory_and_Truth_Tables/Encoder_4to2.md) |
| 14 | 4:1 Multiplexer | [MUX_4to1.vhd](Combinational_Circuits/MUX_4to1.vhd) | [Theory + Table](Theory_and_Truth_Tables/MUX_4to1.md) |
| 15 | 8:1 Multiplexer | [MUX_8to1.vhd](Combinational_Circuits/MUX_8to1.vhd) | [Theory + Table](Theory_and_Truth_Tables/MUX_8to1.md) |
| 16 | 1:8 Demultiplexer | [DEMUX_1to8.vhd](Combinational_Circuits/DEMUX_1to8.vhd) | [Theory + Table](Theory_and_Truth_Tables/DEMUX_1to8.md) |
| 17 | 3:8 Decoder | [Decoder_3to8.vhd](Combinational_Circuits/Decoder_3to8.vhd) | [Theory + Table](Theory_and_Truth_Tables/Decoder_3to8.md) |
| 18 | 8:3 Encoder | [Encoder_8to3.vhd](Combinational_Circuits/Encoder_8to3.vhd) | [Theory + Table](Theory_and_Truth_Tables/Encoder_8to3.md) |

### Sequential Circuits

| No. | Experiment | VHDL Source | Short Theory & State Table |
|---:|---|---|---|
| 19 | 4-bit Register with Rotated Input Mapping | [Register_4bit.vhd](Sequential_Circuits/Register_4bit.vhd) | [Theory + Table](Theory_and_Truth_Tables/Register_4bit.md) |
| 20 | 4-bit Parallel Register | [Register_4bit_Parallel.vhd](Sequential_Circuits/Register_4bit_Parallel.vhd) | [Theory + Table](Theory_and_Truth_Tables/Register_4bit_Parallel.md) |

### Arithmetic Logic Units (ALUs)

| No. | Experiment | VHDL Source | Short Theory & Operation Table |
|---:|---|---|---|
| 21 | 4-bit ALU — 8 selectable operations | [shift_09.vhd](ALU/shift_09.vhd) | [Theory + Table](Theory_and_Truth_Tables/shift_09.md) |
| 22 | 4-bit ALU — 4 operations | [ALU_4bit_4operations.vhd](ALU/ALU_4bit_4operations.vhd) | [Theory + Table](Theory_and_Truth_Tables/ALU_4bit_4operations.md) |

## Theory and Truth Tables

All 22 experiments have a separate short-theory and truth/operation/state-table document.

**[Open the complete Theory and Truth Tables index](Theory_and_Truth_Tables/README.md)**

## Rule for Every Future Experiment

Whenever a new VHDL experiment is added or an existing experiment is changed, include all of these in the same update:

1. **VHDL source code** in the appropriate folder.
2. **Short theory** explaining the circuit's purpose and working principle.
3. **Truth table, operation-selection table, or state table**, consistent with the actual VHDL.
4. **README links** to both the VHDL source and the theory/table document.
5. **Theory index entry** in [Theory_and_Truth_Tables/README.md](Theory_and_Truth_Tables/README.md).

A source-only addition is incomplete. Follow [CONTRIBUTING.md](CONTRIBUTING.md).

## Repository Notes

- The 4:2 encoder is a simple one-hot encoder; exactly one input should be HIGH at a time.
- Register_4bit.vhd applies the rotated input mapping described in its documentation; it is not a feedback-based ring counter.
- Both ALU designs return a 4-bit result. Arithmetic carry/borrow beyond that width is not exposed as a separate output.
- The ALU source files retain legacy arithmetic package declarations from the practical references. The 8-operation ALU additionally imports NUMERIC_STD; mixing arithmetic packages can be tool-dependent.
- The source files were reviewed against their ports and logic. This repository audit does not claim that every program was compiled or simulated during this update.

## Repository Structure

- ALU/ — ALU implementations.
- Logic_Gates/ — basic logic gates.
- Arithmetic_Circuits/ — half/full adders and subtractors.
- Combinational_Circuits/ — decoder, encoder, multiplexers and demultiplexer.
- Sequential_Circuits/ — clocked register implementations.
- Theory_and_Truth_Tables/ — short theory and truth/operation/state tables for all experiments.
