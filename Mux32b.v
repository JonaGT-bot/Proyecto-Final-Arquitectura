//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module Mux32b
(
	//Entradas
	input wire En,             //Selector
	input wire [31:0] Data0,	//Entrada 0
	input wire [31:0] Data1,	//Entrada 1
	
	//Salida
	output reg [31:0] DataOut      //Dato de salida
);

always @(*) begin
	case (En)
		1'b1: begin
			DataOut = Data1;
		end
		1'b0: begin
			DataOut = Data0;
		end
	endcase
end

endmodule
