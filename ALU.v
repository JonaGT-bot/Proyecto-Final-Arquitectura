//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module Alu
(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [3:0] OP,
    output reg [31:0] Res,
    output reg zero
);

always @(*) begin
    case(OP)
        4'b0010: Res = A + B; 		//Suma
        4'b0110: Res = A - B; 		//Resta
        4'b0111: Res = (A < B) ? 32'd1 : 32'd0;		//SLT 
        4'b0000: Res = A & B;		//AND
        4'b0001: Res = A | B;		//OR
        4'b1111: Res = 32'd0;		//NOP
        4'b0100: Res = ($signed(A) > 0) ? 32'd0 : 32'd1;  //BGTZ
        default: Res = 32'd0;
    endcase
	
    if (Res == 32'b0)
        zero = 1'b1;
    else
        zero = 1'b0;
end



endmodule