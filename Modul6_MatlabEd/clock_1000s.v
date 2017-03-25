module clock_1000s( clk, clk1000s );
// assumption: clock frequency is 50 MHz
// using clock 1 s

  input clk;
  output reg clk1000s = 0;
  
  // clock 1 s
  integer count = 0; // count s
 
  wire clk_1s;
  clock_1s CLK1s( clk, clk_1s );
 
  always @(posedge clk_1s)

    if (count == 999)
      begin
        count <= 0;
        clk1000s <= 1;
      end
    else
      begin
        count <= count+1;
        clk1000s <= 0;
      end

endmodule
