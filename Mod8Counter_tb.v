`timescale 1s/100ms
`include "Mod8Counter.v"

module Mod8Counter_tb ();

	reg clk;
	reg clr;
	wire [2:0]Q;

	Mod8Counter myCounter(clk, clr, Q);

	initial
	begin 
		$monitor("Count = %4b", Q);
		$dumpfile("mod8Counter.vcd");
		$dumpvars(0, Mod8Counter_tb);

		clr <= 0;
		clk <= 1; #1;
		clr <= 1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1; //Count 2

		clk <= 1; #1;
		clk <= 0; #1; //Count 3

		clk <= 1; #1;
		clk <= 0; #1; //Count 4

		clk <= 1; #1;
		clk <= 0; #1; //Count 5

		clk <= 1; #1;
		clk <= 0; #1; //Count 6

		clk <= 1; #1;
		clk <= 0; #1; //Count 7

		clk <= 1; #1;
		clk <= 0; #1; //Count 8

		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1;//Count 2

		clr <= 0;
		clk <= 1; #1;
		clr <= 1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1; //Count 1

		clk <= 1; #1;
		clk <= 0; #1; //Count 2

		$finish;
	end

endmodule