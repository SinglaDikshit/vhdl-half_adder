

how to view in GTKWAVE using IIC-OSIC-TOOLS. Clone this Files into /foss/designs/SKY/ha. And run the following commands.

  # check for Syntax Errors
  ghdl -s ha.vhdl
  ghdl -s ha_tb.vhdl
  
  # Analyse the code
  ghdl -a ha.vhdl
  ghdl -a ha_tb.vhdl
  
  # Elaborate
  ghdl -e ha_tb
  
  # Run
  ghdl -r ha_tb
  
  # Make a VCD File
  ghdl -r ha_tb --vcd=ha.vcd
  
  # Show in GTKWAVE
  gtkwave ha.vcd

how to convert vhdl into verilog, use the follwing commands:
  ghdl -a ha.vhdl
  ghdl synth --out=verilog ha > ha_synth.v

how to synthese the verilog into primitive gates
  goto yosys
    read_verilog ha_synth.v
    proc
    show -colors 3
    techmap
    write_verilog -noattr ha_synth2.v
    # Assuming there is the library inside your working directory for exmple
    abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
    write_verilog -noattr ha_synth3.v
    exit

how to compare this two verilog codes
  

  
