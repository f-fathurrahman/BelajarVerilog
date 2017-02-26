module music( clk, _reset, speaker );

  input clk, _reset;
  output speaker;

  reg [15:0] counter;

  always @(posedge clk or negedge _reset)
  if(_reset == 0)
    counter <= 0;
  else
    counter <= counter + 1;

  assign speaker = counter[15];

endmodule

module music_tb;

  reg clk, _reset;
  wire speaker;

  music mi( clk, _reset, speaker );

  initial clk = 0;

  always begin
    #10 clk = ~clk;
  end

  always begin
    _reset = 1;
    #10 _reset = 0;
    #10 _reset = 1;
    #20 $finish;
  end

  initial begin
    $monitor("time=%d counter = %d, speaker = %d", $realtime, mi.counter, mi.speaker);
  end

endmodule
