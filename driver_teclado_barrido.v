//Driver para teclado de membrana pasiva (74C922). BARRIDO

module driver_teclado_barrido(
	input clk_50, clk_lento, hab_in,
	output wire [1:0] index_out
	);

//Declaracion de registros y wires
reg [1:0] contador_reg = 2'b00;
reg [1:0] contador_next = 2'b00;
//reg DFF1,DFF2;
reg reg_aux_pos = 1'b0;
reg reg_aux_neg = 1'b0;
wire pos_clk_lento;
wire neg_clk_lento;

//CONEXION DE WIRES
assign pos_clk_lento = clk_lento & !reg_aux_pos;
assign index_out = contador_reg;

always@(posedge clk_50)
	reg_aux_pos = clk_lento;

//Actualizacion del contador y deteccion de flanco positivo
always@(negedge clk_lento)
	contador_reg <= contador_next;

//Logica de conteo
always@(pos_clk_lento, hab_in)
begin
	if(hab_in)
	begin
		if(contador_reg<2'b11)
			contador_next = contador_reg + 2'b01;
		else
			contador_next = 2'b00;
	end
	else
		contador_next = contador_reg;
end


endmodule
	