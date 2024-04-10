`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2023 02:46:40 PM
// Design Name: 
// Module Name: si5396a_spi_interface
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: implements part of the si53xx pll spi communication protocol, 
//              can source config data from a ROM and flash it all at once
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module si53xx_spi_interface(
    input clk,
    input reset,
    input read,
    input write,
    input [7:0]rw_addr,
    input [7:0]writedata,
    output reg [7:0]readdata,
    output nCS,
    input sdi,
    output reg sdo,
    output  reg in_en,
    output sclk
    );
    
    reg [9:0] addr;
    wire [15:0] data;
    
    si5396a_config_mem config_rom ( addr , data );
    
    wire [7:0] write_command,read_command;
    reg [2:0] spi_bit;
    reg [2:0] spi_byte;
    reg [6:0] spi_clk_gen;
    reg [31:0] reset_timer;
    
    parameter RESET=0,AUTO=1,READ=2,WRITE=3,DONE=4;
    
    reg [2:0] state,next_state;
    
    assign write_command = 8'b01001011;
    assign read_command = 8'b10001101;
    
    always @(*) begin //set state of sdo (follows timing as long as spi bit changes at correct time)
        case(state)
            AUTO:begin
                in_en=1'b0;
                case(spi_byte)
                    4'h4: sdo=1'b0; // set addr command 0000 xxxx 
                    4'h3: sdo=data[8+spi_bit]; // addr
                    4'h2: sdo=writedata[spi_bit]; // write data command 010x xxxx
                    4'h1: sdo=data[spi_bit]; // data
                    default: sdo=1'b0;
                endcase
            end
            WRITE:begin
                in_en=1'b0;
                case(spi_byte) // same as auto
                    4'h4: sdo=1'b0;
                    4'h3: sdo=rw_addr[spi_bit];
                    4'h2: sdo=write_command[spi_bit];
                    4'h1: sdo=writedata[spi_bit];
                    default: sdo=1'b0;
                endcase
            end
            READ:begin
                case(spi_byte) // read command differs
                    4'h4:    begin in_en=1'b0; sdo=1'b0; end
                    4'h3:    begin in_en=1'b0; sdo=rw_addr[spi_bit];end
                    4'h2:    begin in_en=1'b0; sdo=read_command[spi_bit]; end
                    4'h1:    begin in_en=1'b1; sdo=1'b0; end 
                    default: begin in_en=1'b1; sdo=1'b0; end
                endcase
            end
            default:begin
                in_en=1'b1;
                sdo=1'b0;
            end
        endcase
        
        case(state)
            RESET:    next_state = reset ? RESET :( read ? READ : (write ? WRITE : AUTO));
            AUTO:     next_state = reset ? RESET :( addr == 10'd614 ? DONE : AUTO);
            READ:     next_state = reset ? RESET :( spi_byte == 4'd0 ? DONE : READ);
            WRITE:    next_state = reset ? RESET :( spi_byte == 4'd0 ? DONE : WRITE);
            DONE:     next_state = reset ? RESET : DONE;
            default : next_state = DONE;
        endcase
    end
    
    
    always @(posedge clk) begin
        case (state)
        RESET: begin
            spi_clk_gen<=0;
            addr <= 10'h000;
            spi_bit <= 4'h0;
            spi_byte <= 3'h5;
            reset_timer <= 32'd0;
        end 
        AUTO: begin
            if(reset_timer < 32'd100) // delay before automatic mode executes at least 14ms for pll to start working
                reset_timer <=reset_timer+1;
            else begin
                spi_clk_gen<= spi_clk_gen+1'b1;
                if (spi_clk_gen==7'h36)  // 50 ns before the rising edge of sclk (setup and hold times are 5ns)
                    if (spi_byte==0) begin
                            spi_byte<=3'h5;
                            spi_bit<=4'h0;
                            addr<=addr+1;
                    end else begin
                        spi_bit<=spi_bit-1;
                        if(spi_bit==0)
                            spi_byte<=spi_byte-1;
                    end
            end
        end
        READ:begin
            spi_clk_gen<= spi_clk_gen+1'b1;
            if (spi_clk_gen==7'h45) begin  // 50 ns before the rising edge of sclk (setup and hold times are 5ns)
                spi_bit<=spi_bit-1;
                if(spi_byte==3'd1)
                    readdata[spi_bit]<=sdi;
                if(spi_bit==0)
                    spi_byte<=spi_byte-1;
            end
        end
        WRITE:begin
            spi_clk_gen<= spi_clk_gen+1'b1;
            if (spi_clk_gen==7'h35) begin  // 50 ns before the rising edge of sclk (setup and hold times are 5ns)
                spi_bit<=spi_bit-1;
                if(spi_bit==0)
                    spi_byte<=spi_byte-1;
            end
        end 
        DONE:begin
            spi_clk_gen<=0;
        end 
        default: begin
            spi_clk_gen<=0;
        end
        endcase
        state <= next_state;
    end
    
    assign sclk = spi_clk_gen[6];
    assign nCS = (spi_byte==0 || spi_byte==5 ? 1:0);
    
endmodule
