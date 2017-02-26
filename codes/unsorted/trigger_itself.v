module trigger_itself;

  reg clk;

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    $monitor("t = %5d , clk = %b", $time, clk);
    #3 $display("t = %5d , clk = %b", $time, clk);
    #100 $finish;
  end

endmodule
