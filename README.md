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
* [Install development version](https://github.com/clash-lang/clash-compiler/wiki/FAQ#how-do-i-run-the-development-version-of-clash)
  Clash 0.99 using [stack](http://haskellstack.org/)

    $ git clone https://github.com/clash-lang/clash-compiler.git
    $ cd clash-compiler
    $ git submodule update --init
    $ stack build --install-ghc

* Run `make SETTINGS="/path/to/vivado/settings.sh" VIVADO_CMD="/path/to/bin/vivado"`

## Example bitstream

A pregenerated bitstream for Nexys4 board can be found in [run/outCellular/CellularTop.bit](run/outCellular/CellularTop.bit).
