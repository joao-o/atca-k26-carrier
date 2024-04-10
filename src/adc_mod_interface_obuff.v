`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 03:10:19 PM
// Design Name: 
// Module Name: adc_mod_interface_obuff
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


module adc_mod_interface_obuff(
    input sdi,
    input sck,
    input cnvst,
    input acq_clk,
    output sdi_p,
    output sdi_n,
    output sck_p,
    output sck_n,
    output cnvst_p,
    output cnvst_n,
    output acq_clk_p,
    output acq_clk_n
    );
    
    OBUFDS sdi_obuf (
      .O(sdi_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(sdi_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(sdi)    // 1-bit input: Buffer input
     );
    OBUFDS sck_obuf (
      .O(sck_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(sck_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(sck)    // 1-bit input: Buffer input
    );
    OBUFDS cnvst_obuf (
      .O(cnvst_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(cnvst_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(cnvst)    // 1-bit input: Buffer input
    );
    OBUFDS acq_clk_obuf (
      .O(acq_clk_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(acq_clk_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(acq_clk)    // 1-bit input: Buffer input
    );
    
endmodule


