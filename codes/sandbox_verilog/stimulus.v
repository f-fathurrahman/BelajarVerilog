// testbench for comparator module
`timescale 1ns / 1ps

`include "comparator.v"
//`include "test_udp.v"

module stimulus;

  // inputs
  reg x;
  reg y;

  //outputs
  wire z;

  // Instantiate the Unit Under Test (UUT)
  comparator uut( .x(x), .y(y), .z(z) );

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, stimulus);
    x = 0;
    y = 0;

    #20 x = 1;
    #20 y = 1;
    #20 y = 0;
    #20 x = 1;
    #40;
  end

  initial begin
    $monitor("x = %d, y = %d, z = %d", x, y, z);
  end

endmodule
