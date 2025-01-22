module pattern(
    input clock,
    input [12:0] x,
    input [12:0] y,
    output [7:0] r,
    output [7:0] g,
    output [7:0] b
);
wire [7:0] p;
assign p = x[7:0] ^ y[7:0];
assign r = p;
assign g = p;
assign b = p;

endmodule