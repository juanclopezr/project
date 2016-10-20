module reductor
  #(
    parameter N=32, // number of bits in counter
    parameter M=750000,
	 parameter dosM=1500000 // mod-M
   )
   (
    input wire clk, 
    output wire clock_out
   );
   //signal declaration
   reg [N-1:0] contador;
	reg reloj_out;
   //wire [N-1:0] r_next;
   always @(posedge clk)
		begin
				 if (contador <= M)
					begin
						contador = contador + 1;
						reloj_out=1'b0;
					end
				 else if ((contador>M)&&(contador<=dosM))
					 begin
					  contador= contador +1;
					  reloj_out=1'b1;
					 end
				else
					begin
					 contador=0;	
					end
		end
		  
			
		
		
		
assign clock_out=reloj_out;
endmodule