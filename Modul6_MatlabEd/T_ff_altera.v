module T_ff_altera(
	T,
	clk,
	Q
);


input wire	T;
input wire	clk;
output reg	Q;

always@(posedge clk)
begin
	Q <= Q ^ T;
end


endmodule
