
---

# **Memory Design Project in Verilog**

This project demonstrates the design and simulation of **Single-Port RAM**, **Dual-Port RAM**, and **ROM** using Verilog. It includes a testbench to validate the functionality of the modules and uses **Intel Quartus Prime** and **ModelSim** for synthesis and simulation.

---

## **Project Features**
1. **Single-Port RAM**  
   - A synchronous RAM with one port for read and write operations.
   - Parameterizable for data width and address width.

2. **Dual-Port RAM**  
   - A RAM with two independent ports for simultaneous read/write operations.
   - Useful for parallel memory access in hardware designs.

3. **ROM**  
   - A synchronous read-only memory.
   - Preloaded with data during initialization for simulation purposes.

4. **Top-Level Module**  
   - Integrates all three memory components into a single design.

---

## **Repository Structure**
```
memory-design-project/
├── single_port_ram.v         # Single-port RAM module
├── dual_port_ram.v           # Dual-port RAM module
├── rom.v                     # ROM module
├── memory_project.v          # Top-level module
├── memory_project_tb.v       # Testbench for the top-level module
├── README.md                 # Project documentation
```

---

## **How It Works**
### 1. **Single-Port RAM**
- Performs read/write operations based on the `we` signal.
- Data written to the specified address (`addr`) is stored and can be read back later.

### 2. **Dual-Port RAM**
- Allows simultaneous and independent operations on Port A and Port B.
- Each port can perform read/write operations at different addresses.

### 3. **ROM**
- Preloaded with fixed values in the `initial` block.
- Outputs data based on the `addr` and `en` signals.

### 4. **Top Module**
- Combines the three components:
  - Single-Port RAM, Dual-Port RAM, and ROM.
- Exposes all input and output ports to test the functionality.

---

## **Setup and Usage**
### **1. Requirements**
- **Intel Quartus Prime** (for synthesis and RTL simulation)
- **ModelSim** (for waveform simulation)

---

### **2. Running the Project**
#### **Step 1: Open in Quartus Prime**
1. Launch Intel Quartus Prime.
2. Create a new Quartus project and add all `.v` files.
3. Set `memory_project.v` as the **Top-Level Entity**:
   - Go to **Assignments > Settings > Top-Level Entity** and select `memory_project`.

#### **Step 2: Compile the Design**
1. Click on **Processing > Start Compilation**.
2. Resolve any errors/warnings, if present.

#### **Step 3: Simulate in ModelSim**
1. Launch ModelSim from Quartus or standalone.
2. Compile all files:
   - In ModelSim, go to **Compile > Compile All** and select the `.v` files.
3. Set `memory_project_tb` as the **Top-Level Module** for simulation:
   - **Simulate > Start Simulation**.
4. Run the simulation:
   - Open the **Transcript** window and run the simulation:
     ```
     run 100ns
     ```

---

### **3. Viewing the Waveforms**
1. In ModelSim:
   - Add the following signals to the Wave window:
     - Single-Port RAM: `sp_data`, `sp_addr`, `sp_we`, `sp_q`
     - Dual-Port RAM: `dp_data_a`, `dp_data_b`, `dp_addr_a`, `dp_addr_b`, `dp_q_a`, `dp_q_b`
     - ROM: `rom_en`, `rom_addr`, `rom_data`
2. Run the simulation and observe the expected behavior:
   - Verify read/write operations for RAM.
   - Confirm correct data retrieval from ROM.

---

## **Testing and Validation**
The provided testbench (`memory_project_tb.v`) validates the functionality:
- Writes data to RAM and reads it back.
- Simultaneous read/write on Dual-Port RAM.
- Retrieves data from ROM based on the address.




