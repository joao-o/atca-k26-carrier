`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 04:13:44 PM
// Design Name: 
// Module Name: adc_sdo_diff_buf
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


module adc_sdo_diff_buf(
    input [24:1] adc_sdo_cha_p,
    input [24:1] adc_sdo_cha_n,
    input [24:1] adc_sdo_chb_p,
    input [24:1] adc_sdo_chb_n,
    output [24:1] adc_sdo_cha,
    output [24:1] adc_sdo_chb
    );
    
    genvar k;            
    generate
        for (k=1;k<25;k=k+1) begin: adc_sdo_buffer
            IBUFDS IBUFDS_cha (
              .O(adc_sdo_cha[k]),   // 1-bit output: Buffer output
              .I(adc_sdo_cha_p[k]),   // 1-bit input: Diff_p buffer input (connect directly to top-level port)
              .IB(adc_sdo_cha_n[k])  // 1-bit input: Diff_n buffer input (connect directly to top-level port)
            );
            IBUFDS IBUFDS_chb (
              .O(adc_sdo_chb[k]),   // 1-bit output: Buffer output
              .I(adc_sdo_chb_p[k]),   // 1-bit input: Diff_p buffer input (connect directly to top-level port)
              .IB(adc_sdo_chb_n[k])  // 1-bit input: Diff_n buffer input (connect directly to top-level port)
            );
        end
    endgenerate
    
endmodule
