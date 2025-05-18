//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module ALUBranch
(
	input  [31:0] data1,
	input  [31:0] data2,
	output reg [31:0] data_out
);

	always @(*) begin
		data_out = data1 + data2;
	end

endmodule