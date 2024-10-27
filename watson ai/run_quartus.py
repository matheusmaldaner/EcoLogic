import subprocess

def run_quartus(tcl_script):
    # Run the Quartus TCL script using quartus_sh
    command = ["quartus_sh", "-t", tcl_script]
    result = subprocess.run(command, capture_output=True, text=True)
    
    # Output the logs
    if result.returncode == 0:
        print("Quartus project ran successfully.")
        print(result.stdout)
    else:
        print("Quartus project failed.")
        print(result.stderr)

# Run the automate_project.tcl script
run_quartus("automate_project.tcl")