/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module getZVN_13 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    input [15:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  always @* begin
    z = 1'h0;
    n = 1'h0;
    v = 1'h0;
    
    case (alufn[0+0-:1])
      1'h0: begin
        z = (~|out);
        n = out[15+0-:1];
        v = (a[15+0-:1] & (!out[15+0-:1]) & b[15+0-:1]) | ((!a[15+0-:1]) & out[15+0-:1] & !b[15+0-:1]);
      end
      1'h1: begin
        z = !(out[15+0-:1]);
        n = out[15+0-:1];
        v = (a[15+0-:1] & (!out[15+0-:1]) & !b[15+0-:1]) | ((!a[15+0-:1]) & out[15+0-:1] & b[15+0-:1]);
      end
    endcase
  end
endmodule
