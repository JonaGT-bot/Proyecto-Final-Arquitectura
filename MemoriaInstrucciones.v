//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module MemoriaInst
(
	input [31:0] Dir,       //Dato de entrada
	output reg [31:0] Inst  //Dato de salida
);

	reg [7:0]MemInst[0:999]; //Memoria

	initial
	begin  
		$readmemb("Instrucciones.txt", MemInst); 
	end 

	always @(*) begin
		Inst[31:24] <= MemInst[Dir];
		Inst[23:16] <= MemInst[Dir+1];
		Inst[15:8] <= MemInst[Dir+2];
		Inst[7:0] <= MemInst[Dir+3];
	end
	
endmodule
