module Control_Unit
(  
input [6:0]Opcode,
output reg [1:0] ALUOp


);
always @ (Opcode)
if (Opcode == 7'b0110011)
	ALUOp = 2'b10;
else if (Opcode == 7'b0000011)
	ALUOp = 2'b00;
else if (Opcode == 7'b0100011)
	ALUOp = 2'b00;
else if (Opcode == 7'b1100011)
	ALUOp = 2'b01;


endmodule























