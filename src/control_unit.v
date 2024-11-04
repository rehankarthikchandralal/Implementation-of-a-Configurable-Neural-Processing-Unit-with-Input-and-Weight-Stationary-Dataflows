`timescale 10ns / 1ns

module control_unit #(parameter  IDLE = 1'b0,PROCESSING = 1'b1)(
input wire clk,                           
input wire reset,                         
input wire input_buffer_ready,     
input wire weight_buffer_ready,
input wire index_buffer_ready,
input wire [31:0] control_signal,
output wire pe_array_enable ,
output wire data_preprocessing_unit_enable,
output wire output_buffer_enable
);


reg reg_pe_array_enable;
reg reg_data_preprocessing_unit_enable;
reg reg_output_buffer_enable;
reg [15:0] counter=18'h0;            //counter to count number of cycles npu is in PROCESSING state
reg [15:0] counter_2=16'h0;          //counter to enable output buffer after 17 cycles of pe array operation
reg [1:0] fsm_state, next_state;     // FSM is moore machine

initial begin
 fsm_state <= IDLE;
 next_state <= IDLE;
 end
always @(posedge clk) begin           // FSM = State Transition Section
    if (reset) begin                  // Reset state and control signals on reset  
        reg_pe_array_enable <= 1'b0;
        reg_data_preprocessing_unit_enable <= 1'b0;
        reg_output_buffer_enable <= 1'b0;
        counter <= 18'h0;
        counter_2 <= 16'h0;
        next_state <= IDLE;
    end else begin
            case (fsm_state)
              IDLE: begin    
                            if (counter < 18'h186a0) begin      // Transition to PROCESSING state when control signal is valid and all buffers are ready
                                if ((control_signal==32'd0) || (control_signal==32'd1) || (control_signal==32'd2) ||(control_signal==32'd3 ) ) begin  
                                    if (input_buffer_ready && weight_buffer_ready && index_buffer_ready) begin   // Checking if all buffers are ready
                                      next_state <= PROCESSING;
                                       reg_pe_array_enable <= 1'b1;                                              //activating pe array for PROCESSING    
                                       reg_data_preprocessing_unit_enable <= 1'b1;                               ////activating data pre-processing unit for PROCESSING
                                    end
                                end 
                            end else begin            // Remain in IDLE state
                                next_state <= IDLE;
                                reg_pe_array_enable <= 1'b0;                      //further processing elements are deactivated
                                reg_data_preprocessing_unit_enable <= 1'b0;
                                reg_output_buffer_enable <= 1'b0;
                            end 
                    end
                    
       PROCESSING: begin  
                           counter <= counter + 1; 
                           if (counter == 18'h186a0) begin   // NPU will be in PROCESSING state for 100,000 clock cycles and then becomes IDLE
                                next_state <= IDLE;
                           end                  
                   end
            endcase
    end
  
    if(reg_pe_array_enable == 1'b1) begin
       counter_2 <= counter_2 +1;
       if(counter_2 > 16'h11) begin   //output buffer is enabled 17 cycles after pe array is enabled [pe array takes 17 cycles to produce output]
            reg_output_buffer_enable <= 1'b1;
       end
    end
end

always @(posedge clk) begin         
  if (reset) begin
    fsm_state <= IDLE;
  end else begin
    fsm_state <= next_state;   // Update state on rising edge of clock
  end
end

//enable signals for pe_array,data_preprocessing_unit and output_buffer are assigned
assign pe_array_enable =  reg_pe_array_enable;
assign data_preprocessing_unit_enable= reg_data_preprocessing_unit_enable;
assign output_buffer_enable = reg_output_buffer_enable;

endmodule

