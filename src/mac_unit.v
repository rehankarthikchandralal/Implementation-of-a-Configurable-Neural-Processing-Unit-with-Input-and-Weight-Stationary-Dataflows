`timescale 10ns / 1ns
//DSP slices used to implement Multiply + Accumulate operation
(* use_dsp = "yes" *) module mac_unit#(parameter WIDTH =4)(    
    input wire [WIDTH-1:0] w,                        // Weight
    input wire [WIDTH-1:0] i,                        // Input
    input wire [(WIDTH*3)-1:0] pre_psum,             // Partial sum from previous PE
    input wire clk,                           
    input wire reset,                         
    output wire [(WIDTH*3)-1:0] new_psum             // Partial sum for next PE
    );   
reg [(WIDTH*3)-1:0] acc;                             // Accumulator Register
reg [(WIDTH*3)-1:0] pre_psum_reg;                    // Register for Previous psum 
reg [17:0] w_reg;                                    // 18-bit wide signal for weight
reg [17:0] i_reg;                                    // 18-bit wide signal for input
always @(posedge clk) begin
    if (reset) begin                                 //reset operation
          w_reg <= 18'h0;
          i_reg <= 18'h0;
          acc <= 0;
          pre_psum_reg <= 0;
    end
    else begin
          w_reg <= w;
          i_reg <= i;
          pre_psum_reg <= pre_psum;                  //previous partial sum is stored
          acc <= pre_psum_reg + ( w_reg * i_reg) ;   //multiply + accumulate operation
    end
end

assign new_psum = acc;  

endmodule

