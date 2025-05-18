//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

//Banco de Registro
module BancoReg
( 
	//Entradas
	input wire clk,               //Señal de reloj
	input wire [4:0] Reg1,        //Dirección de lectura 1
	input wire [4:0] Reg2,        //Dirección de lectura 2
	input wire [4:0] WriteAddr,   //Dirección de escritura
	input wire [31:0] Data,       //Dato a escribir
	input wire RegEn,             //Habilita la escritura
	
	//Salidas
	output reg [31:0] DataReg1,   //Dato de la dirección 1
	output reg [31:0] DataReg2    //Dato de la dirección 2
);

    reg [31:0] Banreg [0:31];     //Banco de registro
	
	initial
	begin  
		$readmemb("Datos.txt", Banreg); 
	end 

    always @(*) begin
        DataReg1 = Banreg[Reg1];
        DataReg2 = Banreg[Reg2];
    end

    always @(posedge clk) begin
        if (RegEn == 1) begin
            Banreg[WriteAddr] <= Data;
        end
    end

endmodule
