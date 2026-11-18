# Contribution Rules

## Mandatory rule

Every new or modified VHDL experiment must be updated as one complete unit. Do not add source code alone.

Required deliverables:

1. **VHDL source file** in the correct topic folder.
2. **Short theory** explaining the experiment's aim, purpose, inputs, outputs and working principle.
3. **Truth table / operation table / state table** that matches the actual code.
4. **Root README entry** linking to both the VHDL source and the theory/table document.
5. **Theory index entry** in [Theory_and_Truth_Tables/README.md](Theory_and_Truth_Tables/README.md).

## Review checklist

- Verify entity name, ports, directions and vector widths.
- Ensure each combinational process assigns outputs for every branch.
- State assumptions such as one-hot inputs for a simple encoder.
- Document clock edge, reset polarity and hold behavior for sequential circuits.
- Document arithmetic result width and any discarded carry/borrow.
- Prefer IEEE.NUMERIC_STD for new arithmetic designs; avoid mixing it with legacy arithmetic packages.
- Keep the truth table consistent with the VHDL implementation.
- Do not claim code was simulated or compiled unless it was actually tested.
