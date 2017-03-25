module counter_1s( input clk, output reg out );

  localparam N = 26;

  reg [N-1:0] cnt;
  wire [N-1:0] q_next;
  
  always@(posedge clk)
  begin
		if(cnt == 49_999_999 )
		begin
			out	<= out + 1'b1;
		  cnt <= 1'b0;
		end
		else
	    cnt <=	cnt + 1'b1;
	end
 
endmodule
