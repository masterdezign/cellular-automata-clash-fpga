`timescale 100fs/100fs
module CellularTop
    ( // Inputs
      input  clk100 // clock
    , input  reset // reset

      // Outputs
    , output wire [15:0] led
    );

  Cellular cellular_inst (
    .CLOCK(clk100),
    .RST(reset),
    .current_state(led)
  );

endmodule
