`timescale 10ns / 1ns

module pe_array  #(parameter WIDTH =4,k = {WIDTH*3{1'b0}})(       
input wire [WIDTH-1:0] sw_output_1,                            //162 signals (81 inputs and 81 weights) from the interconnect
input wire [WIDTH-1:0] sw_output_2,
input wire [WIDTH-1:0] sw_output_3,
input wire [WIDTH-1:0] sw_output_4,
input wire [WIDTH-1:0] sw_output_5,
input wire [WIDTH-1:0] sw_output_6,
input wire [WIDTH-1:0] sw_output_7,
input wire [WIDTH-1:0] sw_output_8,
input wire [WIDTH-1:0] sw_output_9,
input wire [WIDTH-1:0] sw_output_10,
input wire [WIDTH-1:0] sw_output_11,
input wire [WIDTH-1:0] sw_output_12,
input wire [WIDTH-1:0] sw_output_13,
input wire [WIDTH-1:0] sw_output_14,
input wire [WIDTH-1:0] sw_output_15,
input wire [WIDTH-1:0] sw_output_16,
input wire [WIDTH-1:0] sw_output_17,
input wire [WIDTH-1:0] sw_output_18,
input wire [WIDTH-1:0] sw_output_19,
input wire [WIDTH-1:0] sw_output_20,
input wire [WIDTH-1:0] sw_output_21,
input wire [WIDTH-1:0] sw_output_22,
input wire [WIDTH-1:0] sw_output_23,
input wire [WIDTH-1:0] sw_output_24,
input wire [WIDTH-1:0] sw_output_25,
input wire [WIDTH-1:0] sw_output_26,
input wire [WIDTH-1:0] sw_output_27,
input wire [WIDTH-1:0] sw_output_28,
input wire [WIDTH-1:0] sw_output_29,
input wire [WIDTH-1:0] sw_output_30,
input wire [WIDTH-1:0] sw_output_31,
input wire [WIDTH-1:0] sw_output_32,
input wire [WIDTH-1:0] sw_output_33,
input wire [WIDTH-1:0] sw_output_34,
input wire [WIDTH-1:0] sw_output_35,
input wire [WIDTH-1:0] sw_output_36,
input wire [WIDTH-1:0] sw_output_37,
input wire [WIDTH-1:0] sw_output_38,
input wire [WIDTH-1:0] sw_output_39,
input wire [WIDTH-1:0] sw_output_40,
input wire [WIDTH-1:0] sw_output_41,
input wire [WIDTH-1:0] sw_output_42,
input wire [WIDTH-1:0] sw_output_43,
input wire [WIDTH-1:0] sw_output_44,
input wire [WIDTH-1:0] sw_output_45,
input wire [WIDTH-1:0] sw_output_46,
input wire [WIDTH-1:0] sw_output_47,
input wire [WIDTH-1:0] sw_output_48,
input wire [WIDTH-1:0] sw_output_49,
input wire [WIDTH-1:0] sw_output_50,
input wire [WIDTH-1:0] sw_output_51,
input wire [WIDTH-1:0] sw_output_52,
input wire [WIDTH-1:0] sw_output_53,
input wire [WIDTH-1:0] sw_output_54,
input wire [WIDTH-1:0] sw_output_55,
input wire [WIDTH-1:0] sw_output_56,
input wire [WIDTH-1:0] sw_output_57,
input wire [WIDTH-1:0] sw_output_58,
input wire [WIDTH-1:0] sw_output_59,
input wire [WIDTH-1:0] sw_output_60,
input wire [WIDTH-1:0] sw_output_61,
input wire [WIDTH-1:0] sw_output_62,
input wire [WIDTH-1:0] sw_output_63,
input wire [WIDTH-1:0] sw_output_64,
input wire [WIDTH-1:0] sw_output_65,          
input wire [WIDTH-1:0] sw_output_66,
input wire [WIDTH-1:0] sw_output_67,
input wire [WIDTH-1:0] sw_output_68,
input wire [WIDTH-1:0] sw_output_69,
input wire [WIDTH-1:0] sw_output_70,
input wire [WIDTH-1:0] sw_output_71,
input wire [WIDTH-1:0] sw_output_72,
input wire [WIDTH-1:0] sw_output_73,
input wire [WIDTH-1:0] sw_output_74,
input wire [WIDTH-1:0] sw_output_75,
input wire [WIDTH-1:0] sw_output_76,
input wire [WIDTH-1:0] sw_output_77,
input wire [WIDTH-1:0] sw_output_78,
input wire [WIDTH-1:0] sw_output_79,
input wire [WIDTH-1:0] sw_output_80,
input wire [WIDTH-1:0] sw_output_81,
input wire [WIDTH-1:0] sw_output_82,
input wire [WIDTH-1:0] sw_output_83,
input wire [WIDTH-1:0] sw_output_84,
input wire [WIDTH-1:0] sw_output_85,
input wire [WIDTH-1:0] sw_output_86,
input wire [WIDTH-1:0] sw_output_87,
input wire [WIDTH-1:0] sw_output_88,
input wire [WIDTH-1:0] sw_output_89,
input wire [WIDTH-1:0] sw_output_90,
input wire [WIDTH-1:0] sw_output_91,
input wire [WIDTH-1:0] sw_output_92,
input wire [WIDTH-1:0] sw_output_93,
input wire [WIDTH-1:0] sw_output_94,
input wire [WIDTH-1:0] sw_output_95,
input wire [WIDTH-1:0] sw_output_96,
input wire [WIDTH-1:0] sw_output_97,
input wire [WIDTH-1:0] sw_output_98,
input wire [WIDTH-1:0] sw_output_99,
input wire [WIDTH-1:0] sw_output_100,
input wire [WIDTH-1:0] sw_output_101,
input wire [WIDTH-1:0] sw_output_102,
input wire [WIDTH-1:0] sw_output_103,
input wire [WIDTH-1:0] sw_output_104,
input wire [WIDTH-1:0] sw_output_105,
input wire [WIDTH-1:0] sw_output_106,
input wire [WIDTH-1:0] sw_output_107,
input wire [WIDTH-1:0] sw_output_108,
input wire [WIDTH-1:0] sw_output_109,
input wire [WIDTH-1:0] sw_output_110,
input wire [WIDTH-1:0] sw_output_111,
input wire [WIDTH-1:0] sw_output_112,
input wire [WIDTH-1:0] sw_output_113,
input wire [WIDTH-1:0] sw_output_114,
input wire [WIDTH-1:0] sw_output_115,
input wire [WIDTH-1:0] sw_output_116,
input wire [WIDTH-1:0] sw_output_117,
input wire [WIDTH-1:0] sw_output_118,
input wire [WIDTH-1:0] sw_output_119,
input wire [WIDTH-1:0] sw_output_120,
input wire [WIDTH-1:0] sw_output_121,
input wire [WIDTH-1:0] sw_output_122,
input wire [WIDTH-1:0] sw_output_123,
input wire [WIDTH-1:0] sw_output_124,
input wire [WIDTH-1:0] sw_output_125,
input wire [WIDTH-1:0] sw_output_126,
input wire [WIDTH-1:0] sw_output_127,
input wire [WIDTH-1:0] sw_output_128,
input wire [WIDTH-1:0] sw_output_129,
input wire [WIDTH-1:0] sw_output_130,
input wire [WIDTH-1:0] sw_output_131,
input wire [WIDTH-1:0] sw_output_132,
input wire [WIDTH-1:0] sw_output_133,
input wire [WIDTH-1:0] sw_output_134,
input wire [WIDTH-1:0] sw_output_135,
input wire [WIDTH-1:0] sw_output_136,
input wire [WIDTH-1:0] sw_output_137,
input wire [WIDTH-1:0] sw_output_138,
input wire [WIDTH-1:0] sw_output_139,
input wire [WIDTH-1:0] sw_output_140,
input wire [WIDTH-1:0] sw_output_141,
input wire [WIDTH-1:0] sw_output_142,
input wire [WIDTH-1:0] sw_output_143,
input wire [WIDTH-1:0] sw_output_144,
input wire [WIDTH-1:0] sw_output_145,
input wire [WIDTH-1:0] sw_output_146,
input wire [WIDTH-1:0] sw_output_147,
input wire [WIDTH-1:0] sw_output_148,
input wire [WIDTH-1:0] sw_output_149,
input wire [WIDTH-1:0] sw_output_150,
input wire [WIDTH-1:0] sw_output_151,
input wire [WIDTH-1:0] sw_output_152,
input wire [WIDTH-1:0] sw_output_153,
input wire [WIDTH-1:0] sw_output_154,
input wire [WIDTH-1:0] sw_output_155,
input wire [WIDTH-1:0] sw_output_156,
input wire [WIDTH-1:0] sw_output_157,
input wire [WIDTH-1:0] sw_output_158,
input wire [WIDTH-1:0] sw_output_159,
input wire [WIDTH-1:0] sw_output_160,
input wire [WIDTH-1:0] sw_output_161,
input wire [WIDTH-1:0] sw_output_162, 
input wire clk,
input wire reset,  
input wire pe_array_enable,                                                   //enable signal for pe array from control_unit             
output wire [(WIDTH*3)-1 :0] final_output_1,                                  //9 final outputs of 9*9 PE array (representing elements of output feature maps)
output wire [(WIDTH*3)-1:0] final_output_2,
output wire [(WIDTH*3)-1:0] final_output_3,
output wire [(WIDTH*3)-1:0] final_output_4,
output wire [(WIDTH*3)-1:0] final_output_5,
output wire [(WIDTH*3)-1:0] final_output_6,
output wire [(WIDTH*3)-1:0] final_output_7,
output wire [(WIDTH*3)-1:0] final_output_8,
output wire [(WIDTH*3)-1:0] final_output_9
);
    
wire [(WIDTH*3)-1:0] out_array_1 [8:0];
wire [(WIDTH*3)-1:0] out_array_2 [8:0];
wire [(WIDTH*3)-1:0] out_array_3 [8:0];
wire [(WIDTH*3)-1:0] out_array_4 [8:0];
wire [(WIDTH*3)-1:0] out_array_5 [8:0];
wire [(WIDTH*3)-1:0] out_array_6 [8:0];
wire [(WIDTH*3)-1:0] out_array_7 [8:0];
wire [(WIDTH*3)-1:0] out_array_8 [8:0]; 
wire [(WIDTH*3)-1:0] out_array_9 [8:0];    
       
//created 81 instances of mac_unit.v  
//First row of 9 mac units
  mac_unit mac_unit_1 (                 
    .w(sw_output_1),
    .i(sw_output_82),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[0])
  );
    mac_unit mac_unit_2 (                 
    .w(sw_output_2),
    .i(sw_output_83),
    .pre_psum(out_array_1[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[1])
  );
    mac_unit mac_unit_3 (                 
    .w(sw_output_3),
    .i(sw_output_84),
    .pre_psum(out_array_1[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[2])
  ); 
     mac_unit mac_unit_4 (                 
    .w(sw_output_4),
    .i(sw_output_85),
    .pre_psum(out_array_1[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[3])
  );    
       mac_unit mac_unit_5 (                 
    .w(sw_output_5),
    .i(sw_output_86),
    .pre_psum(out_array_1[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[4])
  ); 
       mac_unit mac_unit_6 (                 
    .w(sw_output_6),
    .i(sw_output_87),
    .pre_psum(out_array_1[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[5])
  ); 
       mac_unit mac_unit_7 (                 
    .w(sw_output_7),
    .i(sw_output_88),
    .pre_psum(out_array_1[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[6])
  ); 
       mac_unit mac_unit_8 (                 
    .w(sw_output_8),
    .i(sw_output_89),
    .pre_psum(out_array_1[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[7])
  );   
  mac_unit mac_unit_9 (                 
    .w(sw_output_9),
    .i(sw_output_90),
    .pre_psum(out_array_1[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_1[8])
  );
  //Second row of 9 mac units
    mac_unit mac_unit_10 (                 
    .w(sw_output_10),
    .i(sw_output_91),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[0])
  );
    mac_unit mac_unit_11 (                 
    .w(sw_output_11),
    .i(sw_output_92),
    .pre_psum(out_array_2[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[1])
  ); 
     mac_unit mac_unit_12 (                 
    .w(sw_output_12),
    .i(sw_output_93),
    .pre_psum(out_array_2[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[2])
  ); 
       mac_unit mac_unit_13 (                 
    .w(sw_output_13),
    .i(sw_output_94),
    .pre_psum(out_array_2[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[3])
  ); 
       mac_unit mac_unit_14 (                 
    .w(sw_output_14),
    .i(sw_output_95),
    .pre_psum(out_array_2[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[4])
  ); 
       mac_unit mac_unit_15 (                 
    .w(sw_output_15),
    .i(sw_output_96),
    .pre_psum(out_array_2[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[5])
  ); 
       mac_unit mac_unit_16 (                 
    .w(sw_output_16),
    .i(sw_output_97),
    .pre_psum(out_array_2[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[6])
  ); 
  mac_unit mac_unit_17 (                 
    .w(sw_output_17),
    .i(sw_output_98),
    .pre_psum(out_array_2[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[7])
  );
    mac_unit mac_unit_18 (                 
    .w(sw_output_18),
    .i(sw_output_99),
    .pre_psum(out_array_2[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_2[8])
  );
   //Third row of 9 mac units
    mac_unit mac_unit_19 (                 
    .w(sw_output_19),
    .i(sw_output_100),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[0])
  ); 
     mac_unit mac_unit_20 (                 
    .w(sw_output_20),
    .i(sw_output_101),
    .pre_psum(out_array_3[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[1])
  ); 
       mac_unit mac_unit_21 (                 
    .w(sw_output_21),
    .i(sw_output_102),
    .pre_psum(out_array_3[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[2])
  ); 
       mac_unit mac_unit_22 (                 
    .w(sw_output_22),
    .i(sw_output_103),
    .pre_psum(out_array_3[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[3])
  ); 
       mac_unit mac_unit_23 (                 
    .w(sw_output_23),
    .i(sw_output_104),
    .pre_psum(out_array_3[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[4])
  ); 
       mac_unit mac_unit_24 (                 
    .w(sw_output_24),
    .i(sw_output_105),
    .pre_psum(out_array_3[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[5])
  ); 
  mac_unit mac_unit_25 (                 
    .w(sw_output_25),
    .i(sw_output_106),
    .pre_psum(out_array_3[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[6])
  );
    mac_unit mac_unit_26 (                 
    .w(sw_output_26),
    .i(sw_output_107),
    .pre_psum(out_array_3[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[7])
  );
    mac_unit mac_unit_27 (                 
    .w(sw_output_27),
    .i(sw_output_108),
    .pre_psum(out_array_3[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_3[8])
  ); 
  //Fourth row of 9 mac units
     mac_unit mac_unit_28 (                 
    .w(sw_output_28),
    .i(sw_output_109),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[0])
  ); 
       mac_unit mac_unit_29 (                 
    .w(sw_output_29),
    .i(sw_output_110),
    .pre_psum(out_array_4[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[1])
  ); 
       mac_unit mac_unit_30 (                 
    .w(sw_output_30),
    .i(sw_output_111),
    .pre_psum(out_array_4[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[2])
  ); 
       mac_unit mac_unit_31 (                 
    .w(sw_output_31),
    .i(sw_output_112),
    .pre_psum(out_array_4[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[3])
  ); 
       mac_unit mac_unit_32 (                 
    .w(sw_output_32),
    .i(sw_output_113),
    .pre_psum(out_array_4[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[4])
  ); 
  mac_unit mac_unit_33 (                 
    .w(sw_output_33),
    .i(sw_output_114),
    .pre_psum(out_array_4[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[5])
  );
    mac_unit mac_unit_34 (                 
    .w(sw_output_34),
    .i(sw_output_115),
    .pre_psum(out_array_4[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[6])
  );
    mac_unit mac_unit_35 (                 
    .w(sw_output_35),
    .i(sw_output_116),
    .pre_psum(out_array_4[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[7])
  ); 
     mac_unit mac_unit_36 (                 
    .w(sw_output_36),
    .i(sw_output_117),
    .pre_psum(out_array_4[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_4[8])
  );
  //Fifth row of 9 mac units 
       mac_unit mac_unit_37 (                 
    .w(sw_output_37),
    .i(sw_output_118),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[0])
  ); 
       mac_unit mac_unit_38 (                 
    .w(sw_output_38),
    .i(sw_output_119),
    .pre_psum(out_array_5[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[1])
  ); 
       mac_unit mac_unit_39 (                 
    .w(sw_output_39),
    .i(sw_output_120),
    .pre_psum(out_array_5[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[2])
  ); 
       mac_unit mac_unit_40 (                 
    .w(sw_output_40),
    .i(sw_output_121),
    .pre_psum(out_array_5[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[3])
  ); 
  mac_unit mac_unit_41 (                 
    .w(sw_output_41),
    .i(sw_output_122),
    .pre_psum(out_array_5[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[4])
  );
    mac_unit mac_unit_42 (                 
    .w(sw_output_42),
    .i(sw_output_123),
    .pre_psum(out_array_5[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[5])
  );
    mac_unit mac_unit_43 (                 
    .w(sw_output_43),
    .i(sw_output_124),
    .pre_psum(out_array_5[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[6])
  ); 
     mac_unit mac_unit_44 (                 
    .w(sw_output_44),
    .i(sw_output_125),
    .pre_psum(out_array_5[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[7])
  ); 
       mac_unit mac_unit_45 (                 
    .w(sw_output_45),
    .i(sw_output_126),
    .pre_psum(out_array_5[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_5[8])
  ); 
   //Sixth row of 9 mac units
       mac_unit mac_unit_46 (                 
    .w(sw_output_46),
    .i(sw_output_127),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[0])
  ); 
       mac_unit mac_unit_47 (                 
    .w(sw_output_47),
    .i(sw_output_128),
    .pre_psum(out_array_6[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[1])
  ); 
       mac_unit mac_unit_48 (                 
    .w(sw_output_48),
    .i(sw_output_129),
    .pre_psum(out_array_6[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[2])
  ); 
  mac_unit mac_unit_49 (                 
    .w(sw_output_49),
    .i(sw_output_130),
    .pre_psum(out_array_6[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[3])
  );
    mac_unit mac_unit_50 (                 
    .w(sw_output_50),
    .i(sw_output_131),
    .pre_psum(out_array_6[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[4])
  );
    mac_unit mac_unit_51 (                 
    .w(sw_output_51),
    .i(sw_output_132),
    .pre_psum(out_array_6[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[5])
  ); 
     mac_unit mac_unit_52 (                 
    .w(sw_output_52),
    .i(sw_output_133),
    .pre_psum(out_array_6[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[6])
  ); 
       mac_unit mac_unit_53 (                 
    .w(sw_output_53),
    .i(sw_output_134),
    .pre_psum(out_array_6[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[7])
  ); 
       mac_unit mac_unit_54 (                 
    .w(sw_output_54),
    .i(sw_output_135),
    .pre_psum(out_array_6[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_6[8])
  ); 
   //Seventh row of 9 mac units
       mac_unit mac_unit_55 (                 
    .w(sw_output_55),
    .i(sw_output_136),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[0])
  ); 
       mac_unit mac_unit_56 (                 
    .w(sw_output_56),
    .i(sw_output_137),
    .pre_psum(out_array_7[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[1])
  ); 
  mac_unit mac_unit_57 (                 
    .w(sw_output_57),
    .i(sw_output_138),
    .pre_psum(out_array_7[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[2])
  );
    mac_unit mac_unit_58 (                 
    .w(sw_output_58),
    .i(sw_output_139),
    .pre_psum(out_array_7[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[3])
  );
    mac_unit mac_unit_59 (                 
    .w(sw_output_59),
    .i(sw_output_140),
    .pre_psum(out_array_7[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[4])
  ); 
     mac_unit mac_unit_60 (                 
    .w(sw_output_60),
    .i(sw_output_141),
    .pre_psum(out_array_7[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[5])
  ); 
       mac_unit mac_unit_61 (                 
    .w(sw_output_61),
    .i(sw_output_142),
    .pre_psum(out_array_7[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[6])
  ); 
       mac_unit mac_unit_62 (                 
    .w(sw_output_62),
    .i(sw_output_143),
    .pre_psum(out_array_7[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[7])
  ); 
       mac_unit mac_unit_63 (                 
    .w(sw_output_63),
    .i(sw_output_144),
    .pre_psum(out_array_7[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_7[8])
  ); 
  //Eighth row of 9 mac units
       mac_unit mac_unit_64 (                 
    .w(sw_output_64),
    .i(sw_output_145),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[0])
  ); 
    mac_unit mac_unit_65 (                 
    .w(sw_output_65),
    .i(sw_output_146),
    .pre_psum(out_array_8[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[1])
  ); 
    mac_unit mac_unit_66 (                 
    .w(sw_output_66),
    .i(sw_output_147),
    .pre_psum(out_array_8[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[2])
  ); 
    mac_unit mac_unit_67 (                 
    .w(sw_output_67),
    .i(sw_output_148),
    .pre_psum(out_array_8[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[3])
  ); 
    mac_unit mac_unit_68 (                 
    .w(sw_output_68),
    .i(sw_output_149),
    .pre_psum(out_array_8[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[4])
  ); 
    mac_unit mac_unit_69 (                 
    .w(sw_output_69),
    .i(sw_output_150),
    .pre_psum(out_array_8[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[5])
  ); 
    mac_unit mac_unit_70 (                 
    .w(sw_output_70),
    .i(sw_output_151),
    .pre_psum(out_array_8[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[6])
  ); 
    mac_unit mac_unit_71 (                 
    .w(sw_output_71),
    .i(sw_output_152),
    .pre_psum(out_array_8[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[7])
  ); 
    mac_unit mac_unit_72 (                 
    .w(sw_output_72),
    .i(sw_output_153),
    .pre_psum(out_array_8[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_8[8])
  ); 
    //Ninth row of 9 mac units
    mac_unit mac_unit_73 (                 
    .w(sw_output_73),
    .i(sw_output_154),
    .pre_psum(k),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[0])
  ); 
    mac_unit mac_unit_74 (                 
    .w(sw_output_74),
    .i(sw_output_155),
    .pre_psum(out_array_9[0]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[1])
  ); 
    mac_unit mac_unit_75 (                 
    .w(sw_output_75),
    .i(sw_output_156),
    .pre_psum(out_array_9[1]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[2])
  ); 
    mac_unit mac_unit_76 (                 
    .w(sw_output_76),
    .i(sw_output_157),
    .pre_psum(out_array_9[2]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[3])
  ); 
    mac_unit mac_unit_77 (                 
    .w(sw_output_77),
    .i(sw_output_158),
    .pre_psum(out_array_9[3]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[4])
  ); 
    mac_unit mac_unit_78 (                 
    .w(sw_output_78),
    .i(sw_output_159),
    .pre_psum(out_array_9[4]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[5])
  ); 
    mac_unit mac_unit_79 (                 
    .w(sw_output_79),
    .i(sw_output_160),
    .pre_psum(out_array_9[5]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[6])
  ); 
    mac_unit mac_unit_80 (                 
    .w(sw_output_80),
    .i(sw_output_161),
    .pre_psum(out_array_9[6]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[7])
  ); 
    mac_unit mac_unit_81 (                 
    .w(sw_output_81),
    .i(sw_output_162),
    .pre_psum(out_array_9[7]),
    .clk(clk),
    .reset(reset),
    .new_psum(out_array_9[8])
  ); 
// Assign results to final outputs when pe_array_enable is high
// Assign z to final outputs when pe_array_enable is low to effectively disconnect the pe_array module from the npu
assign final_output_1 = (pe_array_enable == 1'b0) ? 1'bz : out_array_1[8];      
assign final_output_2 = (pe_array_enable == 1'b0) ? 1'bz : out_array_2[8];
assign final_output_3 = (pe_array_enable == 1'b0) ? 1'bz : out_array_3[8];  
assign final_output_4 = (pe_array_enable == 1'b0) ? 1'bz : out_array_4[8];  
assign final_output_5 = (pe_array_enable == 1'b0) ? 1'bz : out_array_5[8];  
assign final_output_6 = (pe_array_enable == 1'b0) ? 1'bz : out_array_6[8];  
assign final_output_7 = (pe_array_enable == 1'b0) ? 1'bz : out_array_7[8];       
assign final_output_8 = (pe_array_enable == 1'b0) ? 1'bz : out_array_8[8];
assign final_output_9 = (pe_array_enable == 1'b0) ? 1'bz : out_array_9[8];

endmodule

