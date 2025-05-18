module Datapath_tb;
    reg         clk;
    wire [31:0] PCOut;
    wire [31:0] Inst;

Datapath Datapath_I (
    .clk(clk),
    .Inst(Inst),
    .PCOut(PCOut)

);

initial begin
    clk = 0;
	forever #50 clk = ~clk;
end
	
initial begin
    #2000; 
    $stop;
end
endmodule
