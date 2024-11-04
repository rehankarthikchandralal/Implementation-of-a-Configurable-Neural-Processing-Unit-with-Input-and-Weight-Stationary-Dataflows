`timescale 10ns / 1ns

module index_buffer 
(
input wire clk,
input wire reset,
input wire [31:0] data_in,                      //input from axi interface
input wire write_enable,
output wire index_buffer_ready,                 //becomes high when index buffer is full
output wire [6:0] index_1,                     //81 indexes send to data preprocessing unit          
output wire [6:0] index_2,
output wire [6:0] index_3,
output wire [6:0] index_4,
output wire [6:0] index_5,
output wire [6:0] index_6,
output wire [6:0] index_7,
output wire [6:0] index_8,
output wire [6:0] index_9,
output wire [6:0] index_10,
output wire [6:0] index_11,
output wire [6:0] index_12,
output wire [6:0] index_13,
output wire [6:0] index_14,
output wire [6:0] index_15,
output wire [6:0] index_16,
output wire [6:0] index_17,
output wire [6:0] index_18,
output wire [6:0] index_19,
output wire [6:0] index_20,
output wire [6:0] index_21,
output wire [6:0] index_22,
output wire [6:0] index_23,
output wire [6:0] index_24,
output wire [6:0] index_25,
output wire [6:0] index_26,
output wire [6:0] index_27,
output wire [6:0] index_28,
output wire [6:0] index_29,
output wire [6:0] index_30,
output wire [6:0] index_31,
output wire [6:0] index_32,
output wire [6:0] index_33,
output wire [6:0] index_34,
output wire [6:0] index_35,
output wire [6:0] index_36,
output wire [6:0] index_37,
output wire [6:0] index_38,
output wire [6:0] index_39,
output wire [6:0] index_40,
output wire [6:0] index_41,
output wire [6:0] index_42,
output wire [6:0] index_43,
output wire [6:0] index_44,
output wire [6:0] index_45,
output wire [6:0] index_46,
output wire [6:0] index_47,
output wire [6:0] index_48,
output wire [6:0] index_49,
output wire [6:0] index_50,
output wire [6:0] index_51,
output wire [6:0] index_52,
output wire [6:0] index_53,
output wire [6:0] index_54,
output wire [6:0] index_55,
output wire [6:0] index_56,
output wire [6:0] index_57,
output wire [6:0] index_58,
output wire [6:0] index_59,
output wire [6:0] index_60,
output wire [6:0] index_61,
output wire [6:0] index_62,
output wire [6:0] index_63,
output wire [6:0] index_64,
output wire [6:0] index_65,
output wire [6:0] index_66,
output wire [6:0] index_67,
output wire [6:0] index_68,
output wire [6:0] index_69,
output wire [6:0] index_70,
output wire [6:0] index_71,
output wire [6:0] index_72,
output wire [6:0] index_73,
output wire [6:0] index_74,
output wire [6:0] index_75,
output wire [6:0] index_76,
output wire [6:0] index_77,
output wire [6:0] index_78,
output wire [6:0] index_79,
output wire [6:0] index_80,
output wire [6:0] index_81
);

  
reg [6:0] index_counter;               // Register to store current index
reg [11:0] i;
reg [6:0] stored_data [0:80];        // Array to store past data_in values
reg reg_index_buffer_ready;
initial
begin 
    reg_index_buffer_ready <=0;
end
 
always @(posedge clk) begin   
    if (reset) begin                // Reset logic for index and stored data
          index_counter <= 0;
          reg_index_buffer_ready <=0;
      for ( i = 0; i <= 80; i = i + 1) begin
          stored_data[i] <= 0;
      end
    end else begin
          if (write_enable) begin    
                    if (index_counter < 81) begin
                                stored_data[index_counter] <= data_in [6:0];      //depending on index counter,data_in from axi_interface is stored in stored_data
                                index_counter <=  index_counter + 1;              //index counter is incremented
                    end 
                    if (index_counter == 81) begin                               //index buffer is full 
                                reg_index_buffer_ready <= 1;
                    end
          end
    end
end
// Assign stored data based on counter
assign index_1  = stored_data[0];
assign index_2  = stored_data[1];
assign index_3  = stored_data[2];
assign index_4  = stored_data[3];
assign index_5  = stored_data[4];
assign index_6  = stored_data[5];
assign index_7  = stored_data[6];
assign index_8  = stored_data[7];
assign index_9  = stored_data[8];
assign index_10 = stored_data[9];
assign index_11 = stored_data[10];
assign index_12 = stored_data[11];
assign index_13 = stored_data[12];
assign index_14 = stored_data[13];
assign index_15 = stored_data[14];
assign index_16 = stored_data[15];
assign index_17 = stored_data[16];
assign index_18 = stored_data[17];
assign index_19 = stored_data[18];
assign index_20 = stored_data[19];
assign index_21 = stored_data[20];
assign index_22 = stored_data[21];
assign index_23 = stored_data[22];
assign index_24 = stored_data[23];
assign index_25 = stored_data[24];
assign index_26 = stored_data[25];
assign index_27 = stored_data[26];
assign index_28 = stored_data[27];
assign index_29 = stored_data[28];
assign index_30 = stored_data[29];
assign index_31 = stored_data[30];
assign index_32 = stored_data[31];
assign index_33 = stored_data[32];
assign index_34 = stored_data[33];
assign index_35 = stored_data[34];
assign index_36 = stored_data[35];
assign index_37 = stored_data[36];
assign index_38 = stored_data[37];
assign index_39 = stored_data[38];
assign index_40 = stored_data[39];
assign index_41 = stored_data[40];
assign index_42 = stored_data[41];
assign index_43 = stored_data[42];
assign index_44 = stored_data[43];
assign index_45 = stored_data[44];
assign index_46 = stored_data[45];
assign index_47 = stored_data[46];
assign index_48 = stored_data[47];
assign index_49 = stored_data[48];
assign index_50 = stored_data[49];
assign index_51 = stored_data[50];
assign index_52 = stored_data[51];
assign index_53 = stored_data[52];
assign index_54 = stored_data[53];
assign index_55 = stored_data[54];
assign index_56 = stored_data[55];
assign index_57 = stored_data[56];
assign index_58 = stored_data[57];
assign index_59 = stored_data[58];
assign index_60 = stored_data[59];
assign index_61 = stored_data[60];
assign index_62 = stored_data[61];
assign index_63 = stored_data[62];
assign index_64 = stored_data[63];
assign index_65 = stored_data[64];
assign index_66 = stored_data[65];
assign index_67 = stored_data[66];
assign index_68 = stored_data[67];
assign index_69 = stored_data[68];
assign index_70 = stored_data[69];
assign index_71 = stored_data[70];
assign index_72 = stored_data[71];
assign index_73 = stored_data[72];
assign index_74 = stored_data[73];
assign index_75 = stored_data[74];
assign index_76 = stored_data[75];
assign index_77 = stored_data[76];
assign index_78 = stored_data[77];
assign index_79 = stored_data[78];
assign index_80 = stored_data[79];
assign index_81 = stored_data[80];
  
assign index_buffer_ready=reg_index_buffer_ready;

endmodule

