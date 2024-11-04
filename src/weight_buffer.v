`timescale 10ns / 1ns

module weight_buffer #(parameter WIDTH = 4, INPUT_WIDTH = 9, INPUT_HEIGHT = 9,  WEIGHT_HEIGHT = 3, WEIGHT_WIDTH = 3)
 (
input wire clk,
input wire reset,
input wire [31:0] data_in,                                    //input from axi interface
input wire write_enable,
output reg [31:0] data_out,
output wire weight_buffer_ready,                             //becomes high when weight buffer is full
output wire [(WIDTH*WEIGHT_HEIGHT*WEIGHT_WIDTH)-1:0] weights //weights sent to data_preprocessing_unit
);


reg [31:0] buffer [0: 2048];                                //buffer to store all the weights(each weight is 32 bits)
reg [2048:0] write_address;                                 //address locations for the buffer
reg [(WIDTH-1):0] shift_data;                               //used to shift data inside shift_register
reg [((WIDTH*WEIGHT_WIDTH*WEIGHT_HEIGHT)+WIDTH)-1:0] shift_register;    //accumulates data_in from axi_interface
reg [(WIDTH*WEIGHT_WIDTH*WEIGHT_HEIGHT)-1:0] weights_register;          //represents all the weights
reg [(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0] counter;         //used to check if buffer is full
reg reg_weight_buffer_ready;
reg [18:0] i;

initial
begin 
   reg_weight_buffer_ready <=0;
end
 
always @(posedge clk ) begin
   if (reset) begin                                           // Reset logic
        write_address <= 2048'b0;
        shift_data <=0;
        counter <=0;
        shift_register <= 0;
        reg_weight_buffer_ready <=0;
        for ( i = 0; i < 2048; i = i + 1) begin
                    buffer[i] <= 32'b0;
        end
   end else begin
        if (write_enable) begin
                    buffer[write_address] <= data_in;     //data_in is written into buffer
                    write_address <= write_address + 1;   //write_address is updated
                    shift_data <= data_in[(WIDTH-1):0];  //the (WIDTH-1) no. of  bits are selected from 32 bits;
                    counter <= counter + 1;              //the value is shifted into shift_register
                    shift_register <= {shift_data, shift_register[((WIDTH*WEIGHT_WIDTH*WEIGHT_HEIGHT)+WIDTH)-(WIDTH+1):WIDTH]};
                    if (counter == ((WEIGHT_WIDTH*WEIGHT_HEIGHT))) begin   //checking if the buffer is full
                            reg_weight_buffer_ready <=1;                            
                            weights_register <= shift_register[(WIDTH*WEIGHT_WIDTH*WEIGHT_HEIGHT)-1:0];  //transferring from shift_register to weights_register                   
                    end
        end  
   end
 end

assign weights = weights_register;
assign weight_buffer_ready = reg_weight_buffer_ready;

endmodule

