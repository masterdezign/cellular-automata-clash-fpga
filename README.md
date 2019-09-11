# Cellular automata

Cellular automata implemented in [Clash](http://www.clash-lang.org).
An example target device is Digilent Nexys4 board.

## Project structure

    src/          Sources
      |-Test/     Clash tests
      |-vhdl/     VHDL sources
    run/          Generated bitstreams

## Building the project

#### Install [Vivado](https://www.xilinx.com/support/download.html)

#### Install [Clash 1.0](https://clash-lang.org/install/)

#### Build the project

     $ make SETTINGS="/path/to/vivado/settings.sh" VIVADO_CMD="/path/to/bin/vivado"

## Example bitstream

A pregenerated bitstream for Nexys4 board can be found in [run/outCellular/CellularTop.bit](run/outCellular/CellularTop.bit).
