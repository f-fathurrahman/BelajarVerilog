module bcd4dig_to_sseg_case(
  input [3:0] bcd,
  output reg [7:0] sseg );

  always @*
  begin
    case(bcd)
    
      4'b0000: sseg = 8'b1100_0000; // 0
      
      4'b0001: sseg = 8'b1111_1001; // 1
      
      4'b0010: sseg = 8'b1010_0100; // 2
      
      4'b0011: sseg = 8'b1011_0000; // 3
      
      4'b0100: sseg = 8'b1001_1001; // 4
      
      4'b0101: sseg = 8'b1001_0010; // 5
      
      4'b0110: sseg = 8'b1000_0010; // 6
      
      4'b0111: sseg = 8'b1111_1000; // 7
      
      4'b1000: sseg = 8'b1000_0000; // 8
      
      4'b1001: sseg = 8'b1001_0000; // 9
      
      4'b1111: sseg = 8'b1000_0000;

      default: sseg = 8'b0111_1111; // not displaying anything, except dp for other combinations
    endcase
  end
  
endmodule
