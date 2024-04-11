`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2024 04:30:54 PM
// Design Name: 
// Module Name: si5396a_spi_interface_tb
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


module si5396a_spi_writer_tb;

    reg clk,reset,read,write;
    wire nCS,sdo,sck,readdata;
    
    si53xx_spi_interface dut (.clk(clk),
                              .reset(reset),
                              .read(1'b0),
                              .write(1'b0),
                              .rw_addr(8'haa),
                              .write_data(8'ha6),
                              .nCS(nCS),
                              .sdo(sdo),
                              .sclk(sck),
                              .sdi(1'b1),
                              .rom_data(16'h1616));
    
    initial begin
      clk = 1'b0;
      forever clk = #5 ~clk;
     end
     
    initial begin
      reset = 1'b1;
      read = 0;
      write = 0;
      #100 reset = 1'b0;
    end
    
endmodule
