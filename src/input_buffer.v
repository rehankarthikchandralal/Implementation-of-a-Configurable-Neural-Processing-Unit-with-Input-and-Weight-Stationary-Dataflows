`timescale 10ns / 1ns

module input_buffer #(parameter WIDTH = 4, INPUT_WIDTH = 9, INPUT_HEIGHT = 9)
 (
input wire clk,
input wire reset,
input wire [31:0] data_in,       // data_in is the data input we get from axi interface
input wire write_enable,         
output wire input_buffer_ready,  //becomes high when input buffer is full
output wire [(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0] input_feature_maps     //input_feature_maps sent to data_preprocessing_unit
);
reg [31:0] buffer [0: (INPUT_WIDTH*INPUT_HEIGHT)];                        //buffer to store all the inputs(each input is 32 bits)
reg [(INPUT_WIDTH*INPUT_HEIGHT)-1:0] write_address;                       //address locations for the buffer
reg [(WIDTH-1):0] shift_data;                                             //used to shift data inside shift_register
reg [((WIDTH*INPUT_WIDTH*INPUT_HEIGHT)+WIDTH)-1:0] shift_register;         //accumulates data_in from axi_interface
reg [((WIDTH*INPUT_WIDTH*INPUT_HEIGHT))-1:0] feature_map_register;         //represents all the inputs
reg [(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0] counter;                        //used to check if buffer is full
reg reg_input_buffer_ready;
reg [18:0] i;
initial
begin 
reg_input_buffer_ready <=0;
end
 
always @(posedge clk) begin                                                  // Reset logic
        if (reset) begin
            write_address <= 0;
            shift_data <=0;
            shift_register <=0;
            counter <=0;
            reg_input_buffer_ready <=0;
            for ( i = 0; i < (INPUT_WIDTH*INPUT_HEIGHT); i = i + 1) begin
                    buffer[i] <= 32'b0;
            end
        end else begin
            if (write_enable) begin                                          // Write data into buffer when write_enable is high
                        if (counter < ((INPUT_WIDTH*INPUT_HEIGHT))) begin
                                buffer[write_address] <= data_in; 
                                write_address <= write_address + 1;          //write_address is updated
                                shift_data <= data_in[(WIDTH-1):0];  //the (WIDTH-1) no. of  bits are selected from 32 bits
                                shift_register <= {shift_data, shift_register[((WIDTH*INPUT_WIDTH*INPUT_HEIGHT)+WIDTH)-(WIDTH+1):WIDTH]};    //the value is shifted into shift_register
                                counter <= counter + 1;
                        end  else begin          //executing else statement when the input buffer is full
                                reg_input_buffer_ready <=1; 
                                feature_map_register <= shift_register[(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0];     //transferring from shift_register to feature_maps_register                      
                        end
             end
        end
end

assign input_feature_maps = feature_map_register;
assign input_buffer_ready = reg_input_buffer_ready;
    
endmodule


