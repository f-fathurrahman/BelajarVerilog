module clock_1s( clk, clk1s );
// assumption: clock frequency is 50 MHz
// using clock 1ms

  input clk;
  output reg clk1s = 0;
  
  // clock 1 ms
  integer count = 0; // count ms
 
  wire clk_1ms;
  clock_1ms CLK1ms( clk, clk_1ms );
 
  always @(posedge clk_1ms)

    if (count == 999)
      begin
        count <= 0;
        clk1s <= 1;
      end
    else
      begin
        count <= count+1;
        clk1s <= 0;
      end

endmodule
