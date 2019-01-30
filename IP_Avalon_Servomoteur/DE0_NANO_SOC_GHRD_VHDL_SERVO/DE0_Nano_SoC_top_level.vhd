-- #############################################################################
-- DE0_Nano_SoC_top_level.vhd
--
-- BOARD         : DE0-Nano-SoC from Terasic
-- Author        : Yann DOUZE from Sorbonne Université, Polytech Sorbonne
-- Revision      : 1.0
-- Creation date : 02/11/2018
--
-- GROUP  : specify a particular interface (ex: HPS_)
-- NAME   : signal name (ex: CONFIG, D, ...)
-- bit    : signal index
-- _N     : to specify an active-low signal
-- #############################################################################

library ieee;
use ieee.std_logic_1164.all;




entity DE0_Nano_SoC_top_level is
    port(
        -- ADC
     ADC_CONVST       : out   std_logic;
     ADC_SCK          : out   std_logic;
     ADC_SDI          : out   std_logic;
     ADC_SDO          : in    std_logic;

        -- ARDUINO
     ARDUINO_IO       : inout std_logic_vector(15 downto 0);
     ARDUINO_RESET_N  : inout std_logic;

        -- CLOCK
        FPGA_CLK1_50     : in    std_logic;
      FPGA_CLK2_50     : in    std_logic;
	  FPGA_CLK3_50     : in    std_logic;

        -- KEY
        KEY            : in    std_logic_vector(1 downto 0);

        -- LED
        LED              : out   std_logic_vector(7 downto 0);

        -- SW
      SW               : in    std_logic_vector(3 downto 0);

        -- GPIO_0
      GPIO_0           : inout std_logic_vector(35 downto 0);

        -- GPIO_1
      GPIO_1           : inout std_logic_vector(35 downto 0);

        -- HPS
        HPS_CONV_USB_N   : inout std_logic;
        HPS_DDR3_ADDR    : out   std_logic_vector(14 downto 0);
        HPS_DDR3_BA      : out   std_logic_vector(2 downto 0);
        HPS_DDR3_CAS_N   : out   std_logic;
        HPS_DDR3_CK_N    : out   std_logic;
        HPS_DDR3_CK_P    : out   std_logic;
        HPS_DDR3_CKE     : out   std_logic;
        HPS_DDR3_CS_N    : out   std_logic;
        HPS_DDR3_DM      : out   std_logic_vector(3 downto 0);
        HPS_DDR3_DQ      : inout std_logic_vector(31 downto 0);
        HPS_DDR3_DQS_N   : inout std_logic_vector(3 downto 0);
        HPS_DDR3_DQS_P   : inout std_logic_vector(3 downto 0);
        HPS_DDR3_ODT     : out   std_logic;
        HPS_DDR3_RAS_N   : out   std_logic;
        HPS_DDR3_RESET_N : out   std_logic;
        HPS_DDR3_RZQ     : in    std_logic;
        HPS_DDR3_WE_N    : out   std_logic;
		
        HPS_ENET_GTX_CLK : out   std_logic;
        HPS_ENET_INT_N   : inout std_logic;
        HPS_ENET_MDC     : out   std_logic;
        HPS_ENET_MDIO    : inout std_logic;
        HPS_ENET_RX_CLK  : in    std_logic;
        HPS_ENET_RX_DATA : in    std_logic_vector(3 downto 0);
        HPS_ENET_RX_DV   : in    std_logic;
        HPS_ENET_TX_DATA : out   std_logic_vector(3 downto 0);
        HPS_ENET_TX_EN   : out   std_logic;
        HPS_GSENSOR_INT  : inout std_logic;
        HPS_I2C0_SCLK    : inout std_logic;
        HPS_I2C0_SDAT    : inout std_logic;
        HPS_I2C1_SCLK    : inout std_logic;
        HPS_I2C1_SDAT    : inout std_logic;
        HPS_KEY        : inout std_logic;
        HPS_LED          : inout std_logic;
        HPS_LTC_GPIO     : inout std_logic;
        HPS_SD_CLK       : out   std_logic;
        HPS_SD_CMD       : inout std_logic;
        HPS_SD_DATA      : inout std_logic_vector(3 downto 0);
        HPS_SPIM_CLK     : out   std_logic;
        HPS_SPIM_MISO    : in    std_logic;
        HPS_SPIM_MOSI    : out   std_logic;
        HPS_SPIM_SS      : inout std_logic;
        HPS_UART_RX      : in    std_logic;
        HPS_UART_TX      : out   std_logic;
        HPS_USB_CLKOUT   : in    std_logic;
        HPS_USB_DATA     : inout std_logic_vector(7 downto 0);
        HPS_USB_DIR      : in    std_logic;
        HPS_USB_NXT      : in    std_logic;
        HPS_USB_STP      : out   std_logic
    );
end entity;

architecture rtl of DE0_Nano_SoC_top_level is
	component soc_system is
        port (
            button_pio_external_connection_export : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
            clk_clk                               : in    std_logic                     := 'X';             -- clk
            dipsw_pio_external_connection_export  : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
            hps_0_h2f_reset_reset_n               : out   std_logic;                                        -- reset_n
            hps_0_hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
            hps_0_hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
            hps_0_hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
            hps_0_hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
            hps_0_hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
            hps_0_hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
            hps_0_hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
            hps_0_hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        -- hps_io_emac1_inst_MDC
            hps_0_hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
            hps_0_hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
            hps_0_hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
            hps_0_hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
            hps_0_hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
            hps_0_hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
            hps_0_hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_0_hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_0_hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_0_hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_0_hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_0_hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
            hps_0_hps_io_hps_io_usb1_inst_D0      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
            hps_0_hps_io_hps_io_usb1_inst_D1      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
            hps_0_hps_io_hps_io_usb1_inst_D2      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
            hps_0_hps_io_hps_io_usb1_inst_D3      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
            hps_0_hps_io_hps_io_usb1_inst_D4      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
            hps_0_hps_io_hps_io_usb1_inst_D5      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
            hps_0_hps_io_hps_io_usb1_inst_D6      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
            hps_0_hps_io_hps_io_usb1_inst_D7      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
            hps_0_hps_io_hps_io_usb1_inst_CLK     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
            hps_0_hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                        -- hps_io_usb1_inst_STP
            hps_0_hps_io_hps_io_usb1_inst_DIR     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
            hps_0_hps_io_hps_io_usb1_inst_NXT     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
            hps_0_hps_io_hps_io_spim1_inst_CLK    : out   std_logic;                                        -- hps_io_spim1_inst_CLK
            hps_0_hps_io_hps_io_spim1_inst_MOSI   : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
            hps_0_hps_io_hps_io_spim1_inst_MISO   : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
            hps_0_hps_io_hps_io_spim1_inst_SS0    : out   std_logic;                                        -- hps_io_spim1_inst_SS0
            hps_0_hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
            hps_0_hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        -- hps_io_uart0_inst_TX
            hps_0_hps_io_hps_io_i2c0_inst_SDA     : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
            hps_0_hps_io_hps_io_i2c0_inst_SCL     : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
            hps_0_hps_io_hps_io_i2c1_inst_SDA     : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
            hps_0_hps_io_hps_io_i2c1_inst_SCL     : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
            hps_0_hps_io_hps_io_gpio_inst_GPIO09  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
            hps_0_hps_io_hps_io_gpio_inst_GPIO35  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
            hps_0_hps_io_hps_io_gpio_inst_GPIO40  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
            hps_0_hps_io_hps_io_gpio_inst_GPIO53  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
            hps_0_hps_io_hps_io_gpio_inst_GPIO54  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
            hps_0_hps_io_hps_io_gpio_inst_GPIO61  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO61
            ip_servomotor_0_conduit_end_commande  : out   std_logic;                                        -- commande
            ip_servomotor_0_conduit_end_led       : out   std_logic_vector(7 downto 0);                     -- led
            led_pio_external_connection_export    : out   std_logic_vector(7 downto 0);                     -- export
            memory_mem_a                          : out   std_logic_vector(14 downto 0);                    -- mem_a
            memory_mem_ba                         : out   std_logic_vector(2 downto 0);                     -- mem_ba
            memory_mem_ck                         : out   std_logic;                                        -- mem_ck
            memory_mem_ck_n                       : out   std_logic;                                        -- mem_ck_n
            memory_mem_cke                        : out   std_logic;                                        -- mem_cke
            memory_mem_cs_n                       : out   std_logic;                                        -- mem_cs_n
            memory_mem_ras_n                      : out   std_logic;                                        -- mem_ras_n
            memory_mem_cas_n                      : out   std_logic;                                        -- mem_cas_n
            memory_mem_we_n                       : out   std_logic;                                        -- mem_we_n
            memory_mem_reset_n                    : out   std_logic;                                        -- mem_reset_n
            memory_mem_dq                         : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
            memory_mem_dqs                        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
            memory_mem_dqs_n                      : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
            memory_mem_odt                        : out   std_logic;                                        -- mem_odt
            memory_mem_dm                         : out   std_logic_vector(3 downto 0);                     -- mem_dm
            memory_oct_rzqin                      : in    std_logic                     := 'X';             -- oct_rzqin
            reset_reset_n                         : in    std_logic                     := 'X'              -- reset_n
        );
    end component soc_system;
	signal hps_fpga_reset_n : std_logic;
	
begin
    soc_system_inst : component soc_system
    port map(
        -- Clock & Reset
		clk_clk                                  => FPGA_CLK1_50,
		reset_reset_n                            => hps_fpga_reset_n,
        -- HPS DDR3 
		memory_mem_a                           => HPS_DDR3_ADDR,
        memory_mem_ba                          => HPS_DDR3_BA,
        memory_mem_ck                          => HPS_DDR3_CK_P,
        memory_mem_ck_n                        => HPS_DDR3_CK_N,
        memory_mem_cke                         => HPS_DDR3_CKE,
        memory_mem_cs_n                        => HPS_DDR3_CS_N,
        memory_mem_ras_n                       => HPS_DDR3_RAS_N,
        memory_mem_cas_n                       => HPS_DDR3_CAS_N,
        memory_mem_we_n                        => HPS_DDR3_WE_N,
        memory_mem_reset_n                     => HPS_DDR3_RESET_N,
        memory_mem_dq                          => HPS_DDR3_DQ,
        memory_mem_dqs                         => HPS_DDR3_DQS_P,
        memory_mem_dqs_n                       => HPS_DDR3_DQS_N,
        memory_mem_odt                         => HPS_DDR3_ODT,
        memory_mem_dm                          => HPS_DDR3_DM,
        memory_oct_rzqin                       => HPS_DDR3_RZQ,
        --HPS ethernet
		hps_0_hps_io_hps_io_emac1_inst_TX_CLK        => HPS_ENET_GTX_CLK,
        hps_0_hps_io_hps_io_emac1_inst_TX_CTL        => HPS_ENET_TX_EN,
        hps_0_hps_io_hps_io_emac1_inst_TXD0          => HPS_ENET_TX_DATA(0),
        hps_0_hps_io_hps_io_emac1_inst_TXD1          => HPS_ENET_TX_DATA(1),
        hps_0_hps_io_hps_io_emac1_inst_TXD2          => HPS_ENET_TX_DATA(2),
        hps_0_hps_io_hps_io_emac1_inst_TXD3          => HPS_ENET_TX_DATA(3),
        hps_0_hps_io_hps_io_emac1_inst_RX_CLK        => HPS_ENET_RX_CLK,
        hps_0_hps_io_hps_io_emac1_inst_RX_CTL        => HPS_ENET_RX_DV,
        hps_0_hps_io_hps_io_emac1_inst_RXD0          => HPS_ENET_RX_DATA(0),
        hps_0_hps_io_hps_io_emac1_inst_RXD1          => HPS_ENET_RX_DATA(1),
        hps_0_hps_io_hps_io_emac1_inst_RXD2          => HPS_ENET_RX_DATA(2),
        hps_0_hps_io_hps_io_emac1_inst_RXD3          => HPS_ENET_RX_DATA(3),
        hps_0_hps_io_hps_io_emac1_inst_MDIO          => HPS_ENET_MDIO,
        hps_0_hps_io_hps_io_emac1_inst_MDC           => HPS_ENET_MDC,
        -- HPS SD Card 
		hps_0_hps_io_hps_io_sdio_inst_CLK            => HPS_SD_CLK,
        hps_0_hps_io_hps_io_sdio_inst_CMD            => HPS_SD_CMD,
        hps_0_hps_io_hps_io_sdio_inst_D0             => HPS_SD_DATA(0),
        hps_0_hps_io_hps_io_sdio_inst_D1             => HPS_SD_DATA(1),
        hps_0_hps_io_hps_io_sdio_inst_D2             => HPS_SD_DATA(2),
        hps_0_hps_io_hps_io_sdio_inst_D3             => HPS_SD_DATA(3),
        -- HPS USB
		hps_0_hps_io_hps_io_usb1_inst_CLK            => HPS_USB_CLKOUT,
        hps_0_hps_io_hps_io_usb1_inst_STP            => HPS_USB_STP,
        hps_0_hps_io_hps_io_usb1_inst_DIR            => HPS_USB_DIR,
        hps_0_hps_io_hps_io_usb1_inst_NXT            => HPS_USB_NXT,
        hps_0_hps_io_hps_io_usb1_inst_D0             => HPS_USB_DATA(0),
        hps_0_hps_io_hps_io_usb1_inst_D1             => HPS_USB_DATA(1),
        hps_0_hps_io_hps_io_usb1_inst_D2             => HPS_USB_DATA(2),
        hps_0_hps_io_hps_io_usb1_inst_D3             => HPS_USB_DATA(3),
        hps_0_hps_io_hps_io_usb1_inst_D4             => HPS_USB_DATA(4),
        hps_0_hps_io_hps_io_usb1_inst_D5             => HPS_USB_DATA(5),
        hps_0_hps_io_hps_io_usb1_inst_D6             => HPS_USB_DATA(6),
        hps_0_hps_io_hps_io_usb1_inst_D7             => HPS_USB_DATA(7),
        -- HPS SPI
		hps_0_hps_io_hps_io_spim1_inst_CLK           => HPS_SPIM_CLK,
        hps_0_hps_io_hps_io_spim1_inst_MOSI          => HPS_SPIM_MOSI,
        hps_0_hps_io_hps_io_spim1_inst_MISO          => HPS_SPIM_MISO,
        hps_0_hps_io_hps_io_spim1_inst_SS0           => HPS_SPIM_SS,
        -- HPS UART
		hps_0_hps_io_hps_io_uart0_inst_RX            => HPS_UART_RX,
        hps_0_hps_io_hps_io_uart0_inst_TX            => HPS_UART_TX,
        -- HPS I2C0
		hps_0_hps_io_hps_io_i2c0_inst_SDA            => HPS_I2C0_SDAT,
        hps_0_hps_io_hps_io_i2c0_inst_SCL            => HPS_I2C0_SCLK,
        -- HPS I2C1
		hps_0_hps_io_hps_io_i2c1_inst_SDA            => HPS_I2C1_SDAT,
        hps_0_hps_io_hps_io_i2c1_inst_SCL            => HPS_I2C1_SCLK,
        -- HPS GPIO
		hps_0_hps_io_hps_io_gpio_inst_GPIO09         => HPS_CONV_USB_N,
        hps_0_hps_io_hps_io_gpio_inst_GPIO35         => HPS_ENET_INT_N,
        hps_0_hps_io_hps_io_gpio_inst_GPIO40         => HPS_LTC_GPIO,
        hps_0_hps_io_hps_io_gpio_inst_GPIO53         => HPS_LED,
        hps_0_hps_io_hps_io_gpio_inst_GPIO54         => HPS_KEY,
        hps_0_hps_io_hps_io_gpio_inst_GPIO61         => HPS_GSENSOR_INT,
        -- FPGA Partition
		--led_pio_external_connection_export    => LED(7 downto 0),
		button_pio_external_connection_export => KEY,
		dipsw_pio_external_connection_export  => SW,
      ip_servomotor_0_conduit_end_commande => GPIO_1(2),
		ip_servomotor_0_conduit_end_led => LED,
		hps_0_h2f_reset_reset_n     		 => hps_fpga_reset_n
    );
end;
