# Cellular automata

Cellular automata implemented in [CLaSH](http://www.clash-lang.org).
An example target device is Digilent Nexys4 board.

## Project structure

    src/          Sources
      |-Test/     CLaSH tests
      |-vhdl/     VHDL sources
    run/          Generated bitstreams

## Building project

* Install [Vivado 2015.4](https://www.xilinx.com/support/download.html)
* Install CLaSH 0.7 globally using [stack](http://haskellstack.org/)

    $ stack setup --resolver=nightly-2017-01-17
    $ stack install --resolver=nightly-2017-01-17 clash-ghc-0.7.0.1
    
Depending whether you have multiple GHC instances installed, you may need
to add path to the newly installed GHC 8, i.e.

    $ export PATH=/home/user/.stack/programs/x86_64-linux/ghc-8.0.1/bin:$PATH
    
* Run `make SETTINGS="/path/to/vivado/settings.sh" VIVADO_CMD="/path/to/bin/vivado"`

## Example bitstream

A pregenerated bitstream for Nexys4 board can be found in [run/outCellular/CellularTop.bit](run/outCellular/CellularTop.bit).
