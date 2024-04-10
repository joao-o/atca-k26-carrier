`timescale 100ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 06:22:36 PM
// Design Name: 
// Module Name: ad4003_reader
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


module ad4003_reader(
    input clk,
    input enable,
    input sdo,
    output reg [17:0]adc_data
    );
     
    //warning this crosses clock domains but "should be fine"(tm) given that the signals 
    //are read by a slightly delayed clock that's always in phase with the first clock domain
    //will move this block to its own place since it has to be instantiated 48 times
    // need to add constraints to this
    always @(posedge clk) // read data from adc, read clock is delayed by 47ns (wait for 4 clock cycles and delay clock for 94 degrees)
        if(enable)
            adc_data<={adc_data[16:0],sdo};
        
endmodule
