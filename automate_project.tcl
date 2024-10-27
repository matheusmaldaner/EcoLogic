# Create a new project
project_new -overwrite my_fpga_project my_fpga.qpf

# Set the top-level entity and device family
set_global_assignment -name TOP_LEVEL_ENTITY my_fpga
set_global_assignment -name FAMILY "Cyclone V"

# Add Verilog files
set_global_assignment -name VERILOG_FILE my_fpga.v

# Run synthesis, fitting, assembly, and timing analysis
execute_flow -compile