set srcDir ../src/verilog
set name Cellular
set outputDir ./out${name}
set topName ${name}Top
file mkdir $outputDir

# Setup the design sources
read_verilog $srcDir/$topName.v
add_files $srcDir/$name/$name/

read_xdc $srcDir/${name}_Nexys4.xdc
