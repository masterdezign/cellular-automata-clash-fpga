# Cellular automata

Cellular automata implemented in [Clash](http://www.clash-lang.org).
An example target device is Digilent Nexys4 board.

## Project structure

    src/          Sources
      |-Test/     Clash tests
      |-vhdl/     VHDL sources
    run/          Generated bitstreams

## Building project

#### Install [Vivado 2015.4](https://www.xilinx.com/support/download.html)
#### Install Clash 0.99.3

NB: The following commands should *not* be run in a directory containing a stack.yaml file.

Install Stack from https://haskellstack.org

     $ curl -sSL https://get.haskellstack.org/ | sh

Run

     $ stack setup --resolver=lts-12.19

Install Clash

     $ stack install --resolver=lts-12.19 clash-ghc-0.99.3

#### Build the project

     $ make SETTINGS="/path/to/vivado/settings.sh" VIVADO_CMD="/path/to/bin/vivado"

## Example bitstream

A pregenerated bitstream for Nexys4 board can be found in [run/outCellular/CellularTop.bit](run/outCellular/CellularTop.bit).
