`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mississippi State University
// ECE 4713 Computer Architecture
// Engineers: 	Sean Owens
//					Troy Huguet
//					Zach Thornton
// 
// Create Date:    09:50:28 03/29/2011 
// Module Name:    Top_Level 
// Project Name: 	 RISC_PROC
// Tool versions:  Xilinx ISE 12.4
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top_Level(
    );



//////////////////////////////////////////////////////////////////////////////////
//
//		Instruction Fetch
//
//////////////////////////////////////////////////////////////////////////////////
reg pc_mux_control,PCWrite;

wire [15:0] pc_in,instr_addr;

Mux_2 PC_mux(.control(pc_mux_control),.in_1(next_pc_in),.in_2(),.out(pc_in));

Reg_16 PC(.clock(clock),.reset(reset),.d(instr_addr),.q(instr_addr),.en(PCWrite));

Adder_2 PC_adder(.in_1(instr_addr),.in_2(),.out(next_pc_in));



//////////////////////////////////////////////////////////////////////////////////
//
//		Instruction Decode
//
//////////////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////////
//
//		Execute
//
//////////////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////////
//
//		Memory Access
//
//////////////////////////////////////////////////////////////////////////////////




//////////////////////////////////////////////////////////////////////////////////
//
//		Write Back
//
//////////////////////////////////////////////////////////////////////////////////
endmodule
