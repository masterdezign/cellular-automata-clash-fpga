/* AUTOMATICALLY GENERATED VERILOG-2001 SOURCE CODE.
** GENERATED BY CLASH 1.0.0. DO NOT MODIFY.
*/
`timescale 100fs/100fs
module Cellular
    ( // Inputs
      input  CLOCK // clock
    , input  RST // reset
    //, input  en

      // Outputs
    , output wire [15:0] current_state
    );
  // Cellular.hs:18:1-9
  wire [15:0] c$r_rec;
  // FPGA/CellularArray2.hs:(21,1)-(29,29)
  wire [15:0] prev;
  wire [15:0] c$tup_app_arg;
  wire [15:0] result;
  // FPGA/CellularArray2.hs:(21,1)-(29,29)
  wire [255:0] xs;
  // FPGA/CellularArray2.hs:(21,1)-(29,29)
  wire [255:0] c$xs_app_arg;
  // FPGA/CellularArray2.hs:(21,1)-(29,29)
  wire [15:0] c$xs_app_arg_0;
  // Cellular.hs:18:1-9
  wire [23:0] cnt;
  wire [271:0] c$vec;
  wire [255:0] c$vec_0;

  wire en;
  assign en = 1;

  // register begin
  reg [15:0] c$r_rec_reg  = 16'b0000000000000000 ;
  always @(posedge CLOCK or  posedge  RST) begin : c$r_rec_register
    if ( RST) begin
      c$r_rec_reg <= 16'b0000000000000000;
    end else  if ((en & (cnt == 24'd0)))  begin
      c$r_rec_reg <= prev;
    end
  end
  assign c$r_rec = c$r_rec_reg;
  // register end

  // register begin
  reg [15:0] prev_reg  = 16'b0000000000000001 ;
  always @(posedge CLOCK or  posedge  RST) begin : prev_register
    if ( RST) begin
      prev_reg <= 16'b0000000000000001;
    end else  if (en)  begin
      prev_reg <= (c$tup_app_arg);
    end
  end
  assign prev = prev_reg;
  // register end

  // map begin
  genvar i;
  generate
  for (i=0; i < 16; i = i + 1) begin : map
    wire  map_in;
    assign map_in = result[i*1+:1];
    wire [0:0] map_out;
      assign map_out = map_in;


    assign c$tup_app_arg[i*1+:1] = map_out;
  end
  endgenerate
  // map end

  // map begin
  genvar i_0;
  generate
  for (i_0=0; i_0 < 16; i_0 = i_0 + 1) begin : map_0
    wire [15:0] map_in_0;
    assign map_in_0 = xs[i_0*16+:16];
    wire  map_out_0;
    // FPGA/CellularArray2.hs:(21,1)-(29,29)
    wire signed [63:0] wild1;
    wire [2:0] c$bv;
    wire [7:0] c$bv_0;
      assign c$bv = (map_in_0[2 : 0]);

      assign wild1 = $signed(($signed({{(64-3) {1'b0}},c$bv})));

      assign c$bv_0 = 8'b01101110;

      assign map_out_0 = c$bv_0[(wild1)];


    assign result[i_0*1+:1] = map_out_0;
  end
  endgenerate
  // map end

  assign c$vec = {c$xs_app_arg_0,c$xs_app_arg};

  assign xs = c$vec[272-1 : 16];

  assign c$vec_0 = (xs);

  // map begin
  genvar i_1;
  generate
  for (i_1=0; i_1 < 16; i_1 = i_1 + 1) begin : map_1
    wire [15:0] map_in_1;
    assign map_in_1 = c$vec_0[i_1*16+:16];
    wire [15:0] map_out_1;
    wire [15:0] c$bb_res_res;
      // rotateL begin
      wire [2*16-1:0] bv;
      assign bv = {map_in_1,map_in_1} << ((64'sd1) % 16);
      assign c$bb_res_res = bv[2*16-1 : 16];
      // rotateL end

      assign map_out_1 = c$bb_res_res;


    assign c$xs_app_arg[i_1*16+:16] = map_out_1;
  end
  endgenerate
  // map end

  // rotateL begin
  wire [2*16-1:0] bv_0;
  assign bv_0 = {c$r_rec,c$r_rec} << ((64'sd2) % 16);
  assign c$xs_app_arg_0 = bv_0[2*16-1 : 16];
  // rotateL end

  // register begin
  reg [23:0] cnt_reg  = 24'd0 ;
  always @(posedge CLOCK or  posedge  RST) begin : cnt_register
    if ( RST) begin
      cnt_reg <= 24'd0;
    end else  if (en)  begin
      cnt_reg <= (cnt + 24'd1);
    end
  end
  assign cnt = cnt_reg;
  // register end

  assign current_state = c$r_rec;


endmodule
