The following tasks were implemented as a Research Project

-Used Verilog to design an entire NPU that supports two different kinds of dataflows to enable data reuse in order to reduce power
consumption and resource utilization
– Development and implementation of a systolic array of PEs, each PE implements a MAC
operation
– Development of a configurable/flexible interconnect between NPU buffers and PE array
to support both input- and weight-stationary dataflow.
– Implementation of a control unit to manage data transfer between PE array and data
buffers based on the selected dataflow model
-Functionality was verified using testbenches and synthesis was performed and AXI protocol was used for PS PL interface
-Bitstream was generated and implemented on an FPGA ( Xilinx ZCU104 MPSoC Platform)
