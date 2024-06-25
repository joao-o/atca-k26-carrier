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
    input [5:0]sel_a,
    input [5:0]sel_b,
    output reg [17:0] data_out_a,
    output reg [17:0] data_out_b
    
    );
    wire [17:0] 
        adc_data_1a, adc_data_1b,
        adc_data_2a, adc_data_2b, 
        adc_data_3a, adc_data_3b, 
        adc_data_4a, adc_data_4b, 
        adc_data_5a, adc_data_5b, 
        adc_data_6a, adc_data_6b, 
        adc_data_7a, adc_data_7b, 
        adc_data_8a, adc_data_8b,
        adc_data_9a, adc_data_9b, 
        adc_data_10a, adc_data_10b, 
        adc_data_11a, adc_data_11b, 
        adc_data_12a, adc_data_12b, 
        adc_data_13a, adc_data_13b, 
        adc_data_14a, adc_data_14b, 
        adc_data_15a, adc_data_15b, 
        adc_data_16a, adc_data_16b, 
        adc_data_17a, adc_data_17b, 
        adc_data_18a, adc_data_18b, 
        adc_data_19a, adc_data_19b, 
        adc_data_20a, adc_data_20b, 
        adc_data_21a, adc_data_21b, 
        adc_data_22a, adc_data_22b, 
        adc_data_23a, adc_data_23b, 
        adc_data_24a, adc_data_24b; 
    
    always @(*) begin
        case(sel_a)
            5'd1: data_out_a=adc_data_1a;
            5'd2: data_out_a=adc_data_2a; 
            5'd3: data_out_a=adc_data_3a; 
            5'd4: data_out_a=adc_data_4a; 
            5'd5: data_out_a=adc_data_5a; 
            5'd6: data_out_a=adc_data_6a; 
            5'd7: data_out_a=adc_data_7a; 
            5'd8: data_out_a=adc_data_8a; 
            5'd9: data_out_a=adc_data_9a; 
            5'd10: data_out_a=adc_data_10a; 
            5'd11: data_out_a=adc_data_11a; 
            5'd12: data_out_a=adc_data_12a; 
            5'd13: data_out_a=adc_data_13a; 
            5'd14: data_out_a=adc_data_14a; 
            5'd15: data_out_a=adc_data_15a; 
            5'd16: data_out_a=adc_data_16a; 
            5'd17: data_out_a=adc_data_17a; 
            5'd18: data_out_a=adc_data_18a; 
            5'd19: data_out_a=adc_data_19a; 
            5'd20: data_out_a=adc_data_20a; 
            5'd21: data_out_a=adc_data_21a; 
            5'd22: data_out_a=adc_data_22a; 
            5'd23: data_out_a=adc_data_23a; 
            5'd24: data_out_a=adc_data_24a;
            default: data_out_a=adc_data_1a;
        endcase
        
        case(sel_b)
            5'd1: data_out_b=adc_data_1b; 
            5'd2: data_out_b=adc_data_2b; 
            5'd3: data_out_b=adc_data_3b; 
            5'd4: data_out_b=adc_data_4b; 
            5'd5: data_out_b=adc_data_5b; 
            5'd6: data_out_b=adc_data_6b; 
            5'd7: data_out_b=adc_data_7b; 
            5'd8: data_out_b=adc_data_8b; 
            5'd9: data_out_b=adc_data_9b; 
            5'd10: data_out_b=adc_data_10b; 
            5'd11: data_out_b=adc_data_11b; 
            5'd12: data_out_b=adc_data_12b; 
            5'd13: data_out_b=adc_data_13b; 
            5'd14: data_out_b=adc_data_14b; 
            5'd15: data_out_b=adc_data_15b; 
            5'd16: data_out_b=adc_data_16b; 
            5'd17: data_out_b=adc_data_17b; 
            5'd18: data_out_b=adc_data_18b; 
            5'd19: data_out_b=adc_data_19b; 
            5'd20: data_out_b=adc_data_20b; 
            5'd21: data_out_b=adc_data_21b; 
            5'd22: data_out_b=adc_data_22b; 
            5'd23: data_out_b=adc_data_23b; 
            5'd24: data_out_b=adc_data_24b; 
            default: data_out_b=adc_data_1b;
        endcase
        end

    assign adc_data_1a = data_in[17:0];
    assign adc_data_2a = data_in[53:36];
    assign adc_data_3a = data_in[89:72];
    assign adc_data_4a = data_in[125:108];
    assign adc_data_5a = data_in[161:144];
    assign adc_data_6a = data_in[197:180];
    assign adc_data_7a = data_in[233:216];
    assign adc_data_8a = data_in[269:252];
    assign adc_data_9a = data_in[305:288];
    assign adc_data_10a = data_in[341:324];
    assign adc_data_11a = data_in[377:360];
    assign adc_data_12a = data_in[413:396];
    assign adc_data_13a = data_in[449:432];
    assign adc_data_14a = data_in[485:468];
    assign adc_data_15a = data_in[521:504];
    assign adc_data_16a = data_in[557:540];
    assign adc_data_17a = data_in[593:576];
    assign adc_data_18a = data_in[629:612];
    assign adc_data_19a = data_in[665:648];
    assign adc_data_20a = data_in[701:684];
    assign adc_data_21a = data_in[737:720];
    assign adc_data_22a = data_in[773:756];
    assign adc_data_23a = data_in[809:792];
    assign adc_data_24a = data_in[845:828];
    assign adc_data_1b = data_in[35:18]; 
    assign adc_data_2b = data_in[71:54]; 
    assign adc_data_3b = data_in[107:90]; 
    assign adc_data_4b = data_in[143:126]; 
    assign adc_data_5b = data_in[179:162]; 
    assign adc_data_6b = data_in[215:198]; 
    assign adc_data_7b = data_in[251:234]; 
    assign adc_data_8b = data_in[287:270]; 
    assign adc_data_9b = data_in[323:306]; 
    assign adc_data_10b = data_in[359:342]; 
    assign adc_data_11b = data_in[395:378]; 
    assign adc_data_12b = data_in[431:414]; 
    assign adc_data_13b = data_in[467:450]; 
    assign adc_data_14b = data_in[503:486]; 
    assign adc_data_15b = data_in[539:522]; 
    assign adc_data_16b = data_in[575:558]; 
    assign adc_data_17b = data_in[611:594]; 
    assign adc_data_18b = data_in[647:630]; 
    assign adc_data_19b = data_in[683:666]; 
    assign adc_data_20b = data_in[719:702]; 
    assign adc_data_21b = data_in[755:738]; 
    assign adc_data_22b = data_in[791:774]; 
    assign adc_data_23b = data_in[827:810]; 
    assign adc_data_24b = data_in[863:846]; 
    
endmodule
