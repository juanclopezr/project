	nios2 u0 (
		.clk_clk             (<connected-to-clk_clk>),             //          clk.clk
		.epcs_dclk           (<connected-to-epcs_dclk>),           //         epcs.dclk
		.epcs_sce            (<connected-to-epcs_sce>),            //             .sce
		.epcs_sdo            (<connected-to-epcs_sdo>),            //             .sdo
		.epcs_data0          (<connected-to-epcs_data0>),          //             .data0
		.port_jp1_export     (<connected-to-port_jp1_export>),     //     port_jp1.export
		.port_key_export     (<connected-to-port_key_export>),     //     port_key.export
		.port_led_export     (<connected-to-port_led_export>),     //     port_led.export
		.ram_clk_clk         (<connected-to-ram_clk_clk>),         //      ram_clk.clk
		.reset_reset_n       (<connected-to-reset_reset_n>),       //        reset.reset_n
		.sdram_addr          (<connected-to-sdram_addr>),          //        sdram.addr
		.sdram_ba            (<connected-to-sdram_ba>),            //             .ba
		.sdram_cas_n         (<connected-to-sdram_cas_n>),         //             .cas_n
		.sdram_cke           (<connected-to-sdram_cke>),           //             .cke
		.sdram_cs_n          (<connected-to-sdram_cs_n>),          //             .cs_n
		.sdram_dq            (<connected-to-sdram_dq>),            //             .dq
		.sdram_dqm           (<connected-to-sdram_dqm>),           //             .dqm
		.sdram_ras_n         (<connected-to-sdram_ras_n>),         //             .ras_n
		.sdram_we_n          (<connected-to-sdram_we_n>),          //             .we_n
		.port_teclado_export (<connected-to-port_teclado_export>)  // port_teclado.export
	);

