`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2024 02:52:07 PM
// Design Name: 
// Module Name: io_test_buffer_bank
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


module io_test_buffer_bank( 
    input clk,
    input rst,
    output sck_p,
    output sck_n,
    output sdi_p,
    output sdi_n,
    output aclk_p,
    output aclk_n
);   
    reg [3:0] sdi_gen;
    reg [3:0] clk_out;
    
    always @(posedge clk)
        if(!rst) begin
            sdi_gen <= clk_out==4'd8 ? sdi_gen+1 :sdi_gen;
            clk_out <= clk_out+1;
            end
        else begin
            sdi_gen <= 4'b0;
            clk_out <= 0;
        end
    
    
OBUFDS OBUFDS_sck (
      .O(sck_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(sck_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(clk_out[3])    // 1-bit input: Buffer input
   );
   
OBUFDS OBUFDS_sdi (
      .O(sdi_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(sdi_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(sdi_gen[3])    // 1-bit input: Buffer input
   );
   
OBUFDS OBUFDS_acqclk (
      .O(aclk_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(aclk_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(clk)    // 1-bit input: Buffer input
   );
    
endmodule
