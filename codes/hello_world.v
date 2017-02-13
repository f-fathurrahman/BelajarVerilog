module hello_world;

  initial begin
    //$display("Hello World from ffr!");
    $monitor("Helloo World from ffr!");
    #10 $finish;
  end

endmodule
