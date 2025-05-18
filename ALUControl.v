//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola
module ALUCtrl(
    input  wire [2:0] AluOp,
    input  wire [5:0] Function,
    output reg  [3:0] OpAlu
);

always @(*) begin
    case (AluOp)
        3'b000: OpAlu = 4'b0010; // ADD (para addi, lw, sw)
        3'b001: OpAlu = 4'b0110; // SUB	(para beq, bne)
		
	// Tipo R
        3'b010: begin 
            case (Function)
                6'b100000: begin
		OpAlu = 4'b0010; // Suma
	end
                6'b100010: begin
		OpAlu = 4'b0110; // Resta
	end
                6'b101010: begin
		OpAlu = 4'b0111; // SLT
	end
                6'b100100: begin
		OpAlu = 4'b0000; // And
	end
                6'b100101: begin
		OpAlu = 4'b0001; // Or
	end

                6'b000000: begin
		OpAlu = 4'b1111; // NOP
	end
            endcase
        end
	//Tipo I
        3'b100: OpAlu = 4'b0000; // ANDI
        3'b101: OpAlu = 4'b0001; // ORI
        3'b110: OpAlu = 4'b0100; // BGTZ
        3'b111: OpAlu = 4'b0111; // SLTI
        default: OpAlu = 4'b1111; // NOP / default
    endcase
end

endmodule