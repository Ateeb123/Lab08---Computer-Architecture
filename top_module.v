module top_module
(
	input [6:0]opCode,
	input [3:0] funct,
	output [3:0] operation,
	output wire branch, MemRead, MemtoReg, MemWrite, AluSrc, RegWrite

);

wire [1:0]AluOp;


Control_Unit cu1
(
	.Opcode(opCode),
	.branch(branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.ALUOp(AluOp),
	.MemWrite(MemWrite),
	.AluSrc(AluSrc),
	.RegWrite(RegWrite)
);


ALU_Control ac1
(
	.FromAlu(AluOp),
	.Funct(funct),
	.Operation(operation)
);

endmodule