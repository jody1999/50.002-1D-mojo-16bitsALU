/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_16bits_7 (
    input [15:0] a,
    input [15:0] b,
    input [1:0] alufn,
    output reg [15:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  reg [15:0] what;
  
  always @* begin
    
    case (alufn[0+0-:1])
      1'h0: begin
        what = a + b;
      end
      1'h1: begin
        what = a - b;
      end
      default: begin
        what = 1'h0;
      end
    endcase
    n = what[15+0-:1];
    v = (a[15+0-:1] & b[15+0-:1] & (~what[15+0-:1])) | ((~a[15+0-:1]) & (~b[15+0-:1]) & what[15+0-:1]);
    z = (~|what);
    out = what;
  end
endmodule
