# FPGAMB0 - FPGA-based Handheld Console

This repository contains the PCB design files as well as the HDL sources for an FPGA-based handheld console that plays games from Gameboy cartridges.

## Demo (GIF)

![Demo](https://github.com/blazer82/gb.fpga/raw/master/media/demo.gif)

## Testbenches

Testbench files can be run and analyzed using _iverilog_ and _GTKWave_:

```
iverilog -o main src/hdl/ascii_encoder_tb.v && vvp main -lxt2 && open dump.lx2
```
