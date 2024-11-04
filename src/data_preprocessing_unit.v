`timescale 10ns / 1ns

 module data_preprocessing_unit#(parameter WIDTH =4,INPUT_WIDTH = 9,INPUT_HEIGHT = 9,KERNEL_SIZE = 3,WEIGHT_HEIGHT = 3,WEIGHT_WIDTH = 3,PADDING_SIZE=0,STRIDE=1,batch_size = ((((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*9)-1)/81))
(
input wire clk,                                           
input wire data_preprocessing_unit_enable,    //enable signal from control_unit                            
input wire [(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0] input_feature_maps,        //inputs from input_buffer     
input wire [(WIDTH*WEIGHT_HEIGHT*WEIGHT_WIDTH)-1:0] weights,                //weights from weight_buffer
input wire [31:0] control_signal,              //control signal         
output wire [WIDTH-1:0] sw_input_1,          //   81 input signals to the interconnect
output wire [WIDTH-1:0] sw_input_2,
output wire [WIDTH-1:0] sw_input_3,
output wire [WIDTH-1:0] sw_input_4,
output wire [WIDTH-1:0] sw_input_5,
output wire [WIDTH-1:0] sw_input_6,
output wire [WIDTH-1:0] sw_input_7,
output wire [WIDTH-1:0] sw_input_8,
output wire [WIDTH-1:0] sw_input_9,
output wire [WIDTH-1:0] sw_input_10,              
output wire [WIDTH-1:0] sw_input_11,
output wire [WIDTH-1:0] sw_input_12,
output wire [WIDTH-1:0] sw_input_13,
output wire [WIDTH-1:0] sw_input_14,
output wire [WIDTH-1:0] sw_input_15,
output wire [WIDTH-1:0] sw_input_16,
output wire [WIDTH-1:0] sw_input_17,
output wire [WIDTH-1:0] sw_input_18,
output wire [WIDTH-1:0] sw_input_19,
output wire [WIDTH-1:0] sw_input_20,
output wire [WIDTH-1:0] sw_input_21,
output wire [WIDTH-1:0] sw_input_22,
output wire [WIDTH-1:0] sw_input_23,
output wire [WIDTH-1:0] sw_input_24,
output wire [WIDTH-1:0] sw_input_25,
output wire [WIDTH-1:0] sw_input_26,
output wire [WIDTH-1:0] sw_input_27,
output wire [WIDTH-1:0] sw_input_28,
output wire [WIDTH-1:0] sw_input_29,
output wire [WIDTH-1:0] sw_input_30,
output wire [WIDTH-1:0] sw_input_31,
output wire [WIDTH-1:0] sw_input_32,
output wire [WIDTH-1:0] sw_input_33,
output wire [WIDTH-1:0] sw_input_34,
output wire [WIDTH-1:0] sw_input_35,
output wire [WIDTH-1:0] sw_input_36,
output wire [WIDTH-1:0] sw_input_37,
output wire [WIDTH-1:0] sw_input_38,
output wire [WIDTH-1:0] sw_input_39,
output wire [WIDTH-1:0] sw_input_40,
output wire [WIDTH-1:0] sw_input_41,
output wire [WIDTH-1:0] sw_input_42,
output wire [WIDTH-1:0] sw_input_43,
output wire [WIDTH-1:0] sw_input_44,
output wire [WIDTH-1:0] sw_input_45,
output wire [WIDTH-1:0] sw_input_46,
output wire [WIDTH-1:0] sw_input_47,
output wire [WIDTH-1:0] sw_input_48,
output wire [WIDTH-1:0] sw_input_49,
output wire [WIDTH-1:0] sw_input_50,
output wire [WIDTH-1:0] sw_input_51,
output wire [WIDTH-1:0] sw_input_52,
output wire [WIDTH-1:0] sw_input_53,
output wire [WIDTH-1:0] sw_input_54,
output wire [WIDTH-1:0] sw_input_55,
output wire [WIDTH-1:0] sw_input_56,
output wire [WIDTH-1:0] sw_input_57,
output wire [WIDTH-1:0] sw_input_58,
output wire [WIDTH-1:0] sw_input_59,
output wire [WIDTH-1:0] sw_input_60,
output wire [WIDTH-1:0] sw_input_61,
output wire [WIDTH-1:0] sw_input_62,
output wire [WIDTH-1:0] sw_input_63,
output wire [WIDTH-1:0] sw_input_64,
output wire [WIDTH-1:0] sw_input_65,
output wire [WIDTH-1:0] sw_input_66,
output wire [WIDTH-1:0] sw_input_67,
output wire [WIDTH-1:0] sw_input_68,
output wire [WIDTH-1:0] sw_input_69,
output wire [WIDTH-1:0] sw_input_70,
output wire [WIDTH-1:0] sw_input_71,
output wire [WIDTH-1:0] sw_input_72,
output wire [WIDTH-1:0] sw_input_73,
output wire [WIDTH-1:0] sw_input_74,
output wire [WIDTH-1:0] sw_input_75,
output wire [WIDTH-1:0] sw_input_76,
output wire [WIDTH-1:0] sw_input_77,
output wire [WIDTH-1:0] sw_input_78,
output wire [WIDTH-1:0] sw_input_79,
output wire [WIDTH-1:0] sw_input_80,
output wire [WIDTH-1:0] sw_input_81,
output wire [ WIDTH-1:0] stationary_signal_1,    //   81 input signals to the interconnect
output wire [ WIDTH-1:0] stationary_signal_2,
output wire [ WIDTH-1:0] stationary_signal_3,
output wire [ WIDTH-1:0] stationary_signal_4,
output wire [ WIDTH-1:0] stationary_signal_5,
output wire [ WIDTH-1:0] stationary_signal_6,
output wire [ WIDTH-1:0] stationary_signal_7,
output wire [ WIDTH-1:0] stationary_signal_8,
output wire [ WIDTH-1:0] stationary_signal_9,
output wire [ WIDTH-1:0] stationary_signal_10,
output wire [ WIDTH-1:0] stationary_signal_11,
output wire [ WIDTH-1:0] stationary_signal_12,
output wire [ WIDTH-1:0] stationary_signal_13,
output wire [ WIDTH-1:0] stationary_signal_14,
output wire [ WIDTH-1:0] stationary_signal_15,
output wire [ WIDTH-1:0] stationary_signal_16,
output wire [ WIDTH-1:0] stationary_signal_17,
output wire [ WIDTH-1:0] stationary_signal_18,
output wire [ WIDTH-1:0] stationary_signal_19,
output wire [ WIDTH-1:0] stationary_signal_20,
output wire [ WIDTH-1:0] stationary_signal_21,
output wire [ WIDTH-1:0] stationary_signal_22,
output wire [ WIDTH-1:0] stationary_signal_23,
output wire [ WIDTH-1:0] stationary_signal_24,
output wire [ WIDTH-1:0] stationary_signal_25,
output wire [ WIDTH-1:0] stationary_signal_26,
output wire [ WIDTH-1:0] stationary_signal_27,
output wire [ WIDTH-1:0] stationary_signal_28,
output wire [ WIDTH-1:0] stationary_signal_29,
output wire [ WIDTH-1:0] stationary_signal_30,
output wire [ WIDTH-1:0] stationary_signal_31,
output wire [ WIDTH-1:0] stationary_signal_32,
output wire [ WIDTH-1:0] stationary_signal_33,
output wire [ WIDTH-1:0] stationary_signal_34,
output wire [ WIDTH-1:0] stationary_signal_35,
output wire [ WIDTH-1:0] stationary_signal_36,
output wire [ WIDTH-1:0] stationary_signal_37,
output wire [ WIDTH-1:0] stationary_signal_38,
output wire [ WIDTH-1:0] stationary_signal_39,
output wire [ WIDTH-1:0] stationary_signal_40,
output wire [ WIDTH-1:0] stationary_signal_41,
output wire [ WIDTH-1:0] stationary_signal_42,
output wire [ WIDTH-1:0] stationary_signal_43,
output wire [ WIDTH-1:0] stationary_signal_44,
output wire [ WIDTH-1:0] stationary_signal_45,
output wire [ WIDTH-1:0] stationary_signal_46,
output wire [ WIDTH-1:0] stationary_signal_47,
output wire [ WIDTH-1:0] stationary_signal_48,
output wire [ WIDTH-1:0] stationary_signal_49,
output wire [ WIDTH-1:0] stationary_signal_50,
output wire [ WIDTH-1:0] stationary_signal_51,
output wire [ WIDTH-1:0] stationary_signal_52,
output wire [ WIDTH-1:0] stationary_signal_53,
output wire [ WIDTH-1:0] stationary_signal_54,
output wire [ WIDTH-1:0] stationary_signal_55,
output wire [ WIDTH-1:0] stationary_signal_56,
output wire [ WIDTH-1:0] stationary_signal_57,
output wire [ WIDTH-1:0] stationary_signal_58,
output wire [ WIDTH-1:0] stationary_signal_59,
output wire [ WIDTH-1:0] stationary_signal_60,
output wire [ WIDTH-1:0] stationary_signal_61,
output wire [ WIDTH-1:0] stationary_signal_62,
output wire [ WIDTH-1:0] stationary_signal_63,
output wire [ WIDTH-1:0] stationary_signal_64,
output wire [ WIDTH-1:0] stationary_signal_65,          
output wire [ WIDTH-1:0] stationary_signal_66,
output wire [ WIDTH-1:0] stationary_signal_67,
output wire [ WIDTH-1:0] stationary_signal_68,
output wire [ WIDTH-1:0] stationary_signal_69,
output wire [ WIDTH-1:0] stationary_signal_70,
output wire [ WIDTH-1:0] stationary_signal_71,
output wire [ WIDTH-1:0] stationary_signal_72,
output wire [ WIDTH-1:0] stationary_signal_73,
output wire [ WIDTH-1:0] stationary_signal_74,
output wire [ WIDTH-1:0] stationary_signal_75,
output wire [ WIDTH-1:0] stationary_signal_76,
output wire [ WIDTH-1:0] stationary_signal_77,
output wire [ WIDTH-1:0] stationary_signal_78,
output wire [ WIDTH-1:0] stationary_signal_79,
output wire [ WIDTH-1:0] stationary_signal_80,
output wire [ WIDTH-1:0] stationary_signal_81,
output wire buffer_activate                                
);

//counters
reg [31:0] i, j,m,n,r;                            
reg [31:0] q=0;
reg [31:0] t=0;
reg [31:0] b=0;
// input wire [(WIDTH*INPUT_WIDTH*INPUT_HEIGHT)-1:0] input_feature_maps is stored in a 2d matrix called two_dimensiona_matrix
(* keep = "true" *) reg [WIDTH-1:0] two_dimensional_matrix[((INPUT_HEIGHT+(2*PADDING_SIZE))-1):0][((INPUT_WIDTH+(2*PADDING_SIZE))-1):0]; 
// shuffled_matrix stores toeplitz matrix
reg [WIDTH-1:0] shuffled_matrix[((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*9)-1:0];
reg [WIDTH-1:0] weight_storage_matrix[(WEIGHT_HEIGHT *WEIGHT_WIDTH )-1:0];   // matrix to store weights for convolution
reg [WIDTH-1:0] batch_register_1=0;                                           //81 batch registers for inputs sent to interconnect
reg [WIDTH-1:0] batch_register_2=0;
reg [WIDTH-1:0] batch_register_3=0;
reg [WIDTH-1:0] batch_register_4=0;
reg [WIDTH-1:0] batch_register_5=0;
reg [WIDTH-1:0] batch_register_6=0;
reg [WIDTH-1:0] batch_register_7=0;
reg [WIDTH-1:0] batch_register_8=0;
reg [WIDTH-1:0] batch_register_9=0;
reg [WIDTH-1:0] batch_register_10=0;               
reg [WIDTH-1:0] batch_register_11=0;
reg [WIDTH-1:0] batch_register_12=0;
reg [WIDTH-1:0] batch_register_13=0;
reg [WIDTH-1:0] batch_register_14=0;
reg [WIDTH-1:0] batch_register_15=0;
reg [WIDTH-1:0] batch_register_16=0;
reg [WIDTH-1:0] batch_register_17=0;
reg [WIDTH-1:0] batch_register_18=0;
reg [WIDTH-1:0] batch_register_19=0;
reg [WIDTH-1:0] batch_register_20=0;
reg [WIDTH-1:0] batch_register_21=0;
reg [WIDTH-1:0] batch_register_22=0;
reg [WIDTH-1:0] batch_register_23=0;
reg [WIDTH-1:0] batch_register_24=0;
reg [WIDTH-1:0] batch_register_25=0;
reg [WIDTH-1:0] batch_register_26=0;
reg [WIDTH-1:0] batch_register_27=0;
reg [WIDTH-1:0] batch_register_28=0;
reg [WIDTH-1:0] batch_register_29=0;
reg [WIDTH-1:0] batch_register_30=0;
reg [WIDTH-1:0] batch_register_31=0;
reg [WIDTH-1:0] batch_register_32=0;
reg [WIDTH-1:0] batch_register_33=0;
reg [WIDTH-1:0] batch_register_34=0;
reg [WIDTH-1:0] batch_register_35=0;
reg [WIDTH-1:0] batch_register_36=0;
reg [WIDTH-1:0] batch_register_37=0;
reg [WIDTH-1:0] batch_register_38=0;
reg [WIDTH-1:0] batch_register_39=0;
reg [WIDTH-1:0] batch_register_40=0;
reg [WIDTH-1:0] batch_register_41=0;
reg [WIDTH-1:0] batch_register_42=0;
reg [WIDTH-1:0] batch_register_43=0;
reg [WIDTH-1:0] batch_register_44=0;
reg [WIDTH-1:0] batch_register_45=0;
reg [WIDTH-1:0] batch_register_46=0;
reg [WIDTH-1:0] batch_register_47=0;
reg [WIDTH-1:0] batch_register_48=0;
reg [WIDTH-1:0] batch_register_49=0;
reg [WIDTH-1:0] batch_register_50=0;
reg [WIDTH-1:0] batch_register_51=0;
reg [WIDTH-1:0] batch_register_52=0;
reg [WIDTH-1:0] batch_register_53=0;
reg [WIDTH-1:0] batch_register_54=0;
reg [WIDTH-1:0] batch_register_55=0;
reg [WIDTH-1:0] batch_register_56=0;
reg [WIDTH-1:0] batch_register_57=0;
reg [WIDTH-1:0] batch_register_58=0;
reg [WIDTH-1:0] batch_register_59=0;
reg [WIDTH-1:0] batch_register_60=0;
reg [WIDTH-1:0] batch_register_61=0;
reg [WIDTH-1:0] batch_register_62=0;
reg [WIDTH-1:0] batch_register_63=0;
reg [WIDTH-1:0] batch_register_64=0;
reg [WIDTH-1:0] batch_register_65=0;
reg [WIDTH-1:0] batch_register_66=0;
reg [WIDTH-1:0] batch_register_67=0;
reg [WIDTH-1:0] batch_register_68=0;
reg [WIDTH-1:0] batch_register_69=0;
reg [WIDTH-1:0] batch_register_70=0;
reg [WIDTH-1:0] batch_register_71=0;
reg [WIDTH-1:0] batch_register_72=0;
reg [WIDTH-1:0] batch_register_73=0;
reg [WIDTH-1:0] batch_register_74=0;
reg [WIDTH-1:0] batch_register_75=0;
reg [WIDTH-1:0] batch_register_76=0;
reg [WIDTH-1:0] batch_register_77=0;
reg [WIDTH-1:0] batch_register_78=0;
reg [WIDTH-1:0] batch_register_79=0;
reg [WIDTH-1:0] batch_register_80=0;
reg [WIDTH-1:0] batch_register_81=0;
reg register_buffer_activate;
reg [WIDTH-1:0] weight_batch_register_1=0;                       //81 batch registers for 81 weights sent to interconnect        
reg [WIDTH-1:0] weight_batch_register_2=0;
reg [WIDTH-1:0] weight_batch_register_3=0;
reg [WIDTH-1:0] weight_batch_register_4=0;
reg [WIDTH-1:0] weight_batch_register_5=0;
reg [WIDTH-1:0] weight_batch_register_6=0;
reg [WIDTH-1:0] weight_batch_register_7=0;
reg [WIDTH-1:0] weight_batch_register_8=0;
reg [WIDTH-1:0] weight_batch_register_9=0;
reg [WIDTH-1:0] weight_batch_register_10=0;               
reg [WIDTH-1:0] weight_batch_register_11=0;
reg [WIDTH-1:0] weight_batch_register_12=0;
reg [WIDTH-1:0] weight_batch_register_13=0;
reg [WIDTH-1:0] weight_batch_register_14=0;
reg [WIDTH-1:0] weight_batch_register_15=0;
reg [WIDTH-1:0] weight_batch_register_16=0;
reg [WIDTH-1:0] weight_batch_register_17=0;
reg [WIDTH-1:0] weight_batch_register_18=0;
reg [WIDTH-1:0] weight_batch_register_19=0;
reg [WIDTH-1:0] weight_batch_register_20=0;
reg [WIDTH-1:0] weight_batch_register_21=0;
reg [WIDTH-1:0] weight_batch_register_22=0;
reg [WIDTH-1:0] weight_batch_register_23=0;
reg [WIDTH-1:0] weight_batch_register_24=0;
reg [WIDTH-1:0] weight_batch_register_25=0;
reg [WIDTH-1:0] weight_batch_register_26=0;
reg [WIDTH-1:0] weight_batch_register_27=0;
reg [WIDTH-1:0] weight_batch_register_28=0;
reg [WIDTH-1:0] weight_batch_register_29=0;
reg [WIDTH-1:0] weight_batch_register_30=0;
reg [WIDTH-1:0] weight_batch_register_31=0;
reg [WIDTH-1:0] weight_batch_register_32=0;
reg [WIDTH-1:0] weight_batch_register_33=0;
reg [WIDTH-1:0] weight_batch_register_34=0;
reg [WIDTH-1:0] weight_batch_register_35=0;
reg [WIDTH-1:0] weight_batch_register_36=0;
reg [WIDTH-1:0] weight_batch_register_37=0;
reg [WIDTH-1:0] weight_batch_register_38=0;
reg [WIDTH-1:0] weight_batch_register_39=0;
reg [WIDTH-1:0] weight_batch_register_40=0;
reg [WIDTH-1:0] weight_batch_register_41=0;
reg [WIDTH-1:0] weight_batch_register_42=0;
reg [WIDTH-1:0] weight_batch_register_43=0;
reg [WIDTH-1:0] weight_batch_register_44=0;
reg [WIDTH-1:0] weight_batch_register_45=0;
reg [WIDTH-1:0] weight_batch_register_46=0;
reg [WIDTH-1:0] weight_batch_register_47=0;
reg [WIDTH-1:0] weight_batch_register_48=0;
reg [WIDTH-1:0] weight_batch_register_49=0;
reg [WIDTH-1:0] weight_batch_register_50=0;
reg [WIDTH-1:0] weight_batch_register_51=0;
reg [WIDTH-1:0] weight_batch_register_52=0;
reg [WIDTH-1:0] weight_batch_register_53=0;
reg [WIDTH-1:0] weight_batch_register_54=0;
reg [WIDTH-1:0] weight_batch_register_55=0;
reg [WIDTH-1:0] weight_batch_register_56=0;
reg [WIDTH-1:0] weight_batch_register_57=0;
reg [WIDTH-1:0] weight_batch_register_58=0;
reg [WIDTH-1:0] weight_batch_register_59=0;
reg [WIDTH-1:0] weight_batch_register_60=0;
reg [WIDTH-1:0] weight_batch_register_61=0;
reg [WIDTH-1:0] weight_batch_register_62=0;
reg [WIDTH-1:0] weight_batch_register_63=0;
reg [WIDTH-1:0] weight_batch_register_64=0;
reg [WIDTH-1:0] weight_batch_register_65=0;
reg [WIDTH-1:0] weight_batch_register_66=0;
reg [WIDTH-1:0] weight_batch_register_67=0;
reg [WIDTH-1:0] weight_batch_register_68=0;
reg [WIDTH-1:0] weight_batch_register_69=0;
reg [WIDTH-1:0] weight_batch_register_70=0;
reg [WIDTH-1:0] weight_batch_register_71=0;
reg [WIDTH-1:0] weight_batch_register_72=0;
reg [WIDTH-1:0] weight_batch_register_73=0;
reg [WIDTH-1:0] weight_batch_register_74=0;
reg [WIDTH-1:0] weight_batch_register_75=0;
reg [WIDTH-1:0] weight_batch_register_76=0;
reg [WIDTH-1:0] weight_batch_register_77=0;
reg [WIDTH-1:0] weight_batch_register_78=0;
reg [WIDTH-1:0] weight_batch_register_79=0;
reg [WIDTH-1:0] weight_batch_register_80=0;
reg [WIDTH-1:0] weight_batch_register_81=0;

always @(posedge clk) begin
        if(data_preprocessing_unit_enable) begin                       //Preprocessing starts when enable signal is high
                        for(r =0; r < (WEIGHT_HEIGHT *WEIGHT_WIDTH); r=r+1)begin   //weight_storage_matrix stores all the weights from weight_buffer
                                    weight_storage_matrix[r] <= weights[((r + 1) * WIDTH) - 1 -: WIDTH];  
                        end  
                        //Modifying Input Matrix for Zero Padding and Different Stride Lengths    
                        for (i = 0; i < ((INPUT_HEIGHT+(2*PADDING_SIZE))); i = i + 1) begin
                                    for (j = 0; j < ((INPUT_WIDTH+(2*PADDING_SIZE))); j = j + 1) begin
                                                if(PADDING_SIZE ==1) begin          
                                                            if (i ==0 || j ==0 || i == (INPUT_HEIGHT+ PADDING_SIZE) || j ==(INPUT_WIDTH+ PADDING_SIZE) ) begin             
                                                                         two_dimensional_matrix[i][j] = {WIDTH{1'b0}} ;                 //zero padding is done for corner positions[1 extra row and columns of zeroes are added]  
                                                            end else  begin
                                                                         two_dimensional_matrix[i][j] = input_feature_maps[(((i-PADDING_SIZE) * INPUT_WIDTH + (j-(PADDING_SIZE)) + 1) * WIDTH) - 1 -: WIDTH];      
                                                            end
                                                end else if (PADDING_SIZE ==2) begin
                                                            if (i ==0 || j ==0 ||i ==1 || j ==1 || i == ((INPUT_HEIGHT+ 2*PADDING_SIZE)-1) ||  j == ((INPUT_WIDTH+ 2*PADDING_SIZE)-1)|| i == ((INPUT_HEIGHT+ 2*PADDING_SIZE)-2) || j ==((INPUT_WIDTH+ 2*PADDING_SIZE)-2) ) begin                
                                                                         two_dimensional_matrix[i][j] = {WIDTH{1'b0}} ;                //zero padding is done for corner positions[2 extra rows and columns of zeroes are added]
                                                            end else  begin
                                                                         two_dimensional_matrix[i][j] = input_feature_maps[(((i-PADDING_SIZE) * INPUT_HEIGHT + (j-(PADDING_SIZE)) + 1) * WIDTH) - 1 -: WIDTH];   //value is stored for positions without zero padding
                                                            end
                                                end else  begin
                                                            two_dimensional_matrix[i][j] = input_feature_maps[((((i-PADDING_SIZE) * INPUT_WIDTH) + (j-(PADDING_SIZE)) + 1) * WIDTH) - 1 -: WIDTH];         //when there is no padding
                                                end
                                    end
                        end
                        $display("Displaying Input Feature Maps:");       //Input Feature maps is printed in tcl console
                                     for (i = 0; i < ((INPUT_HEIGHT+(2*PADDING_SIZE))); i = i + 1) begin
                                                for (j = 0; j < ((INPUT_WIDTH+(2*PADDING_SIZE)));j = j + 1) begin
                                                            $write("%d ",two_dimensional_matrix[i][j]);
                                                end
                                                            $write("\n"); // Move to the next line for the next row
                                     end
                       $display("Displaying Weights Matrix:");           //weights is is printed in tcl console
                                     for (i = 0; i < (WEIGHT_HEIGHT*WEIGHT_WIDTH); i = i + 1) begin
                                                $write("%d ", weight_storage_matrix[i]);
                                                if ((i + 1) % 9 == 0) begin
                                                            $write("\n"); 
                                                end
                                     end
          //Transforming  the two_dimensional matrix to obtain toeplitz matrix for convolution
                if(KERNEL_SIZE==3) begin  
                        for (j = 0; j < ((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)); j = j + STRIDE) begin                              
                                   for (m = 0; m < ((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)); m = m + STRIDE) begin         
                                                for (n = 0; n < 9; n = n + 1) begin        
                                                            if ( (n <= 2)) begin                  //toeplitz matrix is created considering kernle size =9
                                                                         shuffled_matrix[q] = two_dimensional_matrix[j][n+m];             
                                                                         $display("the shuffled matrix is %h",shuffled_matrix[q]);
                                                            end else if ( n > 2 &&  n <= 5) begin
                                                                         shuffled_matrix[q] = two_dimensional_matrix[j+1][n+m-3];
                                                                         $display("the shuffled matrix is %h",shuffled_matrix[q]);
                                                            end else if (n>5 && n <= 8) begin
                                                                         shuffled_matrix[q] = two_dimensional_matrix[j+2][n+m-6];
                                                                         $display("the shuffled matrix is %h",shuffled_matrix[q]);
                                                            end
                                                q=q+1;
                                                end                   
                                   end   
                        end
             $display("Display shuffled Matrix:");  //Toeplitz matrix is printed in tcl console
                     for (i = 0; i < ((((INPUT_HEIGHT-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*(((INPUT_WIDTH-KERNEL_SIZE+(2*PADDING_SIZE)+1)/STRIDE))*9); i = i + 1) begin
                        $write("%d ",shuffled_matrix[i]);
                        if((i+1)%9==0)begin
                                   $write("\n"); // Move to the next line for the next row
                        end
                        if((i+1)%81==0)begin
                                   $write("\n"); // Move to the next line for the next row
                        end
                    end  
                end

        for ( b = 0;b  <= batch_size; b = b + 1) begin    //Batch division starts
                #1;
                register_buffer_activate <= 1'b0;
                batch_register_1<=shuffled_matrix[0+(81*b)];
                batch_register_2<=shuffled_matrix[1+(81*b)];
                batch_register_3<=shuffled_matrix[2+(81*b)];
                batch_register_4<=shuffled_matrix[3+(81*b)];
                batch_register_5<=shuffled_matrix[4+(81*b)];
                batch_register_6<=shuffled_matrix[5+(81*b)];
                batch_register_7<=shuffled_matrix[6+(81*b)];                
                batch_register_8<=shuffled_matrix[7+(81*b)];
                batch_register_9<=shuffled_matrix[8+(81*b)];
                batch_register_10<=shuffled_matrix[9+(81*b)];
                batch_register_11<=shuffled_matrix[10+(81*b)];
                batch_register_12<=shuffled_matrix[11+(81*b)];
                batch_register_13<=shuffled_matrix[12+(81*b)];
                batch_register_14<=shuffled_matrix[13+(81*b)];
                batch_register_15<=shuffled_matrix[14+(81*b)];
                batch_register_16<=shuffled_matrix[15+(81*b)];
                batch_register_17<=shuffled_matrix[16+(81*b)];
                batch_register_18<=shuffled_matrix[17+(81*b)];
                batch_register_19<=shuffled_matrix[18+(81*b)];
                batch_register_20<=shuffled_matrix[19+(81*b)];
                batch_register_21<=shuffled_matrix[20+(81*b)];
                batch_register_22<=shuffled_matrix[21+(81*b)];
                batch_register_23<=shuffled_matrix[22+(81*b)];
                batch_register_24<=shuffled_matrix[23+(81*b)];
                batch_register_25<=shuffled_matrix[24+(81*b)];
                batch_register_26<=shuffled_matrix[25+(81*b)];
                batch_register_27<=shuffled_matrix[26+(81*b)];
                batch_register_28<=shuffled_matrix[27+(81*b)];
                batch_register_29<=shuffled_matrix[28+(81*b)];
                batch_register_30<=shuffled_matrix[29+(81*b)];
                batch_register_31<=shuffled_matrix[30+(81*b)];
                batch_register_32<=shuffled_matrix[31+(81*b)];
                batch_register_33<=shuffled_matrix[32+(81*b)];
                batch_register_34<=shuffled_matrix[33+(81*b)];
                batch_register_35<=shuffled_matrix[34+(81*b)];
                batch_register_36<=shuffled_matrix[35+(81*b)];
                batch_register_37<=shuffled_matrix[36+(81*b)];
                batch_register_38<=shuffled_matrix[37+(81*b)];
                batch_register_39<=shuffled_matrix[38+(81*b)];
                batch_register_40<=shuffled_matrix[39+(81*b)];
                batch_register_41<=shuffled_matrix[40+(81*b)];
                batch_register_42<=shuffled_matrix[41+(81*b)];
                batch_register_43<=shuffled_matrix[42+(81*b)];
                batch_register_44<=shuffled_matrix[43+(81*b)];
                batch_register_45<=shuffled_matrix[44+(81*b)];
                batch_register_46<=shuffled_matrix[45+(81*b)];
                batch_register_47<=shuffled_matrix[46+(81*b)];
                batch_register_48<=shuffled_matrix[47+(81*b)];
                batch_register_49<=shuffled_matrix[48+(81*b)];
                batch_register_50<=shuffled_matrix[49+(81*b)];
                batch_register_51<=shuffled_matrix[50+(81*b)];
                batch_register_52<=shuffled_matrix[51+(81*b)];
                batch_register_53<=shuffled_matrix[52+(81*b)];
                batch_register_54<=shuffled_matrix[53+(81*b)];
                batch_register_55<=shuffled_matrix[54+(81*b)];
                batch_register_56<=shuffled_matrix[55+(81*b)];
                batch_register_57<=shuffled_matrix[56+(81*b)];
                batch_register_58<=shuffled_matrix[57+(81*b)];
                batch_register_59<=shuffled_matrix[58+(81*b)];
                batch_register_60<=shuffled_matrix[59+(81*b)];
                batch_register_61<=shuffled_matrix[60+(81*b)];
                batch_register_62<=shuffled_matrix[61+(81*b)];
                batch_register_63<=shuffled_matrix[62+(81*b)];
                batch_register_64 <= shuffled_matrix[63+(81*b)];
                batch_register_65<=shuffled_matrix[64+(81*b)];
                batch_register_66<=shuffled_matrix[65+(81*b)];
                batch_register_67<=shuffled_matrix[66+(81*b)];
                batch_register_68<=shuffled_matrix[67+(81*b)];
                batch_register_69<=shuffled_matrix[68+(81*b)];
                batch_register_70<=shuffled_matrix[69+(81*b)];
                batch_register_71<=shuffled_matrix[70+(81*b)];
                batch_register_72<=shuffled_matrix[71+(81*b)];
                batch_register_73<=shuffled_matrix[72+(81*b)];
                batch_register_74<=shuffled_matrix[73+(81*b)];
                batch_register_75<=shuffled_matrix[74+(81*b)];
                batch_register_76<=shuffled_matrix[75+(81*b)];
                batch_register_77<=shuffled_matrix[76+(81*b)];
                batch_register_78<=shuffled_matrix[77+(81*b)];
                batch_register_79<=shuffled_matrix[78+(81*b)];
                batch_register_80<=shuffled_matrix[79+(81*b)];
                batch_register_81 <=shuffled_matrix[80+(81*b)];
                if(control_signal[1]==1'b0)begin                     //weight batch division for input stationary
                weight_batch_register_1<=weight_storage_matrix[0];
                weight_batch_register_2<=weight_storage_matrix[1];
                weight_batch_register_3<=weight_storage_matrix[2];
                weight_batch_register_4<=weight_storage_matrix[3];
                weight_batch_register_5<=weight_storage_matrix[4];
                weight_batch_register_6<=weight_storage_matrix[5];
                weight_batch_register_7<=weight_storage_matrix[6];                
                weight_batch_register_8<=weight_storage_matrix[7];
                weight_batch_register_9<=weight_storage_matrix[8];
                end else begin
                weight_batch_register_1<=weight_storage_matrix[0+(81*b)];
                weight_batch_register_2<=weight_storage_matrix[1+(81*b)];
                weight_batch_register_3<=weight_storage_matrix[2+(81*b)];
                weight_batch_register_4<=weight_storage_matrix[3+(81*b)];
                weight_batch_register_5<=weight_storage_matrix[4+(81*b)];
                weight_batch_register_6<=weight_storage_matrix[5+(81*b)];
                weight_batch_register_7<=weight_storage_matrix[6+(81*b)];                
                weight_batch_register_8<=weight_storage_matrix[7+(81*b)];
                weight_batch_register_9<=weight_storage_matrix[8+(81*b)];
                weight_batch_register_10<=weight_storage_matrix[9+(81*b)];
                weight_batch_register_11<=weight_storage_matrix[10+(81*b)];
                weight_batch_register_12<=weight_storage_matrix[11+(81*b)];
                weight_batch_register_13<=weight_storage_matrix[12+(81*b)];
                weight_batch_register_14<=weight_storage_matrix[13+(81*b)];
                weight_batch_register_15<=weight_storage_matrix[14+(81*b)];
                weight_batch_register_16<=weight_storage_matrix[15+(81*b)];
                weight_batch_register_17<=weight_storage_matrix[16+(81*b)];
                weight_batch_register_18<=weight_storage_matrix[17+(81*b)];
                weight_batch_register_19<=weight_storage_matrix[18+(81*b)];
                weight_batch_register_20<=weight_storage_matrix[19+(81*b)];
                weight_batch_register_21<=weight_storage_matrix[20+(81*b)];
                weight_batch_register_22<=weight_storage_matrix[21+(81*b)];
                weight_batch_register_23<=weight_storage_matrix[22+(81*b)];
                weight_batch_register_24<=weight_storage_matrix[23+(81*b)];
                weight_batch_register_25<=weight_storage_matrix[24+(81*b)];
                weight_batch_register_26<=weight_storage_matrix[25+(81*b)];
                weight_batch_register_27<=weight_storage_matrix[26+(81*b)];
                weight_batch_register_28<=weight_storage_matrix[27+(81*b)];
                weight_batch_register_29<=weight_storage_matrix[28+(81*b)];
                weight_batch_register_30<=weight_storage_matrix[29+(81*b)];
                weight_batch_register_31<=weight_storage_matrix[30+(81*b)];
                weight_batch_register_32<=weight_storage_matrix[31+(81*b)];
                weight_batch_register_33<=weight_storage_matrix[32+(81*b)];
                weight_batch_register_34<=weight_storage_matrix[33+(81*b)];
                weight_batch_register_35<=weight_storage_matrix[34+(81*b)];
                weight_batch_register_36<=weight_storage_matrix[35+(81*b)];
                weight_batch_register_37<=weight_storage_matrix[36+(81*b)];
                weight_batch_register_38<=weight_storage_matrix[37+(81*b)];
                weight_batch_register_39<=weight_storage_matrix[38+(81*b)];
                weight_batch_register_40<=weight_storage_matrix[39+(81*b)];
                weight_batch_register_41<=weight_storage_matrix[40+(81*b)];
                weight_batch_register_42<=weight_storage_matrix[41+(81*b)];
                weight_batch_register_43<=weight_storage_matrix[42+(81*b)];
                weight_batch_register_44<=weight_storage_matrix[43+(81*b)];
                weight_batch_register_45<=weight_storage_matrix[44+(81*b)];
                weight_batch_register_46<=weight_storage_matrix[45+(81*b)];
                weight_batch_register_47<=weight_storage_matrix[46+(81*b)];
                weight_batch_register_48<=weight_storage_matrix[47+(81*b)];
                weight_batch_register_49<=weight_storage_matrix[48+(81*b)];
                weight_batch_register_50<=weight_storage_matrix[49+(81*b)];
                weight_batch_register_51<=weight_storage_matrix[50+(81*b)];
                weight_batch_register_52<=weight_storage_matrix[51+(81*b)];
                weight_batch_register_53<=weight_storage_matrix[52+(81*b)];
                weight_batch_register_54<=weight_storage_matrix[53+(81*b)];
                weight_batch_register_55<=weight_storage_matrix[54+(81*b)];
                weight_batch_register_56<=weight_storage_matrix[55+(81*b)];
                weight_batch_register_57<=weight_storage_matrix[56+(81*b)];
                weight_batch_register_58<=weight_storage_matrix[57+(81*b)];
                weight_batch_register_59<=weight_storage_matrix[58+(81*b)];
                weight_batch_register_60<=weight_storage_matrix[59+(81*b)];
                weight_batch_register_61<=weight_storage_matrix[60+(81*b)];
                weight_batch_register_62<=weight_storage_matrix[61+(81*b)];
                weight_batch_register_63<=weight_storage_matrix[62+(81*b)];
                weight_batch_register_64 <= weight_storage_matrix[63+(81*b)];
                weight_batch_register_65<=weight_storage_matrix[64+(81*b)];
                weight_batch_register_66<=weight_storage_matrix[65+(81*b)];
                weight_batch_register_67<=weight_storage_matrix[66+(81*b)];
                weight_batch_register_68<=weight_storage_matrix[67+(81*b)];
                weight_batch_register_69<=weight_storage_matrix[68+(81*b)];
                weight_batch_register_70<=weight_storage_matrix[69+(81*b)];
                weight_batch_register_71<=weight_storage_matrix[70+(81*b)];
                weight_batch_register_72<=weight_storage_matrix[71+(81*b)];
                weight_batch_register_73<=weight_storage_matrix[72+(81*b)];
                weight_batch_register_74<=weight_storage_matrix[73+(81*b)];
                weight_batch_register_75<=weight_storage_matrix[74+(81*b)];
                weight_batch_register_76<=weight_storage_matrix[75+(81*b)];
                weight_batch_register_77<=weight_storage_matrix[76+(81*b)];
                weight_batch_register_78<=weight_storage_matrix[77+(81*b)];
                weight_batch_register_79<=weight_storage_matrix[78+(81*b)];
                weight_batch_register_80<=weight_storage_matrix[79+(81*b)];
                weight_batch_register_81 <=weight_storage_matrix[80+(81*b)];
                end 
                #1000;
                register_buffer_activate <= 1'b1;
                #200;               
        end
        end
end

// Assign z to sw_input and stationary signal when data_preprocessing_unit_enable is low to effectively disconnect the data_preprocessing_unit module from the npu
// Assign valid value to sw_input and stationary signal  when data_preprocessing_unit_enable is high 
// Assign batch or weight register to sw_input and stationary signal  depending on control signal
assign sw_input_1 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_1 : weight_batch_register_1;
assign sw_input_2 =(data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_2 : weight_batch_register_2;
assign sw_input_3 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_3 : weight_batch_register_3;
assign sw_input_4 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_4 : weight_batch_register_4;
assign sw_input_5  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_5 : weight_batch_register_5;
assign sw_input_6  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_6 : weight_batch_register_6;
assign sw_input_7  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_7 : weight_batch_register_7;
assign sw_input_8  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_8 : weight_batch_register_8;
assign sw_input_9  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_9 : weight_batch_register_9;
assign sw_input_10 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_10 : weight_batch_register_10;
assign sw_input_11 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_11 : weight_batch_register_11;
assign sw_input_12 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_12 : weight_batch_register_12;
assign sw_input_13 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_13 : weight_batch_register_13;
assign sw_input_14 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_14 : weight_batch_register_14;
assign sw_input_15 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_15 : weight_batch_register_15;
assign sw_input_16 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_16 : weight_batch_register_16;
assign sw_input_17 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_17 : weight_batch_register_17;
assign sw_input_18 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_18 : weight_batch_register_18;
assign sw_input_19 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_19 : weight_batch_register_19;
assign sw_input_20 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_20 : weight_batch_register_20;
assign sw_input_21 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_21 : weight_batch_register_21;
assign sw_input_22 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_22 : weight_batch_register_22;
assign sw_input_23 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_23 : weight_batch_register_23;
assign sw_input_24 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_24 : weight_batch_register_24;
assign sw_input_25 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_25 : weight_batch_register_25;
assign sw_input_26 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_26 : weight_batch_register_26;
assign sw_input_27 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_27 : weight_batch_register_27;
assign sw_input_28 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_28 : weight_batch_register_28;
assign sw_input_29 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_29 : weight_batch_register_29;
assign sw_input_30 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_30 : weight_batch_register_30;
assign sw_input_31 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_31 : weight_batch_register_31;
assign sw_input_32 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_32 : weight_batch_register_32;
assign sw_input_33 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_33 : weight_batch_register_33;
assign sw_input_34 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_34 : weight_batch_register_34;
assign sw_input_35 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_35 : weight_batch_register_35;
assign sw_input_36 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_36 : weight_batch_register_36;
assign sw_input_37 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_37 : weight_batch_register_37;
assign sw_input_38 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_38 : weight_batch_register_38;
assign sw_input_39 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_39 : weight_batch_register_39;
assign sw_input_40 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_40 : weight_batch_register_40;
assign sw_input_41 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_41 : weight_batch_register_41;
assign sw_input_42 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_42 : weight_batch_register_42;
assign sw_input_43 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_43 : weight_batch_register_43;
assign sw_input_44 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_44 : weight_batch_register_44;
assign sw_input_45 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_45 : weight_batch_register_45;
assign sw_input_46 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_46 : weight_batch_register_46;
assign sw_input_47 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_47 : weight_batch_register_47;
assign sw_input_48 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_48 : weight_batch_register_48;
assign sw_input_49 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_49 : weight_batch_register_49;
assign sw_input_50 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_50 : weight_batch_register_50;
assign sw_input_51 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_51 : weight_batch_register_51;
assign sw_input_52 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_52 : weight_batch_register_52;
assign sw_input_53 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_53 : weight_batch_register_53;
assign sw_input_54 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_54 : weight_batch_register_54;
assign sw_input_55 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_55 : weight_batch_register_55;
assign sw_input_56 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_56 : weight_batch_register_56;
assign sw_input_57 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_57 : weight_batch_register_57;
assign sw_input_58 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_58 : weight_batch_register_58;
assign sw_input_59 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_59 : weight_batch_register_59;
assign sw_input_60 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_60 : weight_batch_register_60;
assign sw_input_61 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_61 : weight_batch_register_61;
assign sw_input_62 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_62 : weight_batch_register_62;
assign sw_input_63 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_63 : weight_batch_register_63;
assign sw_input_64 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_64 : weight_batch_register_64;
assign sw_input_65 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_65 : weight_batch_register_65;
assign sw_input_66 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_66 : weight_batch_register_66;
assign sw_input_67 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_67 : weight_batch_register_67;
assign sw_input_68 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_68 : weight_batch_register_68;
assign sw_input_69 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_69 : weight_batch_register_69;
assign sw_input_70 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_70 : weight_batch_register_70;
assign sw_input_71 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_71 : weight_batch_register_71;
assign sw_input_72 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_72 : weight_batch_register_72;
assign sw_input_73 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_73 : weight_batch_register_73;
assign sw_input_74 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_74 : weight_batch_register_74;
assign sw_input_75 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_75 : weight_batch_register_75;
assign sw_input_76 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_76 : weight_batch_register_76;
assign sw_input_77 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_77 : weight_batch_register_77;
assign sw_input_78 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_78 : weight_batch_register_78;
assign sw_input_79 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_79 : weight_batch_register_79;
assign sw_input_80 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_80 : weight_batch_register_80;
assign sw_input_81 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} : 
(control_signal[1]== 1'b0) ? batch_register_81 : weight_batch_register_81;

assign stationary_signal_1 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_1 : batch_register_1;
assign stationary_signal_2 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_2 : batch_register_2;
assign stationary_signal_3 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_3 : batch_register_3;
assign stationary_signal_4 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_4 : batch_register_4;
assign stationary_signal_5 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_5 : batch_register_5;
assign stationary_signal_6 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_6 : batch_register_6;
assign stationary_signal_7 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_7 : batch_register_7;
assign stationary_signal_8 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1]== 1'b0) ? weight_batch_register_8 : batch_register_8;
assign stationary_signal_9  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_9 : batch_register_9;
assign stationary_signal_10 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_10 : batch_register_10;
assign stationary_signal_11 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_11 : batch_register_11;
assign stationary_signal_12 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_12 : batch_register_12;
assign stationary_signal_13 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_13 : batch_register_13;
assign stationary_signal_14  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_14 : batch_register_14;
assign stationary_signal_15  = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_15 : batch_register_15;
assign stationary_signal_16 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_16 : batch_register_16;
assign stationary_signal_17 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_17 : batch_register_17;
assign stationary_signal_18 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_18 : batch_register_18;
assign stationary_signal_19 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_19 : batch_register_19;
assign stationary_signal_20 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_20 : batch_register_20;
assign stationary_signal_21 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_21 : batch_register_21;
assign stationary_signal_22 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_22 : batch_register_22;
assign stationary_signal_23 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_23 : batch_register_23;
assign stationary_signal_24 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_24 : batch_register_24;
assign stationary_signal_25 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_25 : batch_register_25;
assign stationary_signal_26 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_26 : batch_register_26;
assign stationary_signal_27 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_27 : batch_register_27;
assign stationary_signal_28 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_28 : batch_register_28;
assign stationary_signal_29 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_29 : batch_register_29;
assign stationary_signal_30 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_30 : batch_register_30;
assign stationary_signal_31 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_31 : batch_register_31;
assign stationary_signal_32 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_32 : batch_register_32;
assign stationary_signal_33 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_33 : batch_register_33;
assign stationary_signal_34 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_34 : batch_register_34;
assign stationary_signal_35 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_35 : batch_register_35;
assign stationary_signal_36 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_36 : batch_register_36;
assign stationary_signal_37 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_37 : batch_register_37;
assign stationary_signal_38 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_38 : batch_register_38;
assign stationary_signal_39 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_39 : batch_register_39;
assign stationary_signal_40 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_40 : batch_register_40;
assign stationary_signal_41 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_41 : batch_register_41;
assign stationary_signal_42 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_42 : batch_register_42;
assign stationary_signal_43 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_43 : batch_register_43;
assign stationary_signal_44 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_44 : batch_register_44;
assign stationary_signal_45 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_45 : batch_register_45;
assign stationary_signal_46 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_46 : batch_register_46;
assign stationary_signal_47 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_47 : batch_register_47;
assign stationary_signal_48 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_48 : batch_register_48;
assign stationary_signal_49 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_49 : batch_register_49;
assign stationary_signal_50 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_50 : batch_register_50;
assign stationary_signal_51 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_51 : batch_register_51;
assign stationary_signal_52 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_52 : batch_register_52;
assign stationary_signal_53 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_53 : batch_register_53;
assign stationary_signal_54 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_54 : batch_register_54;
assign stationary_signal_55 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_55 : batch_register_55;
assign stationary_signal_56 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_56 : batch_register_56;
assign stationary_signal_57 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_57 : batch_register_57;
assign stationary_signal_58 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_58 : batch_register_58;
assign stationary_signal_59 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_59 : batch_register_59;
assign stationary_signal_60 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_60 : batch_register_60;
assign stationary_signal_61 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_61 : batch_register_61;
assign stationary_signal_62 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_62 : batch_register_62;
assign stationary_signal_63 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_63 : batch_register_63;
assign stationary_signal_64 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_64 : batch_register_64;
assign stationary_signal_65 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_65 : batch_register_65;
assign stationary_signal_66 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_66 : batch_register_66;
assign stationary_signal_67 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_67 : batch_register_67;
assign stationary_signal_68 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_68 : batch_register_68;
assign stationary_signal_69 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_69 : batch_register_69;
assign stationary_signal_70 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_70 : batch_register_70;
assign stationary_signal_71 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_71 : batch_register_71;
assign stationary_signal_72 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_72 : batch_register_72;
assign stationary_signal_73 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_73 : batch_register_73;
assign stationary_signal_74 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_74 : batch_register_74;
assign stationary_signal_75 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_75 : batch_register_75;
assign stationary_signal_76 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_76 : batch_register_76;
assign stationary_signal_77 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_77 : batch_register_77;
assign stationary_signal_78 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_78 : batch_register_78;
assign stationary_signal_79 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_79 : batch_register_79;
assign stationary_signal_80 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_80 : batch_register_80;
assign stationary_signal_81 = (data_preprocessing_unit_enable == 1'b0) ? {WIDTH{1'bz}} :
(control_signal[1] == 1'b0) ? weight_batch_register_81 : batch_register_81;
   
assign  buffer_activate = register_buffer_activate;
    
endmodule

