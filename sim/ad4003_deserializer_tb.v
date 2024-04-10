`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 02:02:08 PM
// Design Name: 
// Module Name: ad4003_deserializer_tb
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


module ad4003_deserializer_tb;

    reg rst,adc_spi_clk,adc_read_clk;
    reg [23:0] adc_sdo_cha,adc_sdo_chb;
    wire cnvst,sdi,sck;
    wire [863:0]adc_data;
    
    ad4003_deserializer dut (
        .rst(rst),
        .adc_spi_clk(adc_spi_clk),
        .adc_read_clk(adc_read_clk),
        .cnvst(cnvst),
        .adc_sdo_cha(adc_sdo_cha),
        .adc_sdo_chb(adc_sdo_chb),
        .sdi(sdi),
        .sck(sck),
        .adc_data(adc_data),
        .force_read(1'b1),
        .force_write(1'b0)
        );
    
    initial begin
      adc_spi_clk = 1'b0;
      forever adc_spi_clk = #625 ~adc_spi_clk;     
     end
     
     initial begin
        adc_read_clk = 1'b0;
        #320 adc_read_clk = 1'b0;
        forever adc_read_clk = #625 ~adc_read_clk;  
     end
     
    initial begin
      rst = 1'b1;
      #150000 rst = 1'b0;
    end

endmodule
