
//Driver para teclado de membrana pasiva (74C922). ENCODING
module driver_teclado_encoding(
    input b1,b2,b3,b4,
    output wire [1:0]index_out,
    output wire hab_out
    );

//Declaracion de registros y wires
reg hab_out_reg = 1'b0;
reg [1:0] index_out_reg = 2'b00;
wire wb1,wb2,wb3,wb4;
wire [3:0] but = {wb4,wb3,wb2,wb1};

//Conexion de clables
assign hab_out = hab_out_reg;
assign index_out = index_out_reg;
assign wb1 = b1;
assign wb2 = b2;
assign wb3 = b3;
assign wb4 = b4;

//Logica de salida
always@(*)
case(but)
	4'b1110: begin index_out_reg = 2'b00; hab_out_reg=1'b0; end
	4'b1101: begin index_out_reg = 2'b01; hab_out_reg=1'b0; end
	4'b1011: begin index_out_reg = 2'b10; hab_out_reg=1'b0; end
	4'b0111: begin index_out_reg = 2'b11; hab_out_reg=1'b0; end
	default: begin index_out_reg = 2'bzz; hab_out_reg=1'b1; end
endcase
endmodule
