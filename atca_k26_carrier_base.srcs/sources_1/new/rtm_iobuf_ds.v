`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2024 04:03:23 PM
// Design Name: 
// Module Name: rtm_iobuf_ds
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rtm_iobuf_ds(
    output [4:1] rtm_in,
    input [4:1] rtm_out,
    inout [4:1] rtm_io_p,
    inout [4:1] rtm_io_n,
    input [4:1] rtm_input_en 

    );
    
    IOBUFDS rtm_iobufs1 (
      .O(rtm_in[1]),     // 1-bit output: Buffer output
      .I(rtm_out[1]),     // 1-bit input: Buffer input
      .IO(rtm_io_p[1]),   // 1-bit inout: Diff_p inout (connect directly to top-level port)
      .IOB(rtm_io_n[1]), // 1-bit inout: Diff_n inout (connect directly to top-level port)
      .T(rtm_input_en[1])      // 1-bit input: 3-state enable input
   );

   IOBUFDS rtm_iobufs2 (
      .O(rtm_in[2]),     // 1-bit output: Buffer output
      .I(rtm_out[2]),     // 1-bit input: Buffer input
      .IO(rtm_io_p[2]),   // 1-bit inout: Diff_p inout (connect directly to top-level port)
      .IOB(rtm_io_n[2]), // 1-bit inout: Diff_n inout (connect directly to top-level port)
      .T(rtm_input_en[2])      // 1-bit input: 3-state enable input
   );
   
   IOBUFDS rtm_iobufs3 (
      .O(rtm_in[3]),     // 1-bit output: Buffer output
      .I(rtm_out[3]),     // 1-bit input: Buffer input
      .IO(rtm_io_p[3]),   // 1-bit inout: Diff_p inout (connect directly to top-level port)
      .IOB(rtm_io_n[3]), // 1-bit inout: Diff_n inout (connect directly to top-level port)
      .T(rtm_input_en[3])      // 1-bit input: 3-state enable input
   );
   
   IOBUFDS rtm_iobufs4 (
      .O(rtm_in[4]),     // 1-bit output: Buffer output
      .I(rtm_out[4]),     // 1-bit input: Buffer input
      .IO(rtm_io_p[4]),   // 1-bit inout: Diff_p inout (connect directly to top-level port)
      .IOB(rtm_io_n[4]), // 1-bit inout: Diff_n inout (connect directly to top-level port)
      .T(rtm_input_en[4])      // 1-bit input: 3-state enable input
   );
endmodule
