/******************************************************************************

    File Name:  pwm_gen.v
      Version:  4.0
         Date:  July 14th, 2009
  Description:  PWM Generation Module
  
  
  SVN Revision Information:
  SVN $Revision: 10769 $
  SVN $Date: 2009-11-05 15:38:11 -0800 (Thu, 05 Nov 2009) $  
  
  

 COPYRIGHT 2009 BY ACTEL 
 THE INFORMATION CONTAINED IN THIS DOCUMENT IS SUBJECT TO LICENSING RESTRICTIONS 
 FROM ACTEL CORP.  IF YOU ARE NOT IN POSSESSION OF WRITTEN AUTHORIZATION FROM 
 ACTEL FOR USE OF THIS FILE, THEN THE FILE SHOULD BE IMMEDIATELY DESTROYED AND 
 NO BACK-UP OF THE FILE SHOULD BE MADE. 
 
FUNCTIONAL DESCRIPTION: 
Refer to the CorePWM Handbook.
******************************************************************************/
`timescale 1 ns / 1 ns // timescale for following modules

module pwm_gen #(
parameter PWM_NUM = 8,
parameter APB_DWIDTH = 8,
parameter DAC_MODE = 0
) (
input  PRESETN, 
input  PCLK, 
output [PWM_NUM:1] PWM,
input [APB_DWIDTH-1:0] period_cnt,
input [PWM_NUM:1] pwm_enable_reg,
input [PWM_NUM*APB_DWIDTH:1] pwm_posedge_reg ,
input [PWM_NUM*APB_DWIDTH:1] pwm_negedge_reg ,
input sync_pulse
);

//reg declarations
reg [PWM_NUM:1] PWM_int;
reg [PWM_NUM*(APB_DWIDTH+1):1] acc;
//////main//////
assign PWM[PWM_NUM:1] = PWM_int[PWM_NUM:1];
////separate but identical reg structure for each output
genvar z;
generate for (z=1; z<=PWM_NUM; z=z+1)
begin: PWM_output_generation
// PWM output generatzon
if (DAC_MODE[z-1]==0)
 begin
  always @(negedge PRESETN or posedge PCLK)
  begin
   if (!PRESETN) 
   begin
         PWM_int[z] <= 1'b0;  
   end
   else
   begin
     if (pwm_enable_reg[z] == 1'b0)
     begin
         PWM_int[z] <= 1'b0;
     end 
     else if ((pwm_enable_reg[z] == 1'b1) && (sync_pulse == 1'b1) )
     begin
       if ((pwm_posedge_reg[z*APB_DWIDTH:(z-1)*APB_DWIDTH + 1] == pwm_negedge_reg[z*APB_DWIDTH:(z-1)*APB_DWIDTH + 1]) && 
            ((pwm_posedge_reg[z*APB_DWIDTH:(z-1)*APB_DWIDTH + 1]) == period_cnt)) //toggle mode
       begin
         PWM_int[z] <= ~PWM_int[z];
       end
       else if ((pwm_enable_reg[z] == 1'b1) && (sync_pulse == 1'b1) && 
                (pwm_posedge_reg[z*APB_DWIDTH:(z-1)*APB_DWIDTH + 1]) == period_cnt)  //set PWM out to 1.
       begin
   	     PWM_int[z] <= 1'b1;   
       end
       else if ((pwm_enable_reg[z] == 1'b1) && (sync_pulse == 1'b1) &&
                (pwm_negedge_reg[z*APB_DWIDTH:(z-1)*APB_DWIDTH + 1]) == period_cnt)  //set PWM out to 0.
       begin
   	     PWM_int[z] <= 1'b0;   
	   end
	 end
   end
  end
 end
else
  begin
  always @(negedge PRESETN or posedge PCLK)
  begin
   if (!PRESETN) 
   begin
        acc[z*(APB_DWIDTH+1):(z-1)*(APB_DWIDTH + 1)+1] <= 0;
        PWM_int[z] <= 1'b0;  
   end
   else
   begin
     if (pwm_enable_reg[z] == 1'b0)
     begin
         PWM_int[z] <= 1'b0;
     end 
	 else if (pwm_enable_reg[z] == 1'b1)
	 begin
        acc[z*(APB_DWIDTH+1):(z-1)*(APB_DWIDTH + 1)+1] <= acc[(z*(APB_DWIDTH+1))-1:(z-1)*(APB_DWIDTH + 1)+1] + pwm_negedge_reg[z*APB_DWIDTH:(z-1)*APB_DWIDTH + 1];
        PWM_int[z] <= acc[z*(APB_DWIDTH+1)]; 
     end 
   end
  end
 end
end
endgenerate

endmodule



