module tb
(
);

reg [6:0]opCode;
reg [3:0]funct;
wire [3:0]operation;


initial
	begin
		opCode = 7'b0110011;
		#100 opCode = 7'b0000011;
		#50 opCode = 7'b0100011;
		#50 opCode = 7'b1100011;
	end
initial
	begin
		funct = 4'b0000;
		#20 funct = 4'b1000;
		#20 funct = 4'b0111;
		#20 funct = 4'b0110;
	end
	
top_module tc1
(
	.opCode(opCode),
	.funct(funct),
	.operation(operation)
);
endmodule