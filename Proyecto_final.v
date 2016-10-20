
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module Proyecto_final(

	//////////// CLOCK //////////
	CLOCK_50,

	//////////// LED //////////
	LED,

	//////////// KEY //////////
	KEY,

	//////////// SW //////////
	SW,

	//////////// SDRAM //////////
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_N,
	DRAM_DQ,
	DRAM_DQM,
	DRAM_RAS_N,
	DRAM_WE_N,

	//////////// EPCS //////////
	EPCS_ASDO,
	EPCS_DATA0,
	EPCS_DCLK,
	EPCS_NCSO,

	//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
	GPIO1,
	GPIO1_IN,

	//////////// GPIO_1, GPIO_1 connect to GPIO Default //////////
	GPIO2,
	GPIO2_IN 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;

//////////// LED //////////
output		     [7:0]		LED;

//////////// KEY //////////
input 		     [1:0]		KEY;

//////////// SW //////////
input 		     [3:0]		SW;

//////////// SDRAM //////////
output		    [12:0]		DRAM_ADDR;
output		     [1:0]		DRAM_BA;
output		          		DRAM_CAS_N;
output		          		DRAM_CKE;
output		          		DRAM_CLK;
output		          		DRAM_CS_N;
inout 		    [15:0]		DRAM_DQ;
output		     [1:0]		DRAM_DQM;
output		          		DRAM_RAS_N;
output		          		DRAM_WE_N;

//////////// EPCS //////////
output		          		EPCS_ASDO;
input 		          		EPCS_DATA0;
output		          		EPCS_DCLK;
output		          		EPCS_NCSO;

//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
inout 		    [33:0]		GPIO1;
input 		     [1:0]		GPIO1_IN;

//////////// GPIO_1, GPIO_1 connect to GPIO Default //////////
inout 		    [33:0]		GPIO2;
input 		     [1:0]		GPIO2_IN;


//=======================================================
//  REG/WIRE declarations
//=======================================================



nios2 u0 (
        .clk_clk                                   (CLOCK_50),                                   //                                clk.clk
        .epcs_dclk                                 (EPCS_DCLK),                                 //                               epcs.dclk
        .epcs_sce                                  (EPCS_NCSO),                                  //                                   .sce
        .epcs_sdo                                  (EPCS_ASDO),                                  //                                   .sdo
        .epcs_data0                                (EPCS_DATA0),                                //                                   .data0
		  .port_jp1_export 									(GPIO2),  // parallel_port_0_external_interface.export
        .port_key_export                           (KEY),                           //                           port_key.export
        .port_led_export                           (),                           //                           port_led.export
        .ram_clk_clk                               (DRAM_CLK),                               //                            ram_clk.clk
        .reset_reset_n                             (KEY[0]),                             //                              reset.reset_n
        .sdram_addr                                (DRAM_ADDR),                                //                              sdram.addr
        .sdram_ba                                  (DRAM_BA),                                  //                                   .ba
        .sdram_cas_n                               (DRAM_CAS_N),                               //                                   .cas_n
        .sdram_cke                                 (DRAM_CKE),                                 //                                   .cke
        .sdram_cs_n                                (DRAM_CS_N),                                //                                   .cs_n
        .sdram_dq                                  (DRAM_DQ),                                  //                                   .dq
        .sdram_dqm                                 (DRAM_DQM),                                 //                                   .dqm
        .sdram_ras_n                               (DRAM_RAS_N),                               //                                   .ras_n
        .sdram_we_n                                (DRAM_WE_N),  
		  .port_teclado_export								(tecla_out)					//                                   .we_n
        
    );
	 
wire [3:0] tecla_out;
wire [3:0] w_barrido;

//CONEXIONES
assign LED[3:0] = w_barrido[3:0];
assign GPIO1[3:0] = w_barrido[3:0];
assign LED[7:4] = tecla_out[3:0];


//=======================================================
//  Structural coding
//=======================================================
caja_negra_teclado caja_negra_teclado_u
(
	.CLOCK_50_in(CLOCK_50),
	.GPIO_in(GPIO1[7:4]),
	.num_tecla(tecla_out),
	.num_barrido(w_barrido)
);	 


//=======================================================
//  Structural coding
//=======================================================
//instancia barrido

//module caja_negra(
//input reset,boton1,boton2,boton3,boton4,clock_50;
//output wire [1:0] filas, columnas;
//output wire [3:0] habilitador;
//); 


//=======================================================
//  Structural coding
//=======================================================



endmodule