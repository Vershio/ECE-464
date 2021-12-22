/*
	Fall 2022 ECE 464 
	Binary Artificial Neural Network Project
	Alan Zheng
	Due November 17th
*/

module MyDesign(dut_run, 
				dut_busy, 
				reset_b, 
				clk, 
				dut_sram_write_address, 
				dut_sram_write_data, 
				dut_sram_write_enable, 
				dut_sram_read_address, 
				sram_dut_read_data, 
				dut_wmem_read_address, 
				wmem_dut_read_data);
//------------------------------------//
//Control Signals
input dut_run;
output reg dut_busy;
input reset_b; 
input clk;

//Input and Output from Read/Write SRAM
output reg [11:0] dut_sram_write_address;
output reg [15:0] dut_sram_write_data;
output reg dut_sram_write_enable;
output reg [11:0] dut_sram_read_address;
input [15:0] sram_dut_read_data;

//Input and Output from weights SRAM
output reg [11:0] dut_wmem_read_address;
input [15:0] wmem_dut_read_data;

//Design Variables
reg [1:0] state;
reg[3:0] i;
reg[3:0] a, b, c, d;
reg [8:0] convolution0;
reg [8:0] convolution1;
reg [8:0] convolution2;
reg [8:0] convolution3;
reg count;

//Clocked Flip-Flop
always@(posedge clk)
begin
	if(!reset_b) begin		//active low reset
							//Sets variables to 0
		dut_busy <= 0;
		dut_wmem_read_address <= 0;
		dut_sram_read_address <= 0;
		dut_sram_write_enable <= 0;
		dut_sram_write_data <=0;
		count <= 0;
	end
	else begin
		if(dut_run) begin	//Lets testbench know Design is busy
			dut_busy <= 1;
			state <= 0;
			end
							//Counter Machine
		if(dut_busy) begin
			case(state)
			0: begin		//XNOR all the input and weight matrix
			state <= 1;
			convolution0[0] <= ~(sram_dut_read_data[0] ^ wmem_dut_read_data[0]);
			convolution1[0] <= ~(sram_dut_read_data[1] ^ wmem_dut_read_data[0]);
			convolution2[0] <= ~(sram_dut_read_data[4] ^ wmem_dut_read_data[0]);
			convolution3[0] <= ~(sram_dut_read_data[5] ^ wmem_dut_read_data[0]);
			
			convolution0[1] <= ~(sram_dut_read_data[1] ^ wmem_dut_read_data[1]);
			convolution1[1] <= ~(sram_dut_read_data[2] ^ wmem_dut_read_data[1]);
			convolution2[1] <= ~(sram_dut_read_data[5] ^ wmem_dut_read_data[1]);
			convolution3[1] <= ~(sram_dut_read_data[6] ^ wmem_dut_read_data[1]);
			
			convolution0[2] <= ~(sram_dut_read_data[2] ^ wmem_dut_read_data[2]);
			convolution1[2] <= ~(sram_dut_read_data[3] ^ wmem_dut_read_data[2]);
			convolution2[2] <= ~(sram_dut_read_data[6] ^ wmem_dut_read_data[2]);
			convolution3[2] <= ~(sram_dut_read_data[7] ^ wmem_dut_read_data[2]);
			
			convolution0[3] <= ~(sram_dut_read_data[4] ^ wmem_dut_read_data[3]);
			convolution1[3] <= ~(sram_dut_read_data[5] ^ wmem_dut_read_data[3]);
			convolution2[3] <= ~(sram_dut_read_data[8] ^ wmem_dut_read_data[3]);
			convolution3[3] <= ~(sram_dut_read_data[9] ^ wmem_dut_read_data[3]);
			
			convolution0[4] <= ~(sram_dut_read_data[5] ^ wmem_dut_read_data[4]);
			convolution1[4] <= ~(sram_dut_read_data[6] ^ wmem_dut_read_data[4]);
			convolution2[4] <= ~(sram_dut_read_data[9] ^ wmem_dut_read_data[4]);
			convolution3[4] <= ~(sram_dut_read_data[10] ^ wmem_dut_read_data[4]);
			
			convolution0[5] <= ~(sram_dut_read_data[6] ^ wmem_dut_read_data[5]);
			convolution1[5] <= ~(sram_dut_read_data[7] ^ wmem_dut_read_data[5]);
			convolution2[5] <= ~(sram_dut_read_data[10] ^ wmem_dut_read_data[5]);
			convolution3[5] <= ~(sram_dut_read_data[11] ^ wmem_dut_read_data[5]);
			
			convolution0[6] <= ~(sram_dut_read_data[8] ^ wmem_dut_read_data[6]);
			convolution1[6] <= ~(sram_dut_read_data[9] ^ wmem_dut_read_data[6]);
			convolution2[6] <= ~(sram_dut_read_data[12] ^ wmem_dut_read_data[6]);
			convolution3[6] <= ~(sram_dut_read_data[13] ^ wmem_dut_read_data[6]);
			
			convolution0[7] <= ~(sram_dut_read_data[9] ^ wmem_dut_read_data[7]);
			convolution1[7] <= ~(sram_dut_read_data[10] ^ wmem_dut_read_data[7]);
			convolution2[7] <= ~(sram_dut_read_data[13] ^ wmem_dut_read_data[7]);
			convolution3[7] <= ~(sram_dut_read_data[14] ^ wmem_dut_read_data[7]);
			
			convolution0[8] <= ~(sram_dut_read_data[10] ^ wmem_dut_read_data[8]);
			convolution1[8] <= ~(sram_dut_read_data[11] ^ wmem_dut_read_data[8]);
			convolution2[8] <= ~(sram_dut_read_data[14] ^ wmem_dut_read_data[8]);
			convolution3[8] <= ~(sram_dut_read_data[15] ^ wmem_dut_read_data[8]);
			end
			1: begin		//Set count flag high
			state <= 2;
			count <= 1;
			end
			2: begin 		//Compare dut_sram_write_data for positive (>4) or negative (<5)
			if(a > 4) dut_sram_write_data[0] <= 1;
			else dut_sram_write_data[0] <= 0;
			if(b > 4) dut_sram_write_data[1] <= 1;
			else dut_sram_write_data[1] <= 0;
			if(c > 4) dut_sram_write_data[2] <= 1;
			else dut_sram_write_data[2] <= 0;
			if(d > 4) dut_sram_write_data[3] <= 1;
			else dut_sram_write_data[3] <= 0;
			dut_busy <= 0;
			dut_sram_write_enable <= 1;
			dut_sram_write_address <= 0;
			end
			default:;
		endcase
	end
	end
end

always@(count)			//Does the summation of convolution multiplication
begin
a = 0;
b = 0;
c = 0;
d = 0;
	for(i = 0; i < 9; i = i+1)
			begin
				if(convolution0[i]) a=a+1;
				if(convolution1[i]) b=b+1;
				if(convolution2[i]) c=c+1;
				if(convolution3[i]) d=d+1;
			end
end
endmodule