module clock_1ms( clk, clk1ms );
// assumption: clock frequency is 50 MHz

  input clk;
  output reg clk1ms = 0;  

  integer count = 0;
 
  always @(posedge clk)

    if (count == 49999)
      begin
        count <= 0;
        clk1ms <= 1;
      end
    else
      begin
        count <= count+1;
        clk1ms <= 0;
      end

endmodule
