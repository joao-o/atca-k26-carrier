`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 03:26:55 PM
// Design Name: 
// Module Name: io_test_buffer_bank_tb
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


module io_test_buffer_bank_tb;
    
    reg clk,reset;
    wire sck_p,sck_n,sdi_p,sdi_n,aclk_p,aclk_n;
    
    io_test_buffer_bank dut (clk,reset,sck_p,sck_n,sdi_p,sdi_n,aclk_p,aclk_n);
    
    initial begin
      clk = 1'b0;
      forever clk = #5 ~clk;
     end
     
    initial begin
      reset = 1'b1;
      #100 reset = 1'b0;
    end
    
    
endmodule
