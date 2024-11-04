`timescale 10ns / 1ns

module axi_interface 
(
input wire clk,
input wire reset,
input wire [31:0] axi_input_data,                //data input from the user
input wire [31:0] axi_input_handshake,                      
input wire input_buffer_ready,                   //denotes if input buffer is full
input wire weight_buffer_ready,                  //denotes if weight buffer is full
input wire index_buffer_ready,                   //denotes if index buffer is full
input wire [31:0] output_buffer_data,            //receives output feature maps from output_buffer for streaming to the user
input wire output_buffer_ready,                  //denotes if output buffer is full
output wire [31:0] axi_output_data,              //streaming output to user 
output wire [31:0] axi_output_handshake,                        
output wire [31:0] input_buffer_data,            //directs axi_input_data to input buffer
output wire input_buffer_write_enable,           //enables input buffer
output wire [31:0] weight_buffer_data,           //directs axi_input_data to weight buffer
output wire weight_buffer_write_enable,          //enables output buffer
output wire [31:0] index_buffer_data,            //directs axi_input_data to index buffer
output wire index_buffer_write_enable            //enables index buffer
);

reg [1:0] buffer_select;                        //buffer select to select which buffer to send data to
reg [31:0] handshake_reg;
always @(posedge clk) begin
    if (reset) begin
         buffer_select <= 2'b11;  // Reset buffer selection
    end else begin
         handshake_reg <= axi_input_handshake;
              if (handshake_reg == 32'd1) begin
              case ({input_buffer_ready, weight_buffer_ready, index_buffer_ready})
                                3'b000: buffer_select <= 2'b00;  // 3 buffer_ready signals are 0 at start and Input buffer selected
                                3'b100: buffer_select <= 2'b01;  // Weight buffer selected
                                3'b110: buffer_select <= 2'b10;   // Index buffer selected
                                default: buffer_select <= 2'b11;  // None of the buffers selected
              endcase
    end
    end
end

// Assigning data signals based on buffer_select
assign input_buffer_data = (buffer_select == 2'b00) ? axi_input_data : 32'hZ;
assign weight_buffer_data = (buffer_select == 2'b01) ? axi_input_data : 32'hZ;
assign index_buffer_data = (buffer_select == 2'b10) ? axi_input_data : 32'hZ;
// Assigning enable signals based on buffer_select
assign input_buffer_write_enable = (buffer_select == 2'b00) ? 1'b1 : 1'b0;
assign weight_buffer_write_enable = (buffer_select == 2'b01) ? 1'b1 : 1'b0;
assign index_buffer_write_enable = (buffer_select == 2'b10) ? 1'b1 : 1'b0;
// Assigning output data (to be streamed to the user) based on output_buffer signals
assign  axi_output_data = output_buffer_data;
assign axi_output_handshake = (output_buffer_ready) ? 32'd1 : 32'd0;
 
endmodule



