//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module SUM
(
	input  [31:0] data_in,
	output reg [31:0] data_out
);

	always @(*) begin
		data_out = data_in + 4;
	end

endmodule
