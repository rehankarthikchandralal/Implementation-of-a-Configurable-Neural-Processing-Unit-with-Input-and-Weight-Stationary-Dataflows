`timescale 10ns / 1ns

module output_buffer #(parameter WIDTH =4,INPUT_WIDTH = 9, INPUT_HEIGHT = 9,KERNEL_SIZE = 3,WEIGHT_HEIGHT = 3,WEIGHT_WIDTH = 3,PADDING_SIZE=0,STRIDE=1, batch_size = ((((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*9)-1)/81))(
input wire clk,
input wire reset,                         
input wire output_buffer_enable,                           //enable signal for output buffer
input wire [(WIDTH*3)-1 :0] final_output_1,                //9 final outputs of 9*9 PE array
input wire [(WIDTH*3)-1:0] final_output_2,
input wire [(WIDTH*3)-1:0] final_output_3,
input wire [(WIDTH*3)-1:0] final_output_4,
input wire [(WIDTH*3)-1:0] final_output_5,
input wire [(WIDTH*3)-1:0] final_output_6,
input wire [(WIDTH*3)-1:0] final_output_7,
input wire [(WIDTH*3)-1:0] final_output_8,
input wire [(WIDTH*3)-1:0] final_output_9,
output wire [31:0] output_buffer_data ,                   //output data sent to axi_interface
output wire output_buffer_ready                           //output ready signal sent to axi_interface
);

// storage_unit used to store output feature map elements
reg [(WIDTH*3)-1:0] storage_unit [0:((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))-1)]; 
reg [(INPUT_WIDTH*INPUT_HEIGHT)-1:0] j;                     //counter for storage_unit
reg [18:0] k;                                               //additional counter to store input final_output_x in storage_unit
reg [18:0] l;                                               //additional counter to check if storage_unit is filled
reg [18:0] output_counter;                                  //output counter to track output
reg reg_output_buffer_ready;                                //becomes high when buffer is filled
reg [31:0] reg_output_buffer_data;                          //represents one element of output feature map (32 bit)

    
always @(posedge clk) begin
    if(reset) begin                                         //Reset condition to initialize registers
            for ( j = 0; j < ((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))); j = j + 1) begin
              storage_unit[j] = 0;
            end
    k <= 18'b0;
    l <= 18'b0;
    output_counter <= 18'b0;
    reg_output_buffer_ready <= 1'b0;
    reg_output_buffer_data <= 32'b0;
    end
    if(output_buffer_enable) begin                          //when output buffer is enabled,the outputs are stored in storage_unit
             if(output_counter == 18'b0) begin              //storage starts at intial condition of output_counter=0
                        storage_unit[k]   <= final_output_1;
                        storage_unit[k+1] <= final_output_2;
                        storage_unit[k+2] <= final_output_3;
                        storage_unit[k+3] <= final_output_4;
                        storage_unit[k+4] <= final_output_5;
                        storage_unit[k+5] <= final_output_6;
                        storage_unit[k+6] <= final_output_7;
                        storage_unit[k+7] <= final_output_8;
                        storage_unit[k+8] <= final_output_9;
                
                        k <= k + 9;                          // Update counter to store the next iteration of values
             end
            output_counter<= output_counter +1;
            if(output_counter == 18'h78) begin               //waiting for 120 clock cycles for next output
                        output_counter <= 18'b0;             //output buffer is set to 0 to receive next batch of values
            end
    end
    
    if(k > ((batch_size+1)*9)) begin  //Output buffer is filled and ready to stream data
             reg_output_buffer_ready <= 1'b1;  
             k <= 18'b0;
    end
    if(reg_output_buffer_ready == 1'b1) begin
             reg_output_buffer_data <= storage_unit[l];  //value in storage_unit is transferred to reg_output_buffer_data
             l <= l+1;
            if(l > ((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))))begin
                l<= 1'b0;                               //Output buffer processing is finished
            end
    end
end
    
assign output_buffer_ready=reg_output_buffer_ready;
assign output_buffer_data = reg_output_buffer_data;

endmodule


