// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Mon Feb 27 21:25:22 2017"

module jkff_altera(
	J,
	clk,
	K,
	prn,
	clrn,
	Q
);


input wire	J;
input wire	clk;
input wire	K;
input wire	prn;
input wire	clrn;
output reg	Q;






always@(posedge clk or negedge clrn or negedge prn)
begin
if (!clrn)
	begin
	Q <= 0;
	end
else
	begin
if (!prn)
	begin
	Q <= 1;
	end
else
	begin
	Q <= ~Q & J | Q & ~K;
	end
	end
end


endmodule
