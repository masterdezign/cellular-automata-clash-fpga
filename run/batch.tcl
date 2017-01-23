source 01_setup.tcl

source 02_synth.tcl

source 03_place.tcl

source 04_route.tcl

# Generate a bitstream
write_bitstream -force $outputDir/$topName.bit

# Generate a SPI (.mcs) file
write_cfgmem -format mcs -interface spix4 -size 16 -loadbit "up 0x0 $outputDir/$topName.bit" -file $outputDir/$topName.mcs
