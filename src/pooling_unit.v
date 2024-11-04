`timescale 10ns / 1ns

//Set parameter POOLING=1 for max pooling and POOLING=2 for average pooling
module pooling_unit #(parameter WIDTH =4,INPUT_WIDTH = 9, INPUT_HEIGHT = 9,KERNEL_SIZE = 3,WEIGHT_HEIGHT = 3,WEIGHT_WIDTH = 3,PADDING_SIZE=0,STRIDE=1, batch_size = ((((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*9)-1)/81),POOLING=2)(
input wire clk,
input wire reset,                         
input wire output_buffer_enable,
input wire [(WIDTH*3)-1 :0]final_output_1,                
input wire [(WIDTH*3)-1:0] final_output_2,
input wire [(WIDTH*3)-1:0] final_output_3,
input wire [(WIDTH*3)-1:0] final_output_4,
input wire [(WIDTH*3)-1:0] final_output_5,
input wire [(WIDTH*3)-1:0] final_output_6,
input wire [(WIDTH*3)-1:0] final_output_7,
input wire [(WIDTH*3)-1:0] final_output_8,
input wire [(WIDTH*3)-1:0] final_output_9     
);

// storage_unit used to store output feature map elements
reg [(WIDTH*3)-1:0] storage_unit [0:((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))-1)]; 
reg [(INPUT_WIDTH*INPUT_HEIGHT)-1:0] j;  //counter for storage_unit
reg [18:0] k;                            //additional counter to store input final_output_x in storage_unit
reg [18:0] l;                            //counter for pooling_matrix
reg [18:0] i;                            //loop counter to display pooling results
reg [18:0] output_counter;               //output counter to track output
reg [18:0] row_counter = 0;              //counter to track rows during pooling
reg [18:0] col_counter = 0;              //counter to track columns during pooling
reg [(WIDTH*3)-1:0] max_value;          //register to store maximum value of 4 output feature map elements
reg [(WIDTH*3)-1:0] avg_value;          //register to store average value of 4 output feature map elements
reg [(WIDTH*3)-1:0] pooling_matrix [0:((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE)-1)*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE)-1)-1)];
// pooling_matrix used to store pooling results
   
always @(posedge clk) begin          
    if(reset) begin                     //Reset condition to initialize registers
        for ( j = 0; j < ((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))); j = j + 1) begin
          storage_unit[j] = 0;
        end
        k <= 18'b0;
        l <= 18'b0;
        i <= 18'b0;
        max_value <=0;
        avg_value <=0;
        output_counter <= 18'b0;
        row_counter <= 18'b0;
        col_counter <=18'b0;
    end
    if(output_buffer_enable) begin                   //when output buffer is enabled,the outputs are stored in storage_unit
             if(output_counter == 18'b0) begin       //storage starts at intial condition of output_counter=0    
                    storage_unit[k]   <= final_output_1;
                    storage_unit[k+1] <= final_output_2;
                    storage_unit[k+2] <= final_output_3;
                    storage_unit[k+3] <= final_output_4;
                    storage_unit[k+4] <= final_output_5;
                    storage_unit[k+5] <= final_output_6;
                    storage_unit[k+6] <= final_output_7;
                    storage_unit[k+7] <= final_output_8;
                    storage_unit[k+8] <= final_output_9;
                
                    k <= k + 9;                      // Update counter to store the next iteration of values
             end
                    output_counter<= output_counter +1;
                    if(output_counter == 18'h78) begin         //waiting for 120 clock cycles for next output
                          output_counter <= 18'b0;            //output buffer is set to 0 to receive next batch of values
                    end
   end
   
    if(k > ((batch_size+1)*9)) begin      //pooling starts only when storage_unit is filled with all the output feature map elements
             if (col_counter == (((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE)-1)) begin         //column counter less than (Output feature map width -1)
                     if (row_counter == (((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE)-1)) begin //row counter less than (Output feature map height-1)
                                   if( POOLING == 1) begin  
                                        $display("Max Pooling was selected"); 
                                   end
                                   if( POOLING == 2) begin  
                                        $display("Average Pooling was selected"); 
                                   end    
                                   $display("Results of Pooling are");
                                   for (i = 0; i < ((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE)-1)*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE)-1)-1); i = i + 1) begin
                                        $write("%d ", pooling_matrix[i]);                                   //displaying pooling results
                                        if ((i + 1) % 9 == 0) begin
                                             $write("\n"); 
                                        end
                                        k <= 18'b0;
                                   end
                    end else begin
                                   row_counter <= row_counter + 1;   //row counter incremented and column counter set to 0 when pooling of one row is finished
                                   col_counter <= 18'b0;
                    end
           end else begin 
                    if( POOLING == 1) begin     
                            max_value = storage_unit[col_counter*4]; //maximum value among 4 elements of the output feature maps is calculated
                            if (storage_unit[col_counter*4+1] > max_value) begin
                                max_value = storage_unit[col_counter*4+1];
                            end
                            if (storage_unit[col_counter*4+2] > max_value) begin
                                max_value = storage_unit[col_counter*4+2];
                            end
                            if (storage_unit[col_counter*4+3] > max_value) begin
                                max_value = storage_unit[col_counter*4+3];
                            end
                            pooling_matrix[l] <= max_value;        //calculated maximum value is stored in the pooling_matrix
                            l<=l+1;
                            col_counter <= col_counter + 1;        //column counter is iterated for next 4 sets of values
                    end        
                    if( POOLING == 2) begin                         //average value among 4 elements of the output feature maps is calculated
                            avg_value = ((storage_unit[col_counter*4]+storage_unit[col_counter*4+1]+storage_unit[col_counter*4+2]+storage_unit[col_counter*4+3])/4);
                            pooling_matrix[l] <= avg_value;        //calculated average value is stored in the pooling_matrix
                            l<=l+1;
                            col_counter <= col_counter + 1;        //column counter is iterated for next 4 sets of values
                    end
          end  
     end
end

endmodule

