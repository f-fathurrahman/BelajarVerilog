module POPO( input p_in, input clk, output p_out );

  T_ff_altera T_ff0( p_in, clk, p_out );

endmodule
