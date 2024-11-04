`timescale 10ns / 1ns

// npu should be set as the top module
module npu #(parameter WIDTH =4,INPUT_WIDTH = 9, INPUT_HEIGHT = 9,KERNEL_SIZE = 3,WEIGHT_HEIGHT = 3,WEIGHT_WIDTH = 3,PADDING_SIZE=0,STRIDE=1, batch_size = ((((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*9)-1)/81))(
input wire clk,                           // Clock signal
input wire reset,                         // Reset signal
input wire [31:0] axi_input_data,         // AXI input data
input wire [31:0] axi_input_handshake,              
input wire [31:0] control_signal,          //control signal to select Weight/Input stationary dataflow
output wire [31:0] axi_output_data,       // AXI output data
output wire [31:0] axi_output_handshake
    );
    
wire [(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0] intermediate_input_feature_maps;
wire [(WIDTH*WEIGHT_HEIGHT*WEIGHT_WIDTH)-1:0] intermediate_weights;
wire [WIDTH-1:0] intermediate_stationary_signal_1;  
wire [WIDTH-1:0] intermediate_stationary_signal_2;
wire [WIDTH-1:0] intermediate_stationary_signal_3;
wire [WIDTH-1:0] intermediate_stationary_signal_4;
wire [WIDTH-1:0] intermediate_stationary_signal_5;
wire [WIDTH-1:0] intermediate_stationary_signal_6;
wire [WIDTH-1:0] intermediate_stationary_signal_7;
wire [WIDTH-1:0] intermediate_stationary_signal_8;
wire [WIDTH-1:0] intermediate_stationary_signal_9;
wire [WIDTH-1:0] intermediate_stationary_signal_10;
wire [WIDTH-1:0] intermediate_stationary_signal_11;
wire [WIDTH-1:0] intermediate_stationary_signal_12;
wire [WIDTH-1:0] intermediate_stationary_signal_13;
wire [WIDTH-1:0] intermediate_stationary_signal_14;
wire [WIDTH-1:0] intermediate_stationary_signal_15;
wire [WIDTH-1:0] intermediate_stationary_signal_16;
wire [WIDTH-1:0] intermediate_stationary_signal_17;
wire [WIDTH-1:0] intermediate_stationary_signal_18;
wire [WIDTH-1:0] intermediate_stationary_signal_19;
wire [WIDTH-1:0] intermediate_stationary_signal_20;
wire [WIDTH-1:0] intermediate_stationary_signal_21;
wire [WIDTH-1:0] intermediate_stationary_signal_22;
wire [WIDTH-1:0] intermediate_stationary_signal_23;
wire [WIDTH-1:0] intermediate_stationary_signal_24;
wire [WIDTH-1:0] intermediate_stationary_signal_25;
wire [WIDTH-1:0] intermediate_stationary_signal_26;
wire [WIDTH-1:0] intermediate_stationary_signal_27;
wire [WIDTH-1:0] intermediate_stationary_signal_28;
wire [WIDTH-1:0] intermediate_stationary_signal_29;
wire [WIDTH-1:0] intermediate_stationary_signal_30;
wire [WIDTH-1:0] intermediate_stationary_signal_31;
wire [WIDTH-1:0] intermediate_stationary_signal_32;
wire [WIDTH-1:0] intermediate_stationary_signal_33;
wire [WIDTH-1:0] intermediate_stationary_signal_34;
wire [WIDTH-1:0] intermediate_stationary_signal_35;
wire [WIDTH-1:0] intermediate_stationary_signal_36;
wire [WIDTH-1:0] intermediate_stationary_signal_37;
wire [WIDTH-1:0] intermediate_stationary_signal_38;
wire [WIDTH-1:0] intermediate_stationary_signal_39;
wire [WIDTH-1:0] intermediate_stationary_signal_40;
wire [WIDTH-1:0] intermediate_stationary_signal_41;
wire [WIDTH-1:0] intermediate_stationary_signal_42;
wire [WIDTH-1:0] intermediate_stationary_signal_43;
wire [WIDTH-1:0] intermediate_stationary_signal_44;
wire [WIDTH-1:0] intermediate_stationary_signal_45;
wire [WIDTH-1:0] intermediate_stationary_signal_46;
wire [WIDTH-1:0] intermediate_stationary_signal_47;
wire [WIDTH-1:0] intermediate_stationary_signal_48;
wire [WIDTH-1:0] intermediate_stationary_signal_49;
wire [WIDTH-1:0] intermediate_stationary_signal_50;
wire [WIDTH-1:0] intermediate_stationary_signal_51;
wire [WIDTH-1:0] intermediate_stationary_signal_52;
wire [WIDTH-1:0] intermediate_stationary_signal_53;
wire [WIDTH-1:0] intermediate_stationary_signal_54;
wire [WIDTH-1:0] intermediate_stationary_signal_55;
wire [WIDTH-1:0] intermediate_stationary_signal_56;
wire [WIDTH-1:0] intermediate_stationary_signal_57;
wire [WIDTH-1:0] intermediate_stationary_signal_58;
wire [WIDTH-1:0] intermediate_stationary_signal_59;
wire [WIDTH-1:0] intermediate_stationary_signal_60;
wire [WIDTH-1:0] intermediate_stationary_signal_61;
wire [WIDTH-1:0] intermediate_stationary_signal_62;
wire [WIDTH-1:0] intermediate_stationary_signal_63;
wire [WIDTH-1:0] intermediate_stationary_signal_64;
wire [WIDTH-1:0] intermediate_stationary_signal_65;         
wire [WIDTH-1:0] intermediate_stationary_signal_66;
wire [WIDTH-1:0] intermediate_stationary_signal_67;
wire [WIDTH-1:0] intermediate_stationary_signal_68;
wire [WIDTH-1:0] intermediate_stationary_signal_69;
wire [WIDTH-1:0] intermediate_stationary_signal_70;
wire [WIDTH-1:0] intermediate_stationary_signal_71;
wire [WIDTH-1:0] intermediate_stationary_signal_72;
wire [WIDTH-1:0] intermediate_stationary_signal_73;
wire [WIDTH-1:0] intermediate_stationary_signal_74;
wire [WIDTH-1:0] intermediate_stationary_signal_75;
wire [WIDTH-1:0] intermediate_stationary_signal_76;
wire [WIDTH-1:0] intermediate_stationary_signal_77;
wire [WIDTH-1:0] intermediate_stationary_signal_78;
wire [WIDTH-1:0] intermediate_stationary_signal_79;
wire [WIDTH-1:0] intermediate_stationary_signal_80;
wire [WIDTH-1:0] intermediate_stationary_signal_81;
wire [WIDTH-1:0] intermediate_sw_input_1;           
wire [WIDTH-1:0] intermediate_sw_input_2;
wire [WIDTH-1:0] intermediate_sw_input_3;
wire [WIDTH-1:0] intermediate_sw_input_4;
wire [WIDTH-1:0] intermediate_sw_input_5;
wire [WIDTH-1:0] intermediate_sw_input_6;
wire [WIDTH-1:0] intermediate_sw_input_7;
wire [WIDTH-1:0] intermediate_sw_input_8;
wire [WIDTH-1:0] intermediate_sw_input_9;
wire [WIDTH-1:0] intermediate_sw_input_10;
wire [WIDTH-1:0] intermediate_sw_input_11;
wire [WIDTH-1:0] intermediate_sw_input_12;
wire [WIDTH-1:0] intermediate_sw_input_13;
wire [WIDTH-1:0] intermediate_sw_input_14;
wire [WIDTH-1:0] intermediate_sw_input_15;
wire [WIDTH-1:0] intermediate_sw_input_16;
wire [WIDTH-1:0] intermediate_sw_input_17;
wire [WIDTH-1:0] intermediate_sw_input_18;
wire [WIDTH-1:0] intermediate_sw_input_19;
wire [WIDTH-1:0] intermediate_sw_input_20;
wire [WIDTH-1:0] intermediate_sw_input_21;
wire [WIDTH-1:0] intermediate_sw_input_22;
wire [WIDTH-1:0] intermediate_sw_input_23;
wire [WIDTH-1:0] intermediate_sw_input_24;
wire [WIDTH-1:0] intermediate_sw_input_25;
wire [WIDTH-1:0] intermediate_sw_input_26;
wire [WIDTH-1:0] intermediate_sw_input_27;
wire [WIDTH-1:0] intermediate_sw_input_28;
wire [WIDTH-1:0] intermediate_sw_input_29;
wire [WIDTH-1:0] intermediate_sw_input_30;
wire [WIDTH-1:0] intermediate_sw_input_31;
wire [WIDTH-1:0] intermediate_sw_input_32;
wire [WIDTH-1:0] intermediate_sw_input_33;
wire [WIDTH-1:0] intermediate_sw_input_34;
wire [WIDTH-1:0] intermediate_sw_input_35;
wire [WIDTH-1:0] intermediate_sw_input_36;
wire [WIDTH-1:0] intermediate_sw_input_37;
wire [WIDTH-1:0] intermediate_sw_input_38;
wire [WIDTH-1:0] intermediate_sw_input_39;
wire [WIDTH-1:0] intermediate_sw_input_40;
wire [WIDTH-1:0] intermediate_sw_input_41;
wire [WIDTH-1:0] intermediate_sw_input_42;
wire [WIDTH-1:0] intermediate_sw_input_43;
wire [WIDTH-1:0] intermediate_sw_input_44;
wire [WIDTH-1:0] intermediate_sw_input_45;
wire [WIDTH-1:0] intermediate_sw_input_46;
wire [WIDTH-1:0] intermediate_sw_input_47;
wire [WIDTH-1:0] intermediate_sw_input_48;
wire [WIDTH-1:0] intermediate_sw_input_49;
wire [WIDTH-1:0] intermediate_sw_input_50;
wire [WIDTH-1:0] intermediate_sw_input_51;
wire [WIDTH-1:0] intermediate_sw_input_52;
wire [WIDTH-1:0] intermediate_sw_input_53;
wire [WIDTH-1:0] intermediate_sw_input_54;
wire [WIDTH-1:0] intermediate_sw_input_55;
wire [WIDTH-1:0] intermediate_sw_input_56;
wire [WIDTH-1:0] intermediate_sw_input_57;
wire [WIDTH-1:0] intermediate_sw_input_58;
wire [WIDTH-1:0] intermediate_sw_input_59;
wire [WIDTH-1:0] intermediate_sw_input_60;
wire [WIDTH-1:0] intermediate_sw_input_61;
wire [WIDTH-1:0] intermediate_sw_input_62;
wire [WIDTH-1:0] intermediate_sw_input_63;
wire [WIDTH-1:0] intermediate_sw_input_64;
wire [WIDTH-1:0] intermediate_sw_input_65;          
wire [WIDTH-1:0] intermediate_sw_input_66;
wire [WIDTH-1:0] intermediate_sw_input_67;
wire [WIDTH-1:0] intermediate_sw_input_68;
wire [WIDTH-1:0] intermediate_sw_input_69;
wire [WIDTH-1:0] intermediate_sw_input_70;
wire [WIDTH-1:0] intermediate_sw_input_71;
wire [WIDTH-1:0] intermediate_sw_input_72;
wire [WIDTH-1:0] intermediate_sw_input_73;
wire [WIDTH-1:0] intermediate_sw_input_74;
wire [WIDTH-1:0] intermediate_sw_input_75;
wire [WIDTH-1:0] intermediate_sw_input_76;
wire [WIDTH-1:0] intermediate_sw_input_77;
wire [WIDTH-1:0] intermediate_sw_input_78;
wire [WIDTH-1:0] intermediate_sw_input_79;
wire [WIDTH-1:0] intermediate_sw_input_80;
wire [WIDTH-1:0] intermediate_sw_input_81;
wire [WIDTH-1:0] intermediate_sw_output_1;           
wire [WIDTH-1:0] intermediate_sw_output_2;
wire [WIDTH-1:0] intermediate_sw_output_3;
wire [WIDTH-1:0] intermediate_sw_output_4;
wire [WIDTH-1:0] intermediate_sw_output_5;
wire [WIDTH-1:0] intermediate_sw_output_6;
wire [WIDTH-1:0] intermediate_sw_output_7;
wire [WIDTH-1:0] intermediate_sw_output_8;
wire [WIDTH-1:0] intermediate_sw_output_9;
wire [WIDTH-1:0] intermediate_sw_output_10;
wire [WIDTH-1:0] intermediate_sw_output_11;
wire [WIDTH-1:0] intermediate_sw_output_12;
wire [WIDTH-1:0] intermediate_sw_output_13;
wire [WIDTH-1:0] intermediate_sw_output_14;
wire [WIDTH-1:0] intermediate_sw_output_15;
wire [WIDTH-1:0] intermediate_sw_output_16;
wire [WIDTH-1:0] intermediate_sw_output_17;
wire [WIDTH-1:0] intermediate_sw_output_18;
wire [WIDTH-1:0] intermediate_sw_output_19;
wire [WIDTH-1:0] intermediate_sw_output_20;
wire [WIDTH-1:0] intermediate_sw_output_21;
wire [WIDTH-1:0] intermediate_sw_output_22;
wire [WIDTH-1:0] intermediate_sw_output_23;
wire [WIDTH-1:0] intermediate_sw_output_24;
wire [WIDTH-1:0] intermediate_sw_output_25;
wire [WIDTH-1:0] intermediate_sw_output_26;
wire [WIDTH-1:0] intermediate_sw_output_27;
wire [WIDTH-1:0] intermediate_sw_output_28;
wire [WIDTH-1:0] intermediate_sw_output_29;
wire [WIDTH-1:0] intermediate_sw_output_30;
wire [WIDTH-1:0] intermediate_sw_output_31;
wire [WIDTH-1:0] intermediate_sw_output_32;
wire [WIDTH-1:0] intermediate_sw_output_33;
wire [WIDTH-1:0] intermediate_sw_output_34;
wire [WIDTH-1:0] intermediate_sw_output_35;
wire [WIDTH-1:0] intermediate_sw_output_36;
wire [WIDTH-1:0] intermediate_sw_output_37;
wire [WIDTH-1:0] intermediate_sw_output_38;
wire [WIDTH-1:0] intermediate_sw_output_39;
wire [WIDTH-1:0] intermediate_sw_output_40;
wire [WIDTH-1:0] intermediate_sw_output_41;
wire [WIDTH-1:0] intermediate_sw_output_42;
wire [WIDTH-1:0] intermediate_sw_output_43;
wire [WIDTH-1:0] intermediate_sw_output_44;
wire [WIDTH-1:0] intermediate_sw_output_45;
wire [WIDTH-1:0] intermediate_sw_output_46;
wire [WIDTH-1:0] intermediate_sw_output_47;
wire [WIDTH-1:0] intermediate_sw_output_48;
wire [WIDTH-1:0] intermediate_sw_output_49;
wire [WIDTH-1:0] intermediate_sw_output_50;
wire [WIDTH-1:0] intermediate_sw_output_51;
wire [WIDTH-1:0] intermediate_sw_output_52;
wire [WIDTH-1:0] intermediate_sw_output_53;
wire [WIDTH-1:0] intermediate_sw_output_54;
wire [WIDTH-1:0] intermediate_sw_output_55;
wire [WIDTH-1:0] intermediate_sw_output_56;
wire [WIDTH-1:0] intermediate_sw_output_57;
wire [WIDTH-1:0] intermediate_sw_output_58;
wire [WIDTH-1:0] intermediate_sw_output_59;
wire [WIDTH-1:0] intermediate_sw_output_60;
wire [WIDTH-1:0] intermediate_sw_output_61;
wire [WIDTH-1:0] intermediate_sw_output_62;
wire [WIDTH-1:0] intermediate_sw_output_63;
wire [WIDTH-1:0] intermediate_sw_output_64;
wire [WIDTH-1:0] intermediate_sw_output_65;          
wire [WIDTH-1:0] intermediate_sw_output_66;
wire [WIDTH-1:0] intermediate_sw_output_67;
wire [WIDTH-1:0] intermediate_sw_output_68;
wire [WIDTH-1:0] intermediate_sw_output_69;
wire [WIDTH-1:0] intermediate_sw_output_70;
wire [WIDTH-1:0] intermediate_sw_output_71;
wire [WIDTH-1:0] intermediate_sw_output_72;
wire [WIDTH-1:0] intermediate_sw_output_73;
wire [WIDTH-1:0] intermediate_sw_output_74;
wire [WIDTH-1:0] intermediate_sw_output_75;
wire [WIDTH-1:0] intermediate_sw_output_76;
wire [WIDTH-1:0] intermediate_sw_output_77;
wire [WIDTH-1:0] intermediate_sw_output_78;
wire [WIDTH-1:0] intermediate_sw_output_79;
wire [WIDTH-1:0] intermediate_sw_output_80;
wire [WIDTH-1:0] intermediate_sw_output_81;
wire [WIDTH-1:0] intermediate_sw_output_82;
wire [WIDTH-1:0] intermediate_sw_output_83;
wire [WIDTH-1:0] intermediate_sw_output_84;
wire [WIDTH-1:0] intermediate_sw_output_85;
wire [WIDTH-1:0] intermediate_sw_output_86;
wire [WIDTH-1:0] intermediate_sw_output_87;
wire [WIDTH-1:0] intermediate_sw_output_88;
wire [WIDTH-1:0] intermediate_sw_output_89;
wire [WIDTH-1:0] intermediate_sw_output_90;
wire [WIDTH-1:0] intermediate_sw_output_91;
wire [WIDTH-1:0] intermediate_sw_output_92;
wire [WIDTH-1:0] intermediate_sw_output_93;
wire [WIDTH-1:0] intermediate_sw_output_94;
wire [WIDTH-1:0] intermediate_sw_output_95;
wire [WIDTH-1:0] intermediate_sw_output_96;
wire [WIDTH-1:0] intermediate_sw_output_97;
wire [WIDTH-1:0] intermediate_sw_output_98;
wire [WIDTH-1:0] intermediate_sw_output_99;
wire [WIDTH-1:0] intermediate_sw_output_100;
wire [WIDTH-1:0] intermediate_sw_output_101;
wire [WIDTH-1:0] intermediate_sw_output_102;
wire [WIDTH-1:0] intermediate_sw_output_103;
wire [WIDTH-1:0] intermediate_sw_output_104;
wire [WIDTH-1:0] intermediate_sw_output_105;
wire [WIDTH-1:0] intermediate_sw_output_106;
wire [WIDTH-1:0] intermediate_sw_output_107;
wire [WIDTH-1:0] intermediate_sw_output_108;
wire [WIDTH-1:0] intermediate_sw_output_109;
wire [WIDTH-1:0] intermediate_sw_output_110;
wire [WIDTH-1:0] intermediate_sw_output_111;
wire [WIDTH-1:0] intermediate_sw_output_112;
wire [WIDTH-1:0] intermediate_sw_output_113;
wire [WIDTH-1:0] intermediate_sw_output_114;
wire [WIDTH-1:0] intermediate_sw_output_115;
wire [WIDTH-1:0] intermediate_sw_output_116;
wire [WIDTH-1:0] intermediate_sw_output_117;
wire [WIDTH-1:0] intermediate_sw_output_118;
wire [WIDTH-1:0] intermediate_sw_output_119;
wire [WIDTH-1:0] intermediate_sw_output_120;
wire [WIDTH-1:0] intermediate_sw_output_121;
wire [WIDTH-1:0] intermediate_sw_output_122;
wire [WIDTH-1:0] intermediate_sw_output_123;
wire [WIDTH-1:0] intermediate_sw_output_124;
wire [WIDTH-1:0] intermediate_sw_output_125;
wire [WIDTH-1:0] intermediate_sw_output_126;
wire [WIDTH-1:0] intermediate_sw_output_127;
wire [WIDTH-1:0] intermediate_sw_output_128;
wire [WIDTH-1:0] intermediate_sw_output_129;
wire [WIDTH-1:0] intermediate_sw_output_130;
wire [WIDTH-1:0] intermediate_sw_output_131;
wire [WIDTH-1:0] intermediate_sw_output_132;
wire [WIDTH-1:0] intermediate_sw_output_133;
wire [WIDTH-1:0] intermediate_sw_output_134;
wire [WIDTH-1:0] intermediate_sw_output_135;
wire [WIDTH-1:0] intermediate_sw_output_136;
wire [WIDTH-1:0] intermediate_sw_output_137;
wire [WIDTH-1:0] intermediate_sw_output_138;
wire [WIDTH-1:0] intermediate_sw_output_139;
wire [WIDTH-1:0] intermediate_sw_output_140;
wire [WIDTH-1:0] intermediate_sw_output_141;
wire [WIDTH-1:0] intermediate_sw_output_142;
wire [WIDTH-1:0] intermediate_sw_output_143;
wire [WIDTH-1:0] intermediate_sw_output_144;
wire [WIDTH-1:0] intermediate_sw_output_145;
wire [WIDTH-1:0] intermediate_sw_output_146;
wire [WIDTH-1:0] intermediate_sw_output_147;
wire [WIDTH-1:0] intermediate_sw_output_148;
wire [WIDTH-1:0] intermediate_sw_output_149;
wire [WIDTH-1:0] intermediate_sw_output_150;
wire [WIDTH-1:0] intermediate_sw_output_151;
wire [WIDTH-1:0] intermediate_sw_output_152;
wire [WIDTH-1:0] intermediate_sw_output_153;
wire [WIDTH-1:0] intermediate_sw_output_154;
wire [WIDTH-1:0] intermediate_sw_output_155;
wire [WIDTH-1:0] intermediate_sw_output_156;
wire [WIDTH-1:0] intermediate_sw_output_157;
wire [WIDTH-1:0] intermediate_sw_output_158;
wire [WIDTH-1:0] intermediate_sw_output_159;
wire [WIDTH-1:0] intermediate_sw_output_160;
wire [WIDTH-1:0] intermediate_sw_output_161;
wire [WIDTH-1:0] intermediate_sw_output_162;
wire [(WIDTH*3)-1 :0] intermediate_final_output_1;                
wire [(WIDTH*3)-1:0] intermediate_final_output_2;
wire [(WIDTH*3)-1:0] intermediate_final_output_3;
wire [(WIDTH*3)-1:0] intermediate_final_output_4;
wire [(WIDTH*3)-1:0] intermediate_final_output_5;
wire [(WIDTH*3)-1:0] intermediate_final_output_6;
wire [(WIDTH*3)-1:0] intermediate_final_output_7;
wire [(WIDTH*3)-1:0] intermediate_final_output_8;
wire [(WIDTH*3)-1:0] intermediate_final_output_9;
wire intermediate_pe_array_enable;
wire intermediate_data_preprocessing_unit_enable;
wire intermediate_output_buffer_enable;
wire intermediate_buffer_activate;
wire [31:0] intermediate_output_buffer_data;
wire intermediate_output_buffer_ready;
wire [31:0] intermediate_input_buffer_data;
wire intermediate_input_buffer_write_enable;
wire intermediate_input_buffer_ready;
wire intermediate_weight_buffer_ready;
wire intermediate_index_buffer_ready;
wire [31:0] intermediate_weight_buffer_data;
wire intermediate_weight_buffer_write_enable;
wire [31:0] intermediate_index_buffer_data;
wire intermediate_index_buffer_write_enable;
wire [6:0] intermediate_index_1;                                     
wire [6:0] intermediate_index_2;
wire [6:0] intermediate_index_3;
wire [6:0] intermediate_index_4;
wire [6:0] intermediate_index_5;
wire [6:0] intermediate_index_6;
wire [6:0] intermediate_index_7;
wire [6:0] intermediate_index_8;
wire [6:0] intermediate_index_9;
wire [6:0] intermediate_index_10;
wire [6:0] intermediate_index_11;
wire [6:0] intermediate_index_12;
wire [6:0] intermediate_index_13;
wire [6:0] intermediate_index_14;
wire [6:0] intermediate_index_15;
wire [6:0] intermediate_index_16;
wire [6:0] intermediate_index_17;
wire [6:0] intermediate_index_18;
wire [6:0] intermediate_index_19;
wire [6:0] intermediate_index_20;
wire [6:0] intermediate_index_21;
wire [6:0] intermediate_index_22;
wire [6:0] intermediate_index_23;
wire [6:0] intermediate_index_24;
wire [6:0] intermediate_index_25;
wire [6:0] intermediate_index_26;
wire [6:0] intermediate_index_27;
wire [6:0] intermediate_index_28;
wire [6:0] intermediate_index_29;
wire [6:0] intermediate_index_30;
wire [6:0] intermediate_index_31;
wire [6:0] intermediate_index_32;
wire [6:0] intermediate_index_33;
wire [6:0] intermediate_index_34;
wire [6:0] intermediate_index_35;
wire [6:0] intermediate_index_36;
wire [6:0] intermediate_index_37;
wire [6:0] intermediate_index_38;
wire [6:0] intermediate_index_39;
wire [6:0] intermediate_index_40;
wire [6:0] intermediate_index_41;
wire [6:0] intermediate_index_42;
wire [6:0] intermediate_index_43;
wire [6:0] intermediate_index_44;
wire [6:0] intermediate_index_45;
wire [6:0] intermediate_index_46;
wire [6:0] intermediate_index_47;
wire [6:0] intermediate_index_48;
wire [6:0] intermediate_index_49;
wire [6:0] intermediate_index_50;
wire [6:0] intermediate_index_51;
wire [6:0] intermediate_index_52;
wire [6:0] intermediate_index_53;
wire [6:0] intermediate_index_54;
wire [6:0] intermediate_index_55;
wire [6:0] intermediate_index_56;
wire [6:0] intermediate_index_57;
wire [6:0] intermediate_index_58;
wire [6:0] intermediate_index_59;
wire [6:0] intermediate_index_60;
wire [6:0] intermediate_index_61;
wire [6:0] intermediate_index_62;
wire [6:0] intermediate_index_63;
wire [6:0] intermediate_index_64;
wire [6:0] intermediate_index_65;
wire [6:0] intermediate_index_66;
wire [6:0] intermediate_index_67;
wire [6:0] intermediate_index_68;
wire [6:0] intermediate_index_69;
wire [6:0] intermediate_index_70;
wire [6:0] intermediate_index_71;
wire [6:0] intermediate_index_72;
wire [6:0] intermediate_index_73;
wire [6:0] intermediate_index_74;
wire [6:0] intermediate_index_75;
wire [6:0] intermediate_index_76;
wire [6:0] intermediate_index_77;
wire [6:0] intermediate_index_78;
wire [6:0] intermediate_index_79;
wire [6:0] intermediate_index_80;
wire [6:0] intermediate_index_81;
      
axi_interface axi_inst (
.clk(clk),
.reset(reset),
.axi_input_data(axi_input_data),
.axi_input_handshake(axi_input_handshake),
.input_buffer_ready(intermediate_input_buffer_ready),
.weight_buffer_ready(intermediate_weight_buffer_ready),
.index_buffer_ready(intermediate_index_buffer_ready),
.output_buffer_data(intermediate_output_buffer_data),
.output_buffer_ready(intermediate_output_buffer_ready),
.axi_output_data(axi_output_data),
.axi_output_handshake(axi_output_handshake),
.input_buffer_data(intermediate_input_buffer_data),
.input_buffer_write_enable(intermediate_input_buffer_write_enable),
.weight_buffer_data(intermediate_weight_buffer_data),
.weight_buffer_write_enable(intermediate_weight_buffer_write_enable),
.index_buffer_data(intermediate_index_buffer_data),
.index_buffer_write_enable(intermediate_index_buffer_write_enable)
);
    
input_buffer ib_inst (
.clk(clk),
.reset(reset),
.data_in(intermediate_input_buffer_data),
.write_enable(intermediate_input_buffer_write_enable),
.input_buffer_ready(intermediate_input_buffer_ready),
.input_feature_maps(intermediate_input_feature_maps) 
);
    
weight_buffer weightbuffer_inst (
.clk(clk),
.reset(reset),
.data_in(intermediate_weight_buffer_data),
.write_enable(intermediate_weight_buffer_write_enable),
.weight_buffer_ready(intermediate_weight_buffer_ready),
.weights(intermediate_weights) 
);
        
index_buffer index_buffer_inst (
.clk(clk),
.reset(reset),
.data_in(intermediate_index_buffer_data),
.write_enable(intermediate_index_buffer_write_enable),
.index_buffer_ready(intermediate_index_buffer_ready),
.index_1(intermediate_index_1),          
.index_2(intermediate_index_2),
.index_3(intermediate_index_3),
.index_4(intermediate_index_4),
.index_5(intermediate_index_5),
.index_6(intermediate_index_6),
.index_7(intermediate_index_7),
.index_8(intermediate_index_8),
.index_9(intermediate_index_9),
.index_10(intermediate_index_10),
.index_11(intermediate_index_11),
.index_12(intermediate_index_12),
.index_13(intermediate_index_13),
.index_14(intermediate_index_14),
.index_15(intermediate_index_15),
.index_16(intermediate_index_16),          
.index_17(intermediate_index_17),
.index_18(intermediate_index_18),
.index_19(intermediate_index_19),
.index_20(intermediate_index_20),
.index_21(intermediate_index_21),
.index_22(intermediate_index_22),
.index_23(intermediate_index_23),
.index_24(intermediate_index_24),
.index_25(intermediate_index_25),
.index_26(intermediate_index_26),
.index_27(intermediate_index_27),
.index_28(intermediate_index_28),
.index_29(intermediate_index_29),
.index_30(intermediate_index_30),
.index_31(intermediate_index_31),          
.index_32(intermediate_index_32),
.index_33(intermediate_index_33),
.index_34(intermediate_index_34),
.index_35(intermediate_index_35),
.index_36(intermediate_index_36),
.index_37(intermediate_index_37),
.index_38(intermediate_index_38),
.index_39(intermediate_index_39),
.index_40(intermediate_index_40),
.index_41(intermediate_index_41),
.index_42(intermediate_index_42),
.index_43(intermediate_index_43),
.index_44(intermediate_index_44),
.index_45(intermediate_index_45),
.index_46(intermediate_index_46),          
.index_47(intermediate_index_47),
.index_48(intermediate_index_48),
.index_49(intermediate_index_49),
.index_50(intermediate_index_50),
.index_51(intermediate_index_51),
.index_52(intermediate_index_52),
.index_53(intermediate_index_53),
.index_54(intermediate_index_54),
.index_55(intermediate_index_55),
.index_56(intermediate_index_56),
.index_57(intermediate_index_57),
.index_58(intermediate_index_58),
.index_59(intermediate_index_59),
.index_60(intermediate_index_60),    
.index_61(intermediate_index_61),
.index_62(intermediate_index_62),
.index_63(intermediate_index_63),
.index_64(intermediate_index_64), 
.index_65(intermediate_index_65),
.index_66(intermediate_index_66),
.index_67(intermediate_index_67),
.index_68(intermediate_index_68),
.index_69(intermediate_index_69),
.index_70(intermediate_index_70),
.index_71(intermediate_index_71),
.index_72(intermediate_index_72),
.index_73(intermediate_index_73),
.index_74(intermediate_index_74),    
.index_75(intermediate_index_75),
.index_76(intermediate_index_76),
.index_77(intermediate_index_77),
.index_78(intermediate_index_78), 
.index_79(intermediate_index_79),
.index_80(intermediate_index_80),
.index_81(intermediate_index_81)
 );

data_preprocessing_unit inst_data_preprocessing_unit(
.clk(clk),
.data_preprocessing_unit_enable(intermediate_data_preprocessing_unit_enable), 
.input_feature_maps(intermediate_input_feature_maps),
.weights(intermediate_weights),  
.control_signal(control_signal),                          
.stationary_signal_1(intermediate_stationary_signal_1),
.stationary_signal_2(intermediate_stationary_signal_2),
.stationary_signal_3(intermediate_stationary_signal_3),
.stationary_signal_4(intermediate_stationary_signal_4),
.stationary_signal_5(intermediate_stationary_signal_5),
.stationary_signal_6(intermediate_stationary_signal_6),
.stationary_signal_7(intermediate_stationary_signal_7),
.stationary_signal_8(intermediate_stationary_signal_8),
.stationary_signal_9(intermediate_stationary_signal_9),
.stationary_signal_10(intermediate_stationary_signal_10),
.stationary_signal_11(intermediate_stationary_signal_11),
.stationary_signal_12(intermediate_stationary_signal_12), 
.stationary_signal_13(intermediate_stationary_signal_13),
.stationary_signal_14(intermediate_stationary_signal_14),
.stationary_signal_15(intermediate_stationary_signal_15),
.stationary_signal_16(intermediate_stationary_signal_16),
.stationary_signal_17(intermediate_stationary_signal_17),
.stationary_signal_18(intermediate_stationary_signal_18), 
.stationary_signal_19(intermediate_stationary_signal_19),
.stationary_signal_20(intermediate_stationary_signal_20),
.stationary_signal_21(intermediate_stationary_signal_21),
.stationary_signal_22(intermediate_stationary_signal_22),
.stationary_signal_23(intermediate_stationary_signal_23),
.stationary_signal_24(intermediate_stationary_signal_24), 
.stationary_signal_25(intermediate_stationary_signal_25),
.stationary_signal_26(intermediate_stationary_signal_26),
.stationary_signal_27(intermediate_stationary_signal_27),
.stationary_signal_28(intermediate_stationary_signal_28),
.stationary_signal_29(intermediate_stationary_signal_29),
.stationary_signal_30(intermediate_stationary_signal_30), 
.stationary_signal_31(intermediate_stationary_signal_31),
.stationary_signal_32(intermediate_stationary_signal_32),
.stationary_signal_33(intermediate_stationary_signal_33),
.stationary_signal_34(intermediate_stationary_signal_34),
.stationary_signal_35(intermediate_stationary_signal_35),
.stationary_signal_36(intermediate_stationary_signal_36), 
.stationary_signal_37(intermediate_stationary_signal_37),
.stationary_signal_38(intermediate_stationary_signal_38),
.stationary_signal_39(intermediate_stationary_signal_39),
.stationary_signal_40(intermediate_stationary_signal_40),
.stationary_signal_41(intermediate_stationary_signal_41),
.stationary_signal_42(intermediate_stationary_signal_42), 
.stationary_signal_43(intermediate_stationary_signal_43),
.stationary_signal_44(intermediate_stationary_signal_44),
.stationary_signal_45(intermediate_stationary_signal_45),
.stationary_signal_46(intermediate_stationary_signal_46),
.stationary_signal_47(intermediate_stationary_signal_47),
.stationary_signal_48(intermediate_stationary_signal_48), 
.stationary_signal_49(intermediate_stationary_signal_49),
.stationary_signal_50(intermediate_stationary_signal_50),
.stationary_signal_51(intermediate_stationary_signal_51),
.stationary_signal_52(intermediate_stationary_signal_52),
.stationary_signal_53(intermediate_stationary_signal_53),
.stationary_signal_54(intermediate_stationary_signal_54), 
.stationary_signal_55(intermediate_stationary_signal_55),
.stationary_signal_56(intermediate_stationary_signal_56),
.stationary_signal_57(intermediate_stationary_signal_57),
.stationary_signal_58(intermediate_stationary_signal_58),
.stationary_signal_59(intermediate_stationary_signal_59),
.stationary_signal_60(intermediate_stationary_signal_60), 
.stationary_signal_61(intermediate_stationary_signal_61),
.stationary_signal_62(intermediate_stationary_signal_62),
.stationary_signal_63(intermediate_stationary_signal_63),
.stationary_signal_64(intermediate_stationary_signal_64), 
.stationary_signal_65(intermediate_stationary_signal_65),
.stationary_signal_66(intermediate_stationary_signal_66),
.stationary_signal_67(intermediate_stationary_signal_67),
.stationary_signal_68(intermediate_stationary_signal_68),
.stationary_signal_69(intermediate_stationary_signal_69),
.stationary_signal_70(intermediate_stationary_signal_70), 
.stationary_signal_71(intermediate_stationary_signal_71),
.stationary_signal_72(intermediate_stationary_signal_72),
.stationary_signal_73(intermediate_stationary_signal_73),
.stationary_signal_74(intermediate_stationary_signal_74),
.stationary_signal_75(intermediate_stationary_signal_75),
.stationary_signal_76(intermediate_stationary_signal_76), 
.stationary_signal_77(intermediate_stationary_signal_77),
.stationary_signal_78(intermediate_stationary_signal_78),
.stationary_signal_79(intermediate_stationary_signal_79),
.stationary_signal_80(intermediate_stationary_signal_80), 
.stationary_signal_81(intermediate_stationary_signal_81),
.sw_input_1(intermediate_sw_input_1),
.sw_input_2(intermediate_sw_input_2),
.sw_input_3(intermediate_sw_input_3),
.sw_input_4(intermediate_sw_input_4),
.sw_input_5(intermediate_sw_input_5),
.sw_input_6(intermediate_sw_input_6),
.sw_input_7(intermediate_sw_input_7),
.sw_input_8(intermediate_sw_input_8),
.sw_input_9(intermediate_sw_input_9),
.sw_input_10(intermediate_sw_input_10),
.sw_input_11(intermediate_sw_input_11),
.sw_input_12(intermediate_sw_input_12), 
.sw_input_13(intermediate_sw_input_13),
.sw_input_14(intermediate_sw_input_14),
.sw_input_15(intermediate_sw_input_15),
.sw_input_16(intermediate_sw_input_16),
.sw_input_17(intermediate_sw_input_17),
.sw_input_18(intermediate_sw_input_18), 
.sw_input_19(intermediate_sw_input_19),
.sw_input_20(intermediate_sw_input_20),
.sw_input_21(intermediate_sw_input_21),
.sw_input_22(intermediate_sw_input_22),
.sw_input_23(intermediate_sw_input_23),
.sw_input_24(intermediate_sw_input_24), 
.sw_input_25(intermediate_sw_input_25),
.sw_input_26(intermediate_sw_input_26),
.sw_input_27(intermediate_sw_input_27),
.sw_input_28(intermediate_sw_input_28),
.sw_input_29(intermediate_sw_input_29),
.sw_input_30(intermediate_sw_input_30), 
.sw_input_31(intermediate_sw_input_31),
.sw_input_32(intermediate_sw_input_32),
.sw_input_33(intermediate_sw_input_33),
.sw_input_34(intermediate_sw_input_34),
.sw_input_35(intermediate_sw_input_35),
.sw_input_36(intermediate_sw_input_36), 
.sw_input_37(intermediate_sw_input_37),
.sw_input_38(intermediate_sw_input_38),
.sw_input_39(intermediate_sw_input_39),
.sw_input_40(intermediate_sw_input_40),
.sw_input_41(intermediate_sw_input_41),
.sw_input_42(intermediate_sw_input_42), 
.sw_input_43(intermediate_sw_input_43),
.sw_input_44(intermediate_sw_input_44),
.sw_input_45(intermediate_sw_input_45),
.sw_input_46(intermediate_sw_input_46),
.sw_input_47(intermediate_sw_input_47),
.sw_input_48(intermediate_sw_input_48), 
.sw_input_49(intermediate_sw_input_49),
.sw_input_50(intermediate_sw_input_50),
.sw_input_51(intermediate_sw_input_51),
.sw_input_52(intermediate_sw_input_52),
.sw_input_53(intermediate_sw_input_53),
.sw_input_54(intermediate_sw_input_54), 
.sw_input_55(intermediate_sw_input_55),
.sw_input_56(intermediate_sw_input_56),
.sw_input_57(intermediate_sw_input_57),
.sw_input_58(intermediate_sw_input_58),
.sw_input_59(intermediate_sw_input_59),
.sw_input_60(intermediate_sw_input_60), 
.sw_input_61(intermediate_sw_input_61),
.sw_input_62(intermediate_sw_input_62),
.sw_input_63(intermediate_sw_input_63),
.sw_input_64(intermediate_sw_input_64), 
.sw_input_65(intermediate_sw_input_65),
.sw_input_66(intermediate_sw_input_66),
.sw_input_67(intermediate_sw_input_67),
.sw_input_68(intermediate_sw_input_68),
.sw_input_69(intermediate_sw_input_69),
.sw_input_70(intermediate_sw_input_70), 
.sw_input_71(intermediate_sw_input_71),
.sw_input_72(intermediate_sw_input_72),
.sw_input_73(intermediate_sw_input_73),
.sw_input_74(intermediate_sw_input_74),
.sw_input_75(intermediate_sw_input_75),
.sw_input_76(intermediate_sw_input_76), 
.sw_input_77(intermediate_sw_input_77),
.sw_input_78(intermediate_sw_input_78),
.sw_input_79(intermediate_sw_input_79),
.sw_input_80(intermediate_sw_input_80), 
.sw_input_81(intermediate_sw_input_81),
.buffer_activate(intermediate_buffer_activate)
);
 
interconnect interconnect_inst (                                      
.control_signal(control_signal),                             
.stationary_signal_1(intermediate_stationary_signal_1),
.stationary_signal_2(intermediate_stationary_signal_2),
.stationary_signal_3(intermediate_stationary_signal_3),
.stationary_signal_4(intermediate_stationary_signal_4),
.stationary_signal_5(intermediate_stationary_signal_5),
.stationary_signal_6(intermediate_stationary_signal_6),
.stationary_signal_7(intermediate_stationary_signal_7),
.stationary_signal_8(intermediate_stationary_signal_8),
.stationary_signal_9(intermediate_stationary_signal_9),
.stationary_signal_10(intermediate_stationary_signal_10),
.stationary_signal_11(intermediate_stationary_signal_11),
.stationary_signal_12(intermediate_stationary_signal_12), 
.stationary_signal_13(intermediate_stationary_signal_13),
.stationary_signal_14(intermediate_stationary_signal_14),
.stationary_signal_15(intermediate_stationary_signal_15),
.stationary_signal_16(intermediate_stationary_signal_16),
.stationary_signal_17(intermediate_stationary_signal_17),
.stationary_signal_18(intermediate_stationary_signal_18), 
.stationary_signal_19(intermediate_stationary_signal_19),
.stationary_signal_20(intermediate_stationary_signal_20),
.stationary_signal_21(intermediate_stationary_signal_21),
.stationary_signal_22(intermediate_stationary_signal_22),
.stationary_signal_23(intermediate_stationary_signal_23),
.stationary_signal_24(intermediate_stationary_signal_24), 
.stationary_signal_25(intermediate_stationary_signal_25),
.stationary_signal_26(intermediate_stationary_signal_26),
.stationary_signal_27(intermediate_stationary_signal_27),
.stationary_signal_28(intermediate_stationary_signal_28),
.stationary_signal_29(intermediate_stationary_signal_29),
.stationary_signal_30(intermediate_stationary_signal_30), 
.stationary_signal_31(intermediate_stationary_signal_31),
.stationary_signal_32(intermediate_stationary_signal_32),
.stationary_signal_33(intermediate_stationary_signal_33),
.stationary_signal_34(intermediate_stationary_signal_34),
.stationary_signal_35(intermediate_stationary_signal_35),
.stationary_signal_36(intermediate_stationary_signal_36), 
.stationary_signal_37(intermediate_stationary_signal_37),
.stationary_signal_38(intermediate_stationary_signal_38),
.stationary_signal_39(intermediate_stationary_signal_39),
.stationary_signal_40(intermediate_stationary_signal_40),
.stationary_signal_41(intermediate_stationary_signal_41),
.stationary_signal_42(intermediate_stationary_signal_42), 
.stationary_signal_43(intermediate_stationary_signal_43),
.stationary_signal_44(intermediate_stationary_signal_44),
.stationary_signal_45(intermediate_stationary_signal_45),
.stationary_signal_46(intermediate_stationary_signal_46),
.stationary_signal_47(intermediate_stationary_signal_47),
.stationary_signal_48(intermediate_stationary_signal_48), 
.stationary_signal_49(intermediate_stationary_signal_49),
.stationary_signal_50(intermediate_stationary_signal_50),
.stationary_signal_51(intermediate_stationary_signal_51),
.stationary_signal_52(intermediate_stationary_signal_52),
.stationary_signal_53(intermediate_stationary_signal_53),
.stationary_signal_54(intermediate_stationary_signal_54), 
.stationary_signal_55(intermediate_stationary_signal_55),
.stationary_signal_56(intermediate_stationary_signal_56),
.stationary_signal_57(intermediate_stationary_signal_57),
.stationary_signal_58(intermediate_stationary_signal_58),
.stationary_signal_59(intermediate_stationary_signal_59),
.stationary_signal_60(intermediate_stationary_signal_60), 
.stationary_signal_61(intermediate_stationary_signal_61),
.stationary_signal_62(intermediate_stationary_signal_62),
.stationary_signal_63(intermediate_stationary_signal_63),
.stationary_signal_64(intermediate_stationary_signal_64), 
.stationary_signal_65(intermediate_stationary_signal_65),
.stationary_signal_66(intermediate_stationary_signal_66),
.stationary_signal_67(intermediate_stationary_signal_67),
.stationary_signal_68(intermediate_stationary_signal_68),
.stationary_signal_69(intermediate_stationary_signal_69),
.stationary_signal_70(intermediate_stationary_signal_70), 
.stationary_signal_71(intermediate_stationary_signal_71),
.stationary_signal_72(intermediate_stationary_signal_72),
.stationary_signal_73(intermediate_stationary_signal_73),
.stationary_signal_74(intermediate_stationary_signal_74),
.stationary_signal_75(intermediate_stationary_signal_75),
.stationary_signal_76(intermediate_stationary_signal_76), 
.stationary_signal_77(intermediate_stationary_signal_77),
.stationary_signal_78(intermediate_stationary_signal_78),
.stationary_signal_79(intermediate_stationary_signal_79),
.stationary_signal_80(intermediate_stationary_signal_80), 
.stationary_signal_81(intermediate_stationary_signal_81),
.sw_input_1(intermediate_sw_input_1),
.sw_input_2(intermediate_sw_input_2),
.sw_input_3(intermediate_sw_input_3),
.sw_input_4(intermediate_sw_input_4),
.sw_input_5(intermediate_sw_input_5),
.sw_input_6(intermediate_sw_input_6),
.sw_input_7(intermediate_sw_input_7),
.sw_input_8(intermediate_sw_input_8),
.sw_input_9(intermediate_sw_input_9),
.sw_input_10(intermediate_sw_input_10),
.sw_input_11(intermediate_sw_input_11),
.sw_input_12(intermediate_sw_input_12), 
.sw_input_13(intermediate_sw_input_13),
.sw_input_14(intermediate_sw_input_14),
.sw_input_15(intermediate_sw_input_15),
.sw_input_16(intermediate_sw_input_16),
.sw_input_17(intermediate_sw_input_17),
.sw_input_18(intermediate_sw_input_18), 
.sw_input_19(intermediate_sw_input_19),
.sw_input_20(intermediate_sw_input_20),
.sw_input_21(intermediate_sw_input_21),
.sw_input_22(intermediate_sw_input_22),
.sw_input_23(intermediate_sw_input_23),
.sw_input_24(intermediate_sw_input_24), 
.sw_input_25(intermediate_sw_input_25),
.sw_input_26(intermediate_sw_input_26),
.sw_input_27(intermediate_sw_input_27),
.sw_input_28(intermediate_sw_input_28),
.sw_input_29(intermediate_sw_input_29),
.sw_input_30(intermediate_sw_input_30), 
.sw_input_31(intermediate_sw_input_31),
.sw_input_32(intermediate_sw_input_32),
.sw_input_33(intermediate_sw_input_33),
.sw_input_34(intermediate_sw_input_34),
.sw_input_35(intermediate_sw_input_35),
.sw_input_36(intermediate_sw_input_36), 
.sw_input_37(intermediate_sw_input_37),
.sw_input_38(intermediate_sw_input_38),
.sw_input_39(intermediate_sw_input_39),
.sw_input_40(intermediate_sw_input_40),
.sw_input_41(intermediate_sw_input_41),
.sw_input_42(intermediate_sw_input_42), 
.sw_input_43(intermediate_sw_input_43),
.sw_input_44(intermediate_sw_input_44),
.sw_input_45(intermediate_sw_input_45),
.sw_input_46(intermediate_sw_input_46),
.sw_input_47(intermediate_sw_input_47),
.sw_input_48(intermediate_sw_input_48), 
.sw_input_49(intermediate_sw_input_49),
.sw_input_50(intermediate_sw_input_50),
.sw_input_51(intermediate_sw_input_51),
.sw_input_52(intermediate_sw_input_52),
.sw_input_53(intermediate_sw_input_53),
.sw_input_54(intermediate_sw_input_54), 
.sw_input_55(intermediate_sw_input_55),
.sw_input_56(intermediate_sw_input_56),
.sw_input_57(intermediate_sw_input_57),
.sw_input_58(intermediate_sw_input_58),
.sw_input_59(intermediate_sw_input_59),
.sw_input_60(intermediate_sw_input_60), 
.sw_input_61(intermediate_sw_input_61),
.sw_input_62(intermediate_sw_input_62),
.sw_input_63(intermediate_sw_input_63),
.sw_input_64(intermediate_sw_input_64), 
.sw_input_65(intermediate_sw_input_65),
.sw_input_66(intermediate_sw_input_66),
.sw_input_67(intermediate_sw_input_67),
.sw_input_68(intermediate_sw_input_68),
.sw_input_69(intermediate_sw_input_69),
.sw_input_70(intermediate_sw_input_70), 
.sw_input_71(intermediate_sw_input_71),
.sw_input_72(intermediate_sw_input_72),
.sw_input_73(intermediate_sw_input_73),
.sw_input_74(intermediate_sw_input_74),
.sw_input_75(intermediate_sw_input_75),
.sw_input_76(intermediate_sw_input_76), 
.sw_input_77(intermediate_sw_input_77),
.sw_input_78(intermediate_sw_input_78),
.sw_input_79(intermediate_sw_input_79),
.sw_input_80(intermediate_sw_input_80), 
.sw_input_81(intermediate_sw_input_81),
.index_1(intermediate_index_1),          
.index_2(intermediate_index_2),
.index_3(intermediate_index_3),
.index_4(intermediate_index_4),
.index_5(intermediate_index_5),
.index_6(intermediate_index_6),
.index_7(intermediate_index_7),
.index_8(intermediate_index_8),
.index_9(intermediate_index_9),
.index_10(intermediate_index_10),
.index_11(intermediate_index_11),
.index_12(intermediate_index_12),
.index_13(intermediate_index_13),
.index_14(intermediate_index_14),
.index_15(intermediate_index_15),
.index_16(intermediate_index_16),          
.index_17(intermediate_index_17),
.index_18(intermediate_index_18),
.index_19(intermediate_index_19),
.index_20(intermediate_index_20),
.index_21(intermediate_index_21),
.index_22(intermediate_index_22),
.index_23(intermediate_index_23),
.index_24(intermediate_index_24),
.index_25(intermediate_index_25),
.index_26(intermediate_index_26),
.index_27(intermediate_index_27),
.index_28(intermediate_index_28),
.index_29(intermediate_index_29),
.index_30(intermediate_index_30),
.index_31(intermediate_index_31),          
.index_32(intermediate_index_32),
.index_33(intermediate_index_33),
.index_34(intermediate_index_34),
.index_35(intermediate_index_35),
.index_36(intermediate_index_36),
.index_37(intermediate_index_37),
.index_38(intermediate_index_38),
.index_39(intermediate_index_39),
.index_40(intermediate_index_40),
.index_41(intermediate_index_41),
.index_42(intermediate_index_42),
.index_43(intermediate_index_43),
.index_44(intermediate_index_44),
.index_45(intermediate_index_45),
.index_46(intermediate_index_46),          
.index_47(intermediate_index_47),
.index_48(intermediate_index_48),
.index_49(intermediate_index_49),
.index_50(intermediate_index_50),
.index_51(intermediate_index_51),
.index_52(intermediate_index_52),
.index_53(intermediate_index_53),
.index_54(intermediate_index_54),
.index_55(intermediate_index_55),
.index_56(intermediate_index_56),
.index_57(intermediate_index_57),
.index_58(intermediate_index_58),
.index_59(intermediate_index_59),
.index_60(intermediate_index_60),    
.index_61(intermediate_index_61),
.index_62(intermediate_index_62),
.index_63(intermediate_index_63),
.index_64(intermediate_index_64), 
.index_65(intermediate_index_65),
.index_66(intermediate_index_66),
.index_67(intermediate_index_67),
.index_68(intermediate_index_68),
.index_69(intermediate_index_69),
.index_70(intermediate_index_70),
.index_71(intermediate_index_71),
.index_72(intermediate_index_72),
.index_73(intermediate_index_73),
.index_74(intermediate_index_74),    
.index_75(intermediate_index_75),
.index_76(intermediate_index_76),
.index_77(intermediate_index_77),
.index_78(intermediate_index_78), 
.index_79(intermediate_index_79),
.index_80(intermediate_index_80),
.index_81(intermediate_index_81),         
.sw_output_1(intermediate_sw_output_1),
.sw_output_2(intermediate_sw_output_2),
.sw_output_3(intermediate_sw_output_3),
.sw_output_4(intermediate_sw_output_4),
.sw_output_5(intermediate_sw_output_5),
.sw_output_6(intermediate_sw_output_6),
.sw_output_7(intermediate_sw_output_7),
.sw_output_8(intermediate_sw_output_8),
.sw_output_9(intermediate_sw_output_9),
.sw_output_10(intermediate_sw_output_10),
.sw_output_11(intermediate_sw_output_11),
.sw_output_12(intermediate_sw_output_12),
.sw_output_13(intermediate_sw_output_13),
.sw_output_14(intermediate_sw_output_14),
.sw_output_15(intermediate_sw_output_15),
.sw_output_16(intermediate_sw_output_16),
.sw_output_17(intermediate_sw_output_17),
.sw_output_18(intermediate_sw_output_18),
.sw_output_19(intermediate_sw_output_19),
.sw_output_20(intermediate_sw_output_20),
.sw_output_21(intermediate_sw_output_21),
.sw_output_22(intermediate_sw_output_22),
.sw_output_23(intermediate_sw_output_23),
.sw_output_24(intermediate_sw_output_24),
.sw_output_25(intermediate_sw_output_25),
.sw_output_26(intermediate_sw_output_26),
.sw_output_27(intermediate_sw_output_27),
.sw_output_28(intermediate_sw_output_28),
.sw_output_29(intermediate_sw_output_29),
.sw_output_30(intermediate_sw_output_30),
.sw_output_31(intermediate_sw_output_31),
.sw_output_32(intermediate_sw_output_32),
.sw_output_33(intermediate_sw_output_33),
.sw_output_34(intermediate_sw_output_34),
.sw_output_35(intermediate_sw_output_35),
.sw_output_36(intermediate_sw_output_36),
.sw_output_37(intermediate_sw_output_37),
.sw_output_38(intermediate_sw_output_38),
.sw_output_39(intermediate_sw_output_39),
.sw_output_40(intermediate_sw_output_40),
.sw_output_41(intermediate_sw_output_41),
.sw_output_42(intermediate_sw_output_42),
.sw_output_43(intermediate_sw_output_43),
.sw_output_44(intermediate_sw_output_44),
.sw_output_45(intermediate_sw_output_45),
.sw_output_46(intermediate_sw_output_46),
.sw_output_47(intermediate_sw_output_47),
.sw_output_48(intermediate_sw_output_48),
.sw_output_49(intermediate_sw_output_49),
.sw_output_50(intermediate_sw_output_50),
.sw_output_51(intermediate_sw_output_51),
.sw_output_52(intermediate_sw_output_52),
.sw_output_53(intermediate_sw_output_53),
.sw_output_54(intermediate_sw_output_54),
.sw_output_55(intermediate_sw_output_55),
.sw_output_56(intermediate_sw_output_56),
.sw_output_57(intermediate_sw_output_57),
.sw_output_58(intermediate_sw_output_58),
.sw_output_59(intermediate_sw_output_59),
.sw_output_60(intermediate_sw_output_60),
.sw_output_61(intermediate_sw_output_61),
.sw_output_62(intermediate_sw_output_62),
.sw_output_63(intermediate_sw_output_63),
.sw_output_64(intermediate_sw_output_64),
.sw_output_65(intermediate_sw_output_65),
.sw_output_66(intermediate_sw_output_66),
.sw_output_67(intermediate_sw_output_67),
.sw_output_68(intermediate_sw_output_68),
.sw_output_69(intermediate_sw_output_69),
.sw_output_70(intermediate_sw_output_70),
.sw_output_71(intermediate_sw_output_71),
.sw_output_72(intermediate_sw_output_72),
.sw_output_73(intermediate_sw_output_73),
.sw_output_74(intermediate_sw_output_74),
.sw_output_75(intermediate_sw_output_75),
.sw_output_76(intermediate_sw_output_76),
.sw_output_77(intermediate_sw_output_77),
.sw_output_78(intermediate_sw_output_78),
.sw_output_79(intermediate_sw_output_79),
.sw_output_80(intermediate_sw_output_80),
.sw_output_81(intermediate_sw_output_81),
.sw_output_82(intermediate_sw_output_82),
.sw_output_83(intermediate_sw_output_83),
.sw_output_84(intermediate_sw_output_84),
.sw_output_85(intermediate_sw_output_85),
.sw_output_86(intermediate_sw_output_86),
.sw_output_87(intermediate_sw_output_87),
.sw_output_88(intermediate_sw_output_88),
.sw_output_89(intermediate_sw_output_89),
.sw_output_90(intermediate_sw_output_90),
.sw_output_91(intermediate_sw_output_91),
.sw_output_92(intermediate_sw_output_92),
.sw_output_93(intermediate_sw_output_93),
.sw_output_94(intermediate_sw_output_94),
.sw_output_95(intermediate_sw_output_95),
.sw_output_96(intermediate_sw_output_96),
.sw_output_97(intermediate_sw_output_97),
.sw_output_98(intermediate_sw_output_98),
.sw_output_99(intermediate_sw_output_99),
.sw_output_100(intermediate_sw_output_100),
.sw_output_101(intermediate_sw_output_101),
.sw_output_102(intermediate_sw_output_102),
.sw_output_103(intermediate_sw_output_103),
.sw_output_104(intermediate_sw_output_104),
.sw_output_105(intermediate_sw_output_105),
.sw_output_106(intermediate_sw_output_106),
.sw_output_107(intermediate_sw_output_107),
.sw_output_108(intermediate_sw_output_108),
.sw_output_109(intermediate_sw_output_109),
.sw_output_110(intermediate_sw_output_110),
.sw_output_111(intermediate_sw_output_111),
.sw_output_112(intermediate_sw_output_112),
.sw_output_113(intermediate_sw_output_113),
.sw_output_114(intermediate_sw_output_114),
.sw_output_115(intermediate_sw_output_115),
.sw_output_116(intermediate_sw_output_116),
.sw_output_117(intermediate_sw_output_117),
.sw_output_118(intermediate_sw_output_118),
.sw_output_119(intermediate_sw_output_119),
.sw_output_120(intermediate_sw_output_120),
.sw_output_121(intermediate_sw_output_121),
.sw_output_122(intermediate_sw_output_122),
.sw_output_123(intermediate_sw_output_123),
.sw_output_124(intermediate_sw_output_124),
.sw_output_125(intermediate_sw_output_125),
.sw_output_126(intermediate_sw_output_126),
.sw_output_127(intermediate_sw_output_127),
.sw_output_128(intermediate_sw_output_128),
.sw_output_129(intermediate_sw_output_129),
.sw_output_130(intermediate_sw_output_130),
.sw_output_131(intermediate_sw_output_131),
.sw_output_132(intermediate_sw_output_132),
.sw_output_133(intermediate_sw_output_133),
.sw_output_134(intermediate_sw_output_134),
.sw_output_135(intermediate_sw_output_135),
.sw_output_136(intermediate_sw_output_136),
.sw_output_137(intermediate_sw_output_137),
.sw_output_138(intermediate_sw_output_138),
.sw_output_139(intermediate_sw_output_139),
.sw_output_140(intermediate_sw_output_140),
.sw_output_141(intermediate_sw_output_141),
.sw_output_142(intermediate_sw_output_142),
.sw_output_143(intermediate_sw_output_143),
.sw_output_144(intermediate_sw_output_144),
.sw_output_145(intermediate_sw_output_145),
.sw_output_146(intermediate_sw_output_146),
.sw_output_147(intermediate_sw_output_147),
.sw_output_148(intermediate_sw_output_148),
.sw_output_149(intermediate_sw_output_149),
.sw_output_150(intermediate_sw_output_150),
.sw_output_151(intermediate_sw_output_151),
.sw_output_152(intermediate_sw_output_152),
.sw_output_153(intermediate_sw_output_153),
.sw_output_154(intermediate_sw_output_154),
.sw_output_155(intermediate_sw_output_155),
.sw_output_156(intermediate_sw_output_156),
.sw_output_157(intermediate_sw_output_157),
.sw_output_158(intermediate_sw_output_158),
.sw_output_159(intermediate_sw_output_159),
.sw_output_160(intermediate_sw_output_160),
.sw_output_161(intermediate_sw_output_161),
.sw_output_162(intermediate_sw_output_162)
 );  

pe_array pe_inst(                 
.sw_output_1(intermediate_sw_output_1),
.sw_output_2(intermediate_sw_output_2),
.sw_output_3(intermediate_sw_output_3),
.sw_output_4(intermediate_sw_output_4),
.sw_output_5(intermediate_sw_output_5),
.sw_output_6(intermediate_sw_output_6),
.sw_output_7(intermediate_sw_output_7),
.sw_output_8(intermediate_sw_output_8),
.sw_output_9(intermediate_sw_output_9),
.sw_output_10(intermediate_sw_output_10),
.sw_output_11(intermediate_sw_output_11),
.sw_output_12(intermediate_sw_output_12),
.sw_output_13(intermediate_sw_output_13),
.sw_output_14(intermediate_sw_output_14),
.sw_output_15(intermediate_sw_output_15),
.sw_output_16(intermediate_sw_output_16),
.sw_output_17(intermediate_sw_output_17),
.sw_output_18(intermediate_sw_output_18),
.sw_output_19(intermediate_sw_output_19),
.sw_output_20(intermediate_sw_output_20),
.sw_output_21(intermediate_sw_output_21),
.sw_output_22(intermediate_sw_output_22),
.sw_output_23(intermediate_sw_output_23),
.sw_output_24(intermediate_sw_output_24),
.sw_output_25(intermediate_sw_output_25),
.sw_output_26(intermediate_sw_output_26),
.sw_output_27(intermediate_sw_output_27),
.sw_output_28(intermediate_sw_output_28),
.sw_output_29(intermediate_sw_output_29),
.sw_output_30(intermediate_sw_output_30),
.sw_output_31(intermediate_sw_output_31),
.sw_output_32(intermediate_sw_output_32),
.sw_output_33(intermediate_sw_output_33),
.sw_output_34(intermediate_sw_output_34),
.sw_output_35(intermediate_sw_output_35),
.sw_output_36(intermediate_sw_output_36),
.sw_output_37(intermediate_sw_output_37),
.sw_output_38(intermediate_sw_output_38),
.sw_output_39(intermediate_sw_output_39),
.sw_output_40(intermediate_sw_output_40),
.sw_output_41(intermediate_sw_output_41),
.sw_output_42(intermediate_sw_output_42),
.sw_output_43(intermediate_sw_output_43),
.sw_output_44(intermediate_sw_output_44),
.sw_output_45(intermediate_sw_output_45),
.sw_output_46(intermediate_sw_output_46),
.sw_output_47(intermediate_sw_output_47),
.sw_output_48(intermediate_sw_output_48),
.sw_output_49(intermediate_sw_output_49),
.sw_output_50(intermediate_sw_output_50),
.sw_output_51(intermediate_sw_output_51),
.sw_output_52(intermediate_sw_output_52),
.sw_output_53(intermediate_sw_output_53),
.sw_output_54(intermediate_sw_output_54),
.sw_output_55(intermediate_sw_output_55),
.sw_output_56(intermediate_sw_output_56),
.sw_output_57(intermediate_sw_output_57),
.sw_output_58(intermediate_sw_output_58),
.sw_output_59(intermediate_sw_output_59),
.sw_output_60(intermediate_sw_output_60),
.sw_output_61(intermediate_sw_output_61),
.sw_output_62(intermediate_sw_output_62),
.sw_output_63(intermediate_sw_output_63),
.sw_output_64(intermediate_sw_output_64),
.sw_output_65(intermediate_sw_output_65),
.sw_output_66(intermediate_sw_output_66),
.sw_output_67(intermediate_sw_output_67),
.sw_output_68(intermediate_sw_output_68),
.sw_output_69(intermediate_sw_output_69),
.sw_output_70(intermediate_sw_output_70),
.sw_output_71(intermediate_sw_output_71),
.sw_output_72(intermediate_sw_output_72),
.sw_output_73(intermediate_sw_output_73),
.sw_output_74(intermediate_sw_output_74),
.sw_output_75(intermediate_sw_output_75),
.sw_output_76(intermediate_sw_output_76),
.sw_output_77(intermediate_sw_output_77),
.sw_output_78(intermediate_sw_output_78),
.sw_output_79(intermediate_sw_output_79),
.sw_output_80(intermediate_sw_output_80),
.sw_output_81(intermediate_sw_output_81),
.sw_output_82(intermediate_sw_output_82),
.sw_output_83(intermediate_sw_output_83),
.sw_output_84(intermediate_sw_output_84),
.sw_output_85(intermediate_sw_output_85),
.sw_output_86(intermediate_sw_output_86),
.sw_output_87(intermediate_sw_output_87),
.sw_output_88(intermediate_sw_output_88),
.sw_output_89(intermediate_sw_output_89),
.sw_output_90(intermediate_sw_output_90),
.sw_output_91(intermediate_sw_output_91),
.sw_output_92(intermediate_sw_output_92),
.sw_output_93(intermediate_sw_output_93),
.sw_output_94(intermediate_sw_output_94),
.sw_output_95(intermediate_sw_output_95),
.sw_output_96(intermediate_sw_output_96),
.sw_output_97(intermediate_sw_output_97),
.sw_output_98(intermediate_sw_output_98),
.sw_output_99(intermediate_sw_output_99),
.sw_output_100(intermediate_sw_output_100),
.sw_output_101(intermediate_sw_output_101),
.sw_output_102(intermediate_sw_output_102),
.sw_output_103(intermediate_sw_output_103),
.sw_output_104(intermediate_sw_output_104),
.sw_output_105(intermediate_sw_output_105),
.sw_output_106(intermediate_sw_output_106),
.sw_output_107(intermediate_sw_output_107),
.sw_output_108(intermediate_sw_output_108),
.sw_output_109(intermediate_sw_output_109),
.sw_output_110(intermediate_sw_output_110),
.sw_output_111(intermediate_sw_output_111),
.sw_output_112(intermediate_sw_output_112),
.sw_output_113(intermediate_sw_output_113),
.sw_output_114(intermediate_sw_output_114),
.sw_output_115(intermediate_sw_output_115),
.sw_output_116(intermediate_sw_output_116),
.sw_output_117(intermediate_sw_output_117),
.sw_output_118(intermediate_sw_output_118),
.sw_output_119(intermediate_sw_output_119),
.sw_output_120(intermediate_sw_output_120),
.sw_output_121(intermediate_sw_output_121),
.sw_output_122(intermediate_sw_output_122),
.sw_output_123(intermediate_sw_output_123),
.sw_output_124(intermediate_sw_output_124),
.sw_output_125(intermediate_sw_output_125),
.sw_output_126(intermediate_sw_output_126),
.sw_output_127(intermediate_sw_output_127),
.sw_output_128(intermediate_sw_output_128),
.sw_output_129(intermediate_sw_output_129),
.sw_output_130(intermediate_sw_output_130),
.sw_output_131(intermediate_sw_output_131),
.sw_output_132(intermediate_sw_output_132),
.sw_output_133(intermediate_sw_output_133),
.sw_output_134(intermediate_sw_output_134),
.sw_output_135(intermediate_sw_output_135),
.sw_output_136(intermediate_sw_output_136),
.sw_output_137(intermediate_sw_output_137),
.sw_output_138(intermediate_sw_output_138),
.sw_output_139(intermediate_sw_output_139),
.sw_output_140(intermediate_sw_output_140),
.sw_output_141(intermediate_sw_output_141),
.sw_output_142(intermediate_sw_output_142),
.sw_output_143(intermediate_sw_output_143),
.sw_output_144(intermediate_sw_output_144),
.sw_output_145(intermediate_sw_output_145),
.sw_output_146(intermediate_sw_output_146),
.sw_output_147(intermediate_sw_output_147),
.sw_output_148(intermediate_sw_output_148),
.sw_output_149(intermediate_sw_output_149),
.sw_output_150(intermediate_sw_output_150),
.sw_output_151(intermediate_sw_output_151),
.sw_output_152(intermediate_sw_output_152),
.sw_output_153(intermediate_sw_output_153),
.sw_output_154(intermediate_sw_output_154),
.sw_output_155(intermediate_sw_output_155),
.sw_output_156(intermediate_sw_output_156),
.sw_output_157(intermediate_sw_output_157),
.sw_output_158(intermediate_sw_output_158),
.sw_output_159(intermediate_sw_output_159),
.sw_output_160(intermediate_sw_output_160),
.sw_output_161(intermediate_sw_output_161),
.sw_output_162(intermediate_sw_output_162),
.clk(clk),
.reset(reset),
.pe_array_enable(intermediate_pe_array_enable),
.final_output_1(intermediate_final_output_1),
.final_output_2(intermediate_final_output_2),
.final_output_3(intermediate_final_output_3),
.final_output_4(intermediate_final_output_4),
.final_output_5(intermediate_final_output_5),
.final_output_6(intermediate_final_output_6),
.final_output_7(intermediate_final_output_7),
.final_output_8(intermediate_final_output_8),
.final_output_9(intermediate_final_output_9)
);

output_buffer inst_output_buffer(
.clk(clk),
.reset(reset),
.output_buffer_enable(intermediate_output_buffer_enable),
.final_output_1(intermediate_final_output_1),
.final_output_2(intermediate_final_output_2),
.final_output_3(intermediate_final_output_3),
.final_output_4(intermediate_final_output_4),
.final_output_5(intermediate_final_output_5),
.final_output_6(intermediate_final_output_6),
.final_output_7(intermediate_final_output_7),
.final_output_8(intermediate_final_output_8),
.final_output_9(intermediate_final_output_9),
.output_buffer_data(intermediate_output_buffer_data),
.output_buffer_ready(intermediate_output_buffer_ready)
);

pooling_unit inst_pooling_unit(
.clk(clk),
.reset(reset),
.output_buffer_enable(intermediate_output_buffer_enable),
.final_output_1(intermediate_final_output_1),
.final_output_2(intermediate_final_output_2),
.final_output_3(intermediate_final_output_3),
.final_output_4(intermediate_final_output_4),
.final_output_5(intermediate_final_output_5),
.final_output_6(intermediate_final_output_6),
.final_output_7(intermediate_final_output_7),
.final_output_8(intermediate_final_output_8),
.final_output_9(intermediate_final_output_9)
);

control_unit inst_control_unit(
.clk(clk),
.reset(reset),
.input_buffer_ready(intermediate_input_buffer_ready),
.weight_buffer_ready(intermediate_weight_buffer_ready),
.index_buffer_ready(intermediate_index_buffer_ready),
.control_signal(control_signal),
.pe_array_enable(intermediate_pe_array_enable),
.data_preprocessing_unit_enable(intermediate_data_preprocessing_unit_enable),
.output_buffer_enable(intermediate_output_buffer_enable)
);

endmodule

