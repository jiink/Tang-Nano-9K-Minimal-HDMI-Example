module pattern(
    input clock,
    input [9:0] spritePos,
    input [12:0] x,
    input [12:0] y,
    output [7:0] r,
    output [7:0] g,
    output [7:0] b
);

wire isSprite;
assign isSprite = (x > spritePos) && (x < spritePos + 100);

wire [7:0] checkerBg;
assign checkerBg = x[7:0] ^ y[7:0];

assign r = checkerBg;
assign g = {8{isSprite}};
assign b = checkerBg;

endmodule