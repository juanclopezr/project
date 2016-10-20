//Codificador de filas y columnas en 4 bits

module codificador_filas_columnas(
	input [1:0] filas_in,
	input [1:0] columnas_in,
	input hold,
	output wire [3:0]num_out
);


//Declaracion de registrosy wires
reg [3:0]reg_num = 4'b011; //Tecla A
wire [1:0]w_filas;
wire [1:0]w_columnas;
wire [3:0]w_num;

//Conexion de wires
assign w_filas[1:0] = filas_in[1:0];
assign w_columnas[1:0] = columnas_in[1:0];
assign w_num = {w_filas,w_columnas};
assign num_out = reg_num;

//Logica de salida
always@(*)
begin
	if(hold)
		reg_num = w_num;
	else
		reg_num = 4'b011;
end


	

endmodule
