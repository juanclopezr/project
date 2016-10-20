module registro_decimal(
input [3:0] decimal_in,
input habilitador_input,
output wire [3:0] decimal_out_registrado
);

reg [3:0] temp;

always @ (habilitador_input)
	begin
		if(habilitador_input==1'b0)
			begin
				temp=decimal_in;
				
			end
		else
		begin
				
				temp=temp;
				
				
		end
	end


assign decimal_out_registrado=temp;

endmodule
