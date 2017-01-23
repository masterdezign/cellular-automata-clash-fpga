# Cellular automata

Cellular automata implemented in [CLaSH](http://www.clash-lang.org).
An example target device is Digilent Nexys4 board.

## Project structure

    src/          Sources
      |-Test/     CLaSH tests
      |-vhdl/     VHDL sources
    run/          Generated bitstreams

## Building project

1. Install Vivado 2015.4
2. Install CLaSH 0.6.23
3. Run `make SETTINGS="/path/to/vivado/settings.sh" VIVADO_CMD="/path/to/bin/vivado"`

## Example bitstream

A pregenerated bitstream for Nexys4 board can be found in [run/outCellular/CellularTop.bit](run/outCellular/CellularTop.bit).
