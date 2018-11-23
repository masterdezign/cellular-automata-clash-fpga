# Cellular automata

Cellular automata implemented in [CLaSH](http://www.clash-lang.org).
An example target device is Digilent Nexys4 board.

## Project structure

    src/          Sources
      |-Test/     Clash tests
      |-vhdl/     VHDL sources
    run/          Generated bitstreams

## Building project

* Install [Vivado 2015.4](https://www.xilinx.com/support/download.html)
* Install [Clash 0.99.3](https://gist.github.com/pkvk/6142fe8b4828541bfc86aee0af26303b)
* Run `make SETTINGS="/path/to/vivado/settings.sh" VIVADO_CMD="/path/to/bin/vivado"`

## Example bitstream

A pregenerated bitstream for Nexys4 board can be found in [run/outCellular/CellularTop.bit](run/outCellular/CellularTop.bit).
