module arithmeticUnit(input logic[31:0] a, b, input logic s, output logic[31:0] y, output logic c_out, o);
  logic[31:0] p;
  logic c_in, c;
  mux2 mux(b, ~b, s, p);
  adder add(a, p, s, y, c);
  assign c_out = s? ~c : c;
  assign o = (~s & ~a[31] & ~b[31] & y[31]) | (~s & a[31] & b[31] & ~y[31]) | (s & ~a[31] & b[31] & y[31]) | (s & a[31] & ~b[31] & ~y[31]);
endmodule
