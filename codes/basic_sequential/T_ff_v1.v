module T_ff( T, clk, rst, Q, Qb);

input T, clk, rst;
output reg Q, Qb;

reg temp = 0;
always@(posedge clk,posedge rst)
begin
if (rst==0) begin
if(T==1) begin
temp=~ temp;
end
else
temp=temp;

end

Q  = temp;
Qb = ~temp;
end

endmodule
