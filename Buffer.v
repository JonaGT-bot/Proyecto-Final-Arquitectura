module BufferParam #(parameter WIDTH = 32) (
    input [WIDTH-1:0] DataIn,
    input CLK,
    output reg [WIDTH-1:0] DataOut
);

always @(posedge CLK) begin
	DataOut <= DataIn;
end

endmodule
