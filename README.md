# EcoLogic 🌍

![Demo GIF](https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2Y0cnE0a3g2dHJ6bm05YWYwOXpmcWp1cGliOGY3MHN4dWIycjNjbSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/YKp4nfRjrBGlr2SedV/giphy.gif)

### Real-Time, Energy-Efficient AI with DiffLogic on FPGA

EcoLogic is a neurosymbolic AI solution that leverages the DiffLogic architecture on an FPGA to achieve high-speed, low-power inference, ideal for real-time applications like disaster response. EcoLogic combines the efficiency of FPGA technology with IBM’s watsonx.ai platform to provide a scalable, sustainable AI model that addresses the energy demands of data centers and supports climate goals.

---

## Features ⚡️

- **DiffLogic Model Training**: Optimized model training with differentiable logic gates, enabling faster inference while maintaining a sparse, energy-efficient structure.
- **FPGA Implementation**: First-of-its-kind hardware adaptation of DiffLogic on the DE10-Lite FPGA for even faster inference.
- **IBM watsonx.ai Integration**: Utilizes IBM’s generative AI platform for real-time analysis in AI-driven disaster response.

---

## Repository Structure 📁

- **ModelSim/**: Contains the latest testbench HDL files for simulation.
- **Quartus/**: Houses the most recent Quartus project files for FPGA synthesis and implementation.
- **config/**: Configuration files, including support for 16x16 image inputs, allowing flexible input sizes.
- **trained_models/**: Pre-trained DiffLogic models ready for FPGA deployment.
- **verilog/**: Verilog files for model deployment on the FPGA.
- **vhdl/**: VHDL files corresponding to the Verilog implementations, providing hardware flexibility.
- **watson ai/**: Scripts for IBM watsonx.ai integration, including data generation and DAD (Data Analyzer and Debugger) logic analyzer.

---

## Setup and Installation 🚀

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/matheusmaldaner/EcoLogic.git
   cd EcoLogic
   ```

2. **Install Dependencies**  
   Install the required Python packages:
   ```bash
   pip install -r requirements.txt
   ```

2.1 **Install DiffLogic**
   Refer to DiffLogic's official [implementation](https://github.com/Felix-Petersen/difflogic) for directions on how to install it.

3. **FPGA Synthesis**  
   Open the Quartus project file (.qpf) in the **Quartus/** directory and follow the instructions in the README.md file there to compile and deploy to the DE10-Lite.

---

## Usage 💻

1. **Model Training**  
   Run `Main.ipynb` to train DiffLogic models on your dataset. The notebook allows customization of hyperparameters and visualizes training metrics.

2. **Hardware Implementation**  
   The `verilog/` and `vhdl/` directories contain files for deploying trained models onto the FPGA. Use **ModelSim** and **Quartus** for simulation and synthesis.

3. **IBM watsonx.ai Integration**  
   The **watson ai/** directory includes a script for watsonx.ai data analysis and inference testing. Run the integration script to connect EcoLogic with IBM’s platform.

---

## Example Input and Datasets 📊

- **mnist_dataset.py**: Script to prepare and preprocess the MNIST dataset for DiffLogic training.
- **mnist_input.mif**: Memory initialization file for FPGA ROM setup.

---

## Results and Benchmarks 📈

| Nodes     | DiffLogic (µs) | FPGA (µs) | % Decrease |
|-----------|------------------|-----------|------------|
| 512000    | 365.7            | 139.46    | 62%        |
| 3584000   | 537.89           | 177.9     | 67%        |
| 6144000   | 724.20           | 186.76    | 74%        |
| 8704000   | 907.78           | 202.54    | 78%        |
| 11264000  | 1086.52          | 239.18    | 78%        |

<img src="https://i.imgur.com/xxjD50Q.png" alt="inference times" width="400"/> <img src="https://i.imgur.com/6bc2icn.png" alt="comparison" width="410"/>



---

## Contributing 🤝

Contributions are welcome! Please fork this repository and submit a pull request. Ensure that your code passes all tests and adheres to our style guide.
