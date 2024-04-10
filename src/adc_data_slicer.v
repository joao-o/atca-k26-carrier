`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 06:46:33 PM
// Design Name: 
// Module Name: adc_data_slicer
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


module adc_data_slicer(
    input [863:0]data_in,
    output [215:0]data_out_1,
    output [215:0]data_out_2,
    output [215:0]data_out_3,
    output [215:0]data_out_4
    );
    assign data_out_1=data_in[215:0];
    assign data_out_2=data_in[431:216];
    assign data_out_3=data_in[647:432];
    assign data_out_4=data_in[863:648];
endmodule
