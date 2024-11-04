## Research Project: Energy-Efficient NPU Design

### Overview
This research project focused on designing a Neural Processing Unit (NPU) that prioritizes energy efficiency and resource utilization. To achieve this, the NPU was designed to support two distinct dataflow models: input-stationary and weight-stationary.

### Key Implementations

1. **Verilog-Based NPU Design:**
   * A comprehensive NPU architecture was designed using Verilog HDL.
   * The NPU incorporates a systolic array of Processing Elements (PEs), each capable of performing a Multiply-Accumulate (MAC) operation.
   * A flexible interconnect was developed to seamlessly switch between input- and weight-stationary dataflows.
   * A control unit was implemented to orchestrate data transfer between the PE array and data buffers, optimizing resource usage.

2. **Functional Verification and Synthesis:**
   * Rigorous testbenches were developed to validate the NPU's functionality.
   * Synthesis was performed to estimate resource utilization and performance metrics.
   * The NPU was interfaced with a Processing System (PS) using the AXI protocol.

3. **FPGA Implementation:**
   * A bitstream was generated and deployed onto a Xilinx ZCU104 MPSoC platform.
   * The FPGA implementation allowed for real-world evaluation of the NPU's performance and energy efficiency.

### Contributions
This research project has made significant contributions to the field of energy-efficient NPU design by:

* **Enhanced Dataflow Flexibility:** The ability to switch between input- and weight-stationary dataflows enables optimized resource utilization and power consumption based on specific application requirements.
* **Efficient Hardware Implementation:** The systolic array architecture and flexible interconnect design contribute to a highly efficient hardware implementation.
* **Rigorous Verification and Validation:** Comprehensive testbenches and synthesis results ensure the correctness and feasibility of the NPU design.
* **Real-World Evaluation:** FPGA implementation provides a platform for real-world testing and optimization.

This research has the potential to advance the development of low-power, high-performance AI accelerators, paving the way for more energy-efficient AI applications.
