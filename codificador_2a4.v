//Codificador de dos bits a 4 bits
module codificador_2a4(
	input [1:0]in,
	output wire [3:0]out
);

//Declaracion de registros y wires
reg [3:0]reg_out = 4'b1111;

//Conexion de wires
assign out = reg_out;

//Logica de salida
always@(*)
case(in)
	2'b00: reg_out = 4'b1110;
	2'b01: reg_out = 4'b1101;
	2'b10: reg_out = 4'b1011;
	2'b11: reg_out = 4'b0111;
	default: reg_out = 4'b1111;
endcase

endmodule
