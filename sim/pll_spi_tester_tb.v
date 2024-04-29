`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2024 06:09:47 PM
// Design Name: 
// Module Name: pll_spi_tester_tb
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


module pll_spi_tester_tb(

    );
    
    reg clk,reset;
    wire if_reset,read,write,sdo,nCS,sck,done,pll_reset;
    wire [7:0] rdata,addr,data;
    
    
     si53xx_spi_interface iface (.clk(clk),
                              .reset(if_reset),
                              .read(read),
                              .write(write),
                              .rw_addr(addr),
                              .write_data(data),
                              .nCS(nCS),
                              .sdo(sdo),
                              .sclk(sck),
                              .sdi(1'b1),
                              .read_data(rdata),
                              .rom_data(16'h1616),
                              .done(done));
                              
     pll_spi_tester dut (
        .reset(reset),
        .clk(clk),
        .if_read(read),
        .if_write(write),
        .if_rdata(rdata),
        .if_wdata(data),
        .if_addr(addr),
        .if_reset(if_reset),
        .if_done(done),
        .pll_reset(pll_reset),
        .test_success(test)
    );
    
    initial begin
      clk = 1'b0;
      forever clk = #5 ~clk;
     end
     
    initial begin
      reset = 1'b1;
      #100 reset = 1'b0;
    end                        
    
endmodule
