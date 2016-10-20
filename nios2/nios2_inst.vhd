	component nios2 is
		port (
			clk_clk             : in    std_logic                     := 'X';             -- clk
			epcs_dclk           : out   std_logic;                                        -- dclk
			epcs_sce            : out   std_logic;                                        -- sce
			epcs_sdo            : out   std_logic;                                        -- sdo
			epcs_data0          : in    std_logic                     := 'X';             -- data0
			port_jp1_export     : inout std_logic_vector(31 downto 0) := (others => 'X'); -- export
			port_key_export     : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			port_led_export     : out   std_logic_vector(7 downto 0);                     -- export
			ram_clk_clk         : out   std_logic;                                        -- clk
			reset_reset_n       : in    std_logic                     := 'X';             -- reset_n
			sdram_addr          : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba            : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n         : out   std_logic;                                        -- cas_n
			sdram_cke           : out   std_logic;                                        -- cke
			sdram_cs_n          : out   std_logic;                                        -- cs_n
			sdram_dq            : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_dqm           : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ras_n         : out   std_logic;                                        -- ras_n
			sdram_we_n          : out   std_logic;                                        -- we_n
			port_teclado_export : in    std_logic_vector(3 downto 0)  := (others => 'X')  -- export
		);
	end component nios2;

	u0 : component nios2
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			epcs_dclk           => CONNECTED_TO_epcs_dclk,           --         epcs.dclk
			epcs_sce            => CONNECTED_TO_epcs_sce,            --             .sce
			epcs_sdo            => CONNECTED_TO_epcs_sdo,            --             .sdo
			epcs_data0          => CONNECTED_TO_epcs_data0,          --             .data0
			port_jp1_export     => CONNECTED_TO_port_jp1_export,     --     port_jp1.export
			port_key_export     => CONNECTED_TO_port_key_export,     --     port_key.export
			port_led_export     => CONNECTED_TO_port_led_export,     --     port_led.export
			ram_clk_clk         => CONNECTED_TO_ram_clk_clk,         --      ram_clk.clk
			reset_reset_n       => CONNECTED_TO_reset_reset_n,       --        reset.reset_n
			sdram_addr          => CONNECTED_TO_sdram_addr,          --        sdram.addr
			sdram_ba            => CONNECTED_TO_sdram_ba,            --             .ba
			sdram_cas_n         => CONNECTED_TO_sdram_cas_n,         --             .cas_n
			sdram_cke           => CONNECTED_TO_sdram_cke,           --             .cke
			sdram_cs_n          => CONNECTED_TO_sdram_cs_n,          --             .cs_n
			sdram_dq            => CONNECTED_TO_sdram_dq,            --             .dq
			sdram_dqm           => CONNECTED_TO_sdram_dqm,           --             .dqm
			sdram_ras_n         => CONNECTED_TO_sdram_ras_n,         --             .ras_n
			sdram_we_n          => CONNECTED_TO_sdram_we_n,          --             .we_n
			port_teclado_export => CONNECTED_TO_port_teclado_export  -- port_teclado.export
		);

