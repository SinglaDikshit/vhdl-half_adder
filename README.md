# Half Adder VHDL – Simulation, Conversion, and Synthesis

This README explains how to work with the Half Adder (HA) design using **IIC-OSIC-TOOLS**, including simulation in GTKWave, conversion to Verilog, and gate-level synthesis with Yosys.

---

## 🔬 View in GTKWave using IIC-OSIC-TOOLS

Clone the following files into your working directory:
```
/foss/designs/SKY/ha
├── ha.vhdl
├── ha_tb.vhdl
```

### ✅ Step-by-step:

```bash
# Check for syntax errors
ghdl -s ha.vhdl
ghdl -s ha_tb.vhdl

# Analyze the code
ghdl -a ha.vhdl
ghdl -a ha_tb.vhdl

# Elaborate the design
ghdl -e ha_tb

# Run the simulation
ghdl -r ha_tb

# Generate a VCD (waveform) file
ghdl -r ha_tb --vcd=ha.vcd

# Open the waveform in GTKWave
gtkwave ha.vcd
```

In GTKWave, add signals of interest to the timeline, and use `Ctrl + Scroll` to zoom.

---

## 🔁 Convert VHDL to Verilog

You can use GHDL to convert VHDL into Verilog:

```bash
ghdl -a ha.vhdl
ghdl synth --out=verilog ha > ha_synth.v
```

---

## ⚙️ Gate-Level Synthesis with Yosys

```bash
yosys
```

Inside Yosys, run the following commands:

```tcl
# Read the synthesized Verilog
read_verilog ha_synth.v

# Convert behavioral logic into RTL
proc

# Optional: visualize the current state
show -colors 3

# Map to generic cells
techmap

# Save intermediate version
write_verilog -noattr ha_synth2.v

# Logic optimization using standard cell library
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

# Final gate-level version
write_verilog -noattr ha_synth3.v

exit
```

---

## 🔍 Compare Two Verilog Files

You can compare the behavioral and synthesized Verilog files using tools like `diff`, or a GUI-based diff viewer:

```bash
# Basic terminal diff
diff ha_synth.v ha_synth3.v
```

Or use a visual comparison tool like:
- `meld` (GUI)
- `vscode` with extension support
- `vimdiff` (terminal GUI)

---
