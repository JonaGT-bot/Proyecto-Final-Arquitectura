//Jonathan Garcia Tovar
//Laura Vanessa Quintero Arreola

module Extensor
(
    input wire [15:0] dataIN,
    output wire [31:0] dataOUT
);

assign dataOUT = {{16{dataIN[15]}}, dataIN};

endmodule
