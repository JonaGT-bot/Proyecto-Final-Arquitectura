//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module Mux5b
(
	//Entradas
	input wire RegDst,          //Selector
	input wire [4:0] rt,        //RT
	input wire [4:0] rd,        //RD
	
	//Salida
	output reg [4:0] DataOut    //Dato de salida
);

always @(*) begin
	case (RegDst)
		1'b1: begin
			DataOut = rd;
		end
		1'b0: begin
			DataOut = rt;
		end
	endcase
end

endmodule
