# Run synthesis for Nexys 4 board
# and report utilization and timing estimates, write checkpoint design
synth_design -top $topName -part xc7a100tcsg324-1 -flatten rebuilt
write_checkpoint -force $outputDir/post_synth
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_power -file $outputDir/post_synth_power.rpt

