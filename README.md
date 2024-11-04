## Research Project: Implementation-of-a-Configurable-Neural-Processing-Unit-with-Input-and-Weight-Stationary-Dataflows

### Overview
This research project focused on designing a Neural Processing Unit (NPU) that prioritizes energy efficiency and resource utilization. To achieve this, the NPU was designed to support two distinct dataflow models: input-stationary and weight-stationary.

## Project Objectives

- **Study and Review**: 
    - Conduct an in-depth analysis of state-of-the-art approaches related to flexible dataflow implementations for Neural Processing Units (NPUs).

- **NPU Implementation**:
    - Develop a **configurable dataflow NPU** with support for both input- and weight-stationary dataflow models.
    - Key components of the implementation include:
      - **PE Array Design**: Implement an array of Processing Elements (PEs), where each PE performs a Multiply-Accumulate (MAC) operation. The PE array design may be based on a systolic array architecture.
      - **Configurable Interconnect**: Design a flexible interconnection between NPU buffers and the PE array, facilitating both input- and weight-stationary dataflows.
      - **Control Unit**: Implement a control unit that manages data transfer between data buffers and the PE array, adapting to the chosen dataflow model.

- **Evaluation and Documentation**:
    - **Performance Evaluation**: Assess the NPU in terms of execution time, resource utilization, and power consumption across different types of convolutional layers and configurations for both dataflow models.
    - **Documentation**: Record the implementation process, experimental setup, and results in a comprehensive project report.

## Workflow Overview

- **Verilog Design**: Developed a Neural Processing Unit (NPU) that supports two types of dataflows to enhance data reuse, aiming to reduce power consumption and resource utilization.
  - **Systolic Array of PEs**: Implemented an array of Processing Elements (PEs) in a systolic architecture, with each PE performing a Multiply-Accumulate (MAC) operation.
  - **Configurable Interconnect**: Designed a flexible interconnect between NPU buffers and the PE array to support both input-stationary and weight-stationary dataflow models.
  - **Control Unit**: Created a control unit to manage data transfers between the PE array and data buffers based on the chosen dataflow model.

- **Verification and Synthesis**:
  - Verified functionality through testbenches.
  - Performed synthesis and utilized the AXI protocol for interfacing between Processing System (PS) and Programmable Logic (PL).

- **FPGA Implementation**:
  - Generated a bitstream and implemented the design on an FPGA (Xilinx ZCU104 MPSoC Platform).

```Project Report is available in /docs```
---



