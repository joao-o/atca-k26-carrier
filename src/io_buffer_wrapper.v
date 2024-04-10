`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 01:55:21 PM
// Design Name: 
// Module Name: io_buffer_wrapper
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


module io_buffer_wrapper(
    input buf_out,
    output buf_in,
    inout buf_io,
    input in_en
    );
    
    IOBUF IOBUF_inst (
      .O(buf_in),   // 1-bit output: Buffer output
      .I(buf_out),   // 1-bit input: Buffer input
      .IO(buf_io), // 1-bit inout: Buffer inout (connect directly to top-level port)
      .T(in_en)    // 1-bit input: 3-state enable input
    );
    
endmodule
