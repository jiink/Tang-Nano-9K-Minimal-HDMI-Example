module pattern(
    input clock,
    input [9:0] spritePos,
    input [12:0] x,
    input [12:0] y,
    output [7:0] r,
    output [7:0] g,
    output [7:0] b
);

reg [9:0]liveSpritePos;
wire bottomLine;

localparam [7:0] SPRITE_WIDTH = 255;
wire isSprite;
assign isSprite = (x > liveSpritePos) && (x < liveSpritePos + SPRITE_WIDTH);
//wire spriteBitIdx = 
wire [7:0] checkerBg;
assign checkerBg = x[7:0] ^ y[7:0];

assign r = checkerBg;
assign g = {8{isSprite}};
assign b = checkerBg;

assign bottomLine = (y == 767);
always @(posedge bottomLine) begin
    liveSpritePos <= spritePos;
end

endmodule