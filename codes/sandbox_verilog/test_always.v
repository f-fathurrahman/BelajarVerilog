module comparator( input x, input y, output reg z );

  reg p, q;

  // This essentially means that the code followed by
  // always statement will run ONLY when the values of
  // the variable x or y changes.
  // We can have more than two variables in the sensitivity list.
  always @(x, y)
  begin
    p = (~x & ~y);
    q = x & y;
    z = p | q;
  end

endmodule


`timescale 1ns / 1ps
module stimulus;
  reg x;
  reg y;

  wire z;

  comparator uut( .x(x), .y(y), .z(z) );

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, stimulus);

    // initialize inputs
    x = 0;
    y = 0;

    #20 x = 1;
    #20 y = 1;
    #20 y = 0;
    #20 x = 1;
    #20 y = 1;
    #40;
  end

  initial begin
    $monitor("t = %3d x = %2b, y = %2b, z = %d", $time, x, y, z);
  end
endmodule
