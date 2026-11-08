# CA_SEM3 — VHDL Practical Programs

A collection of VHDL practical programs for Semester 3 Computer Architecture / Digital Logic laboratory work. The programs are arranged by topic and use the IEEE `STD_LOGIC_1164` package.

## Contents

### Logic Gates

| No. | Topic | VHDL Source |
|---:|---|---|
| 1 | OR Gate | [OR_Gate.vhd](Logic_Gates/OR_Gate.vhd) |
| 2 | AND Gate | [AND_Gate.vhd](Logic_Gates/AND_Gate.vhd) |
| 3 | NOT Gate | [NOT_Gate.vhd](Logic_Gates/NOT_Gate.vhd) |
| 4 | NAND Gate | [NAND_Gate.vhd](Logic_Gates/NAND_Gate.vhd) |
| 5 | NOR Gate | [NOR_Gate.vhd](Logic_Gates/NOR_Gate.vhd) |
| 6 | XOR Gate | [XOR_Gate.vhd](Logic_Gates/XOR_Gate.vhd) |
| 7 | XNOR Gate | [XNOR_Gate.vhd](Logic_Gates/XNOR_Gate.vhd) |

### Arithmetic Circuits

| No. | Topic | VHDL Source |
|---:|---|---|
| 8 | Half Adder | [Half_Adder.vhd](Arithmetic_Circuits/Half_Adder.vhd) |
| 9 | Full Adder | [Full_Adder.vhd](Arithmetic_Circuits/Full_Adder.vhd) |
| 10 | Half Subtractor | [Half_Subtractor.vhd](Arithmetic_Circuits/Half_Subtractor.vhd) |
| 11 | Full Subtractor | [Full_Subtractor.vhd](Arithmetic_Circuits/Full_Subtractor.vhd) |

### Combinational Circuits

| No. | Topic | VHDL Source |
|---:|---|---|
| 12 | 2:4 Decoder | [Decoder_2to4.vhd](Combinational_Circuits/Decoder_2to4.vhd) |
| 13 | 4:2 Encoder | [Encoder_4to2.vhd](Combinational_Circuits/Encoder_4to2.vhd) |
| 14 | 4:1 Multiplexer | [MUX_4to1.vhd](Combinational_Circuits/MUX_4to1.vhd) |
| 15 | 8:1 Multiplexer | [MUX_8to1.vhd](Combinational_Circuits/MUX_8to1.vhd) |
| 16 | 1:8 Demultiplexer | [DEMUX_1to8.vhd](Combinational_Circuits/DEMUX_1to8.vhd) |

### Sequential Circuits

| No. | Topic | VHDL Source |
|---:|---|---|
| 17 | 4-bit Register / Circular Shift Register | [Register_4bit.vhd](Sequential_Circuits/Register_4bit.vhd) |

## Notes

- Each program is a separate VHDL design unit. Compile the required `.vhd` file in your simulator (for example, Xilinx ISE or Vivado).
- The 4:2 encoder is a simple encoder and assumes that exactly one of its four inputs is HIGH at a time.
- The 4-bit register follows the bit movement shown in the practical notebook and uses an active-HIGH asynchronous clear.
- These examples use `IEEE.STD_LOGIC_1164.ALL`; arithmetic and unsigned packages are not required for these circuits.

## Repository Structure

```
CA_SEM3/
├── Logic_Gates/
├── Arithmetic_Circuits/
├── Combinational_Circuits/
├── Sequential_Circuits/
└── README.md
```
