//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module MemDatos
( 
	//Entradas
	input wire clk,                 //Señal de reloj
	input wire [31:0] Addr,         //Dirección de escritura
	input wire [31:0] Data,         //Dato a escribir
	input wire MemWrite,            //Habilita la escritura
	input wire MemRead,             //Habilita la lectura
	
	//Salida
	output reg [31:0] ReadMemData   //Dato de lectura
);

    reg [31:0] MemData [0:127];  //Memoria de datos

    initial begin 
	$readmemb("DatosMemoria.txt", MemData); 
    end
	
	// Lectura
    always @(*) begin
	if(MemRead)
	ReadMemData = MemData[Addr];
    end

	// Escritura
    always @(posedge clk) begin
	if (MemWrite)
		MemData[Addr] <= Data;
    end

endmodule
