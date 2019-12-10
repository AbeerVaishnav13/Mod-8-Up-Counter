module Mod8Counter (
	input clk,    // Clock
	input clr,  // Asynchronous clear
	output [2:0]Q
);

reg [2:0]Q;

always @(posedge clk or negedge clr) 
begin 
	if(~clr) 
	begin
		Q <= 3'b000;
	end 
	else 
	begin
		Q <= Q + 1;
	end
end

endmodule