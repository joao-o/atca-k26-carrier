`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 03:34:12 PM
// Design Name: 
// Module Name: heartbeat_gen
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


module heartbeat_gen(
    input clk,
    input rst,
    output reg pwm
    );
    
    reg [26:0] cyc_reg;
    reg [7:0] compare_reg;

    always @(posedge clk) begin
        if(rst) begin
            cyc_reg <= 0;
            pwm <= 1;
            compare_reg <=0;
            end
        else
        if (cyc_reg < 27'd100000000) begin
            if(cyc_reg > 27'h1000000 && cyc_reg <27'h2000000||cyc_reg > 27'h3000000 && cyc_reg <27'h4000000) begin
                if(cyc_reg[15:0]==16'h0000)
                    compare_reg<=compare_reg+1;
                if(cyc_reg[15:8]< compare_reg)
                    pwm <=1'b0;
                    else
                    pwm <=1'b1;
                end
                else begin
                pwm <= 1'b1;
                compare_reg <= 8'b0;
                end                
            cyc_reg <= cyc_reg +1;
            end
            else
                cyc_reg <= 0;
    end
    
endmodule
