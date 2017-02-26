module counter_4bit_up( clock, reset, enable, count );

  input clock;
  input reset;
  input enable;
  output reg [3:0] count;

  always @(posedge clock)
  begin
    if(reset == 1'b1)
      count <= 4'b0000;
    else if(enable == 1'b1)
      count <= count + 1'b1;
  end

endmodule
