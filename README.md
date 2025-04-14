# 32-bit Ripple Carry Adder in Verilog

This project implements a 32-bit Ripple Carry Adder (RCA) using Verilog. It forms part of a larger ALU module for FPGA-based digital systems.

## Overview

The RCA is built using 32 full adder units connected in series. Each full adder takes two input bits and a carry-in, producing a sum and carry-out. The carry-out of each stage is passed to the next stage.

## Files

- [rca_32](rca_32.v) - 32-bit RCA using 32 full adders
- [rca_tb.v](rca_tb.v) - Testbench to simulate and verify the RCA
- [rca_waveform](rca_waveform.png) - Resulting waveform from simulation

## Tools Used

- Intel Quartus / ModelSim (or any Verilog simulator)


## How to Run

1. Open the files in your Verilog IDE or simulator
2. Run the testbench rca_tb.v
3. Observe output in simulation waveform

## License

This project is licensed under the [MIT License](license). Feel free to use and modify it.
