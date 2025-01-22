module sprite_controls
(
    input btn,
    output reg [9:0] pos
);
assign move_btn = ~btn;

always @(posedge move_btn) begin
    if (~&pos) begin 
        pos <= pos + 1;
    end else begin
        pos <= 0;
    end
end

endmodule