//Caja negra para el driver del teclado

module caja_negra_teclado(
	input CLOCK_50_in,
	input [3:0]GPIO_in,
	output wire [3:0]num_tecla,
	output wire [3:0]num_barrido
);


//DECLARACIONES DE WIRES
wire reloj;
wire [1:0] filas_2;
wire [3:0] filas_4;
wire w_b1, w_b2, w_b3, w_b4;
wire [1:0] columnas;
wire hab_barrido;
wire [3:0]salida_decimal;

//CONEXIONES DE WIRES
assign num_tecla[3:0] = salida_decimal[3:0];
assign num_barrido[3:0] = filas_4[3:0];

//INSTANCIAS
reductor reductor_u
(
	.clk(CLOCK_50_in),
	.clock_out(reloj)
);


driver_teclado_barrido driver_teclado_barrido_u
(
	.clk_50(CLOCK_50_in),
	.clk_lento(reloj),
	.hab_in(hab_barrido),
	.index_out(filas_2)
);

codificador_2a4 codificador_2a4_u
(
	.in(filas_2),
	.out(filas_4)
);

DeBounce1 DeBounce1_u1
(
	.DeBounce_CLOCK_50(CLOCK_50_in),
	.DeBounce_Reset_InHigh(1'b0),
	.DeBounce_Button_In(GPIO_in[0]),
	.DeBounce_Button_Out(w_b1)
);

DeBounce1 DeBounce1_u2
(
	.DeBounce_CLOCK_50(CLOCK_50_in),
	.DeBounce_Reset_InHigh(1'b0),
	.DeBounce_Button_In(GPIO_in[1]),
	.DeBounce_Button_Out(w_b2)
);

DeBounce1 DeBounce1_u3
(
	.DeBounce_CLOCK_50(CLOCK_50_in),
	.DeBounce_Reset_InHigh(1'b0),
	.DeBounce_Button_In(GPIO_in[2]),
	.DeBounce_Button_Out(w_b3)
);

DeBounce1 DeBounce1_u4
(
	.DeBounce_CLOCK_50(CLOCK_50_in),
	.DeBounce_Reset_InHigh(1'b0),
	.DeBounce_Button_In(GPIO_in[3]),
	.DeBounce_Button_Out(w_b4)
);

driver_teclado_encoding driver_teclado_encoding_u
(
	.b1(w_b1),
	.b2(w_b2),
	.b3(w_b3),
	.b4(w_b4),
	.index_out(columnas),
	.hab_out(hab_barrido)
);

codificador_filas_columnas codificador_filas_columnas_u
(
	.filas_in(filas_2),
	.columnas_in(columnas),
	.hold(~hab_barrido),
	.num_out(salida_decimal)
);

endmodule
