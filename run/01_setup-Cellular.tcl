set srcDir ../src/vhdl
set name Cellular
set outputDir ./out${name}
set topName ${name}Top
file mkdir $outputDir

# Setup the design sources
read_vhdl $srcDir/$topName.vhdl
add_files $srcDir/$name/

read_xdc $srcDir/${name}_Nexys4.xdc
