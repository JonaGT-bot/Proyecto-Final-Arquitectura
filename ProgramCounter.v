//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module PC
(
	input clk,                  //Señales de reloj
	input [31:0]data_in,        //Dato de entrada
	output reg [31:0]data_out   //Dirección que se busca
);

	initial begin
		data_out = 0;
	end

	//Funcionamiento interno
	always @(posedge clk) begin
		data_out <= data_in;
	end
	
endmodule
