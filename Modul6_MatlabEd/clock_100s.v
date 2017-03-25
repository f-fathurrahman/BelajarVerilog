module clock_100s( clk, clk100s );
// assumption: clock frequency is 50 MHz
// using clock 1 s

  input clk;
  output reg clk100s = 0;
  
  // clock 1 s
  integer count = 0; // count s
 
  wire clk_1s;
  clock_1s CLK1s( clk, clk_1s );
 
  always @(posedge clk_1s)

    if (count == 99)
      begin
        count <= 0;
        clk100s <= 1;
      end
    else
      begin
        count <= count+1;
        clk100s <= 0;
      end

endmodule
