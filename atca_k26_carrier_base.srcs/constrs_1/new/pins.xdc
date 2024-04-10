
set_property IOSTANDARD LVCMOS33 [get_ports sdio]
set_property IOSTANDARD LVCMOS33 [get_ports {pll_reset[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports nCS]
set_property IOSTANDARD LVCMOS33 [get_ports sclk]
set_property PACKAGE_PIN AG11 [get_ports sdio]
set_property PACKAGE_PIN AH10 [get_ports sclk]
set_property PACKAGE_PIN AF11 [get_ports nCS]

set_property DRIVE 4 [get_ports nCS]
set_property SLEW SLOW [get_ports nCS]
set_property DRIVE 4 [get_ports sclk]
set_property SLEW SLOW [get_ports sclk]
set_property DRIVE 4 [get_ports {pll_reset[0]}]
set_property SLEW SLOW [get_ports {pll_reset[0]}]
set_property DRIVE 4 [get_ports sdio]
set_property SLEW SLOW [get_ports sdio]


set_property PULLUP true [get_ports {pll_reset[0]}]

#ADC_SDO_CONSTRAINTS
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[1]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[1]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[2]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[2]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[3]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[3]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[4]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[4]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[5]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[5]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[6]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[6]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[7]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[7]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[8]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[8]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[9]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[9]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[10]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[10]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[11]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[11]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[12]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[12]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[13]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[13]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[14]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[14]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[15]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[15]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[16]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[16]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[17]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[17]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[18]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[18]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[19]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[19]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[20]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[20]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[21]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[21]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[22]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[22]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[23]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[23]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_cha_p[24]}]
set_property IOSTANDARD LVDS [get_ports {adc_sdo_chb_p[24]}]

set_property PACKAGE_PIN J5 [get_ports {adc_sdo_cha_p[1]}]
set_property PACKAGE_PIN H4 [get_ports {adc_sdo_chb_p[1]}]
set_property PACKAGE_PIN K2 [get_ports {adc_sdo_cha_p[2]}]
set_property PACKAGE_PIN N7 [get_ports {adc_sdo_chb_p[2]}]
set_property PACKAGE_PIN L1 [get_ports {adc_sdo_cha_p[3]}]
set_property PACKAGE_PIN J1 [get_ports {adc_sdo_chb_p[3]}]
set_property PACKAGE_PIN R8 [get_ports {adc_sdo_cha_p[4]}]
set_property PACKAGE_PIN J7 [get_ports {adc_sdo_chb_p[4]}]
set_property PACKAGE_PIN AF8 [get_ports {adc_sdo_cha_p[5]}]
set_property PACKAGE_PIN H9 [get_ports {adc_sdo_chb_p[5]}]
set_property PACKAGE_PIN AD2 [get_ports {adc_sdo_cha_p[6]}]
set_property PACKAGE_PIN AG6 [get_ports {adc_sdo_chb_p[6]}]
set_property PACKAGE_PIN AG3 [get_ports {adc_sdo_cha_p[7]}]
set_property PACKAGE_PIN AH2 [get_ports {adc_sdo_chb_p[7]}]
set_property PACKAGE_PIN AH8 [get_ports {adc_sdo_cha_p[8]}]
set_property PACKAGE_PIN AB2 [get_ports {adc_sdo_chb_p[8]}]
set_property PACKAGE_PIN AE2 [get_ports {adc_sdo_cha_p[9]}]
set_property PACKAGE_PIN AG4 [get_ports {adc_sdo_chb_p[9]}]
set_property PACKAGE_PIN AG9 [get_ports {adc_sdo_cha_p[10]}]
set_property PACKAGE_PIN AB8 [get_ports {adc_sdo_chb_p[10]}]
set_property PACKAGE_PIN AB4 [get_ports {adc_sdo_cha_p[11]}]
set_property PACKAGE_PIN AC9 [get_ports {adc_sdo_chb_p[11]}]
set_property PACKAGE_PIN AE9 [get_ports {adc_sdo_cha_p[12]}]
set_property PACKAGE_PIN AE3 [get_ports {adc_sdo_chb_p[12]}]
set_property PACKAGE_PIN K8 [get_ports {adc_sdo_cha_p[13]}]
set_property PACKAGE_PIN K9 [get_ports {adc_sdo_chb_p[13]}]
set_property PACKAGE_PIN R7 [get_ports {adc_sdo_cha_p[14]}]
set_property PACKAGE_PIN P7 [get_ports {adc_sdo_chb_p[14]}]
set_property PACKAGE_PIN U8 [get_ports {adc_sdo_cha_p[15]}]
set_property PACKAGE_PIN W8 [get_ports {adc_sdo_chb_p[15]}]
set_property PACKAGE_PIN N9 [get_ports {adc_sdo_cha_p[16]}]
set_property PACKAGE_PIN U9 [get_ports {adc_sdo_chb_p[16]}]
set_property PACKAGE_PIN C1 [get_ports {adc_sdo_cha_p[17]}]
set_property PACKAGE_PIN A2 [get_ports {adc_sdo_chb_p[17]}]
set_property PACKAGE_PIN E4 [get_ports {adc_sdo_cha_p[18]}]
set_property PACKAGE_PIN C3 [get_ports {adc_sdo_chb_p[18]}]
set_property PACKAGE_PIN B3 [get_ports {adc_sdo_cha_p[19]}]
set_property PACKAGE_PIN G6 [get_ports {adc_sdo_chb_p[19]}]
set_property PACKAGE_PIN E5 [get_ports {adc_sdo_cha_p[20]}]
set_property PACKAGE_PIN G8 [get_ports {adc_sdo_chb_p[20]}]
set_property PACKAGE_PIN F8 [get_ports {adc_sdo_cha_p[21]}]
set_property PACKAGE_PIN D7 [get_ports {adc_sdo_chb_p[21]}]
set_property PACKAGE_PIN D4 [get_ports {adc_sdo_cha_p[22]}]
set_property PACKAGE_PIN B4 [get_ports {adc_sdo_chb_p[22]}]
set_property PACKAGE_PIN E1 [get_ports {adc_sdo_cha_p[23]}]
set_property PACKAGE_PIN G3 [get_ports {adc_sdo_chb_p[23]}]
set_property PACKAGE_PIN F2 [get_ports {adc_sdo_cha_p[24]}]
set_property PACKAGE_PIN G1 [get_ports {adc_sdo_chb_p[24]}]



set_property IOSTANDARD LVDS [get_ports adc_sdi_p]
set_property IOSTANDARD LVDS [get_ports adc_sck_p]
set_property IOSTANDARD LVDS [get_ports acq_clk_p]
set_property IOSTANDARD LVDS [get_ports adc_cnvst_p]


set_property PACKAGE_PIN AB7 [get_ports adc_sdi_p]
set_property PACKAGE_PIN AF7 [get_ports acq_clk_p]
set_property PACKAGE_PIN AC4 [get_ports adc_sck_p]
set_property PACKAGE_PIN AD7 [get_ports adc_cnvst_p]

set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[24]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[23]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[22]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[21]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[20]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[19]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[18]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[17]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[16]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[15]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[14]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[13]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[12]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[11]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[10]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_cha_p[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[24]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[23]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[22]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[21]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[20]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[19]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[18]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[17]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[16]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[15]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[14]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[13]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[12]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[11]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[10]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {adc_sdo_chb_p[1]}]


set_property PACKAGE_PIN L3 [get_ports {SOM_DEJIT_CLK1_p[0]}]
set_property PACKAGE_PIN L2 [get_ports {SOM_DEJIT_CLK1_n[0]}]
set_property IOSTANDARD LVDS [get_ports {SOM_DEJIT_CLK1_n[0]}]
set_property IOSTANDARD LVDS [get_ports {SOM_DEJIT_CLK1_p[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_CHOP[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_RESET]
set_property IOSTANDARD LVCMOS33 [get_ports ATCA_BASE_CH_SEL]
set_property SLEW SLOW [get_ports {ADC_CHOP[0]}]
set_property SLEW SLOW [get_ports ADC_RESET]
set_property DRIVE 4 [get_ports ADC_RESET]
set_property DRIVE 4 [get_ports ATCA_BASE_CH_SEL]
set_property SLEW SLOW [get_ports ATCA_BASE_CH_SEL]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_1A_D]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_1A_EN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_1A_R]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_1B_D]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_1B_EN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_1B_R]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_2A_D]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_2A_EN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_2A_R]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_2B_D]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_2B_EN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_2B_R]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_3A_D]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_3A_EN]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_3A_R]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_3B_LOS]
set_property IOSTANDARD LVDS [get_ports CLK_DEJIT_OUT3_n]
set_property IOSTANDARD LVDS [get_ports CLK_DEJIT_OUT3_p]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SCL]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDA]
set_property IOSTANDARD LVCMOS33 [get_ports LED0]
set_property IOSTANDARD LVCMOS33 [get_ports LED1]
set_property IOSTANDARD LVCMOS33 [get_ports LED2]
set_property IOSTANDARD LVCMOS33 [get_ports LED3]
set_property DRIVE 12 [get_ports LED0]
set_property SLEW SLOW [get_ports LED2]
set_property SLEW SLOW [get_ports LED1]
set_property SLEW SLOW [get_ports LED0]
set_property SLEW SLOW [get_ports LED3]
set_property SLEW SLOW [get_ports I2C_SDA]
set_property SLEW SLOW [get_ports I2C_SCL]
set_property SLEW SLOW [get_ports CLK_3A_EN]
set_property SLEW SLOW [get_ports CLK_3A_D]
set_property DRIVE 4 [get_ports CLK_3A_D]
set_property DRIVE 4 [get_ports CLK_3A_EN]
set_property DRIVE 4 [get_ports CLK_2B_EN]
set_property DRIVE 4 [get_ports CLK_2B_D]
set_property SLEW SLOW [get_ports CLK_2B_D]
set_property SLEW SLOW [get_ports CLK_2B_EN]
set_property DRIVE 4 [get_ports CLK_2A_EN]
set_property DRIVE 4 [get_ports CLK_2A_D]
set_property SLEW SLOW [get_ports CLK_2A_D]
set_property SLEW SLOW [get_ports CLK_2A_EN]
set_property DRIVE 4 [get_ports CLK_1B_EN]
set_property DRIVE 4 [get_ports CLK_1B_D]
set_property SLEW SLOW [get_ports CLK_1B_EN]
set_property SLEW SLOW [get_ports CLK_1B_D]
set_property SLEW SLOW [get_ports CLK_1A_EN]
set_property SLEW SLOW [get_ports CLK_1A_D]
set_property DRIVE 4 [get_ports CLK_1A_D]
set_property DRIVE 4 [get_ports CLK_1A_EN]
set_property DRIVE 4 [get_ports I2C_SCL]
set_property DRIVE 4 [get_ports I2C_SDA]
set_property PACKAGE_PIN D10 [get_ports CLK_1A_D]
set_property PACKAGE_PIN D11 [get_ports CLK_1A_EN]
set_property PACKAGE_PIN E12 [get_ports CLK_1A_R]
set_property PACKAGE_PIN H12 [get_ports CLK_1B_D]
set_property PACKAGE_PIN B10 [get_ports CLK_1B_EN]
set_property PACKAGE_PIN F12 [get_ports CLK_1B_R]
set_property PACKAGE_PIN F10 [get_ports CLK_2A_D]
set_property PACKAGE_PIN J12 [get_ports CLK_2A_EN]
set_property PACKAGE_PIN E10 [get_ports CLK_2A_R]
set_property PACKAGE_PIN J10 [get_ports CLK_2B_D]
set_property PACKAGE_PIN F11 [get_ports CLK_2B_EN]
set_property PACKAGE_PIN G11 [get_ports CLK_2B_R]
set_property PACKAGE_PIN AG10 [get_ports CLK_3A_D]
set_property PACKAGE_PIN AD10 [get_ports CLK_3A_EN]
set_property PACKAGE_PIN AD11 [get_ports CLK_3A_R]
set_property PACKAGE_PIN AF12 [get_ports CLK_3B_LOS]
set_property PACKAGE_PIN K4 [get_ports CLK_DEJIT_OUT3_p]
set_property PACKAGE_PIN K3 [get_ports CLK_DEJIT_OUT3_n]
set_property PACKAGE_PIN AB9 [get_ports I2C_SCL]
set_property PACKAGE_PIN AB10 [get_ports I2C_SDA]
set_property PACKAGE_PIN AE10 [get_ports {ADC_CHOP[0]}]
set_property PACKAGE_PIN AF10 [get_ports ADC_RESET]
set_property PACKAGE_PIN AH12 [get_ports ATCA_BASE_CH_SEL]
set_property IOSTANDARD LVCMOS33 [get_ports PS_PCIE_RST_LS]
set_property DRIVE 4 [get_ports PS_PCIE_RST_LS]
set_property SLEW SLOW [get_ports PS_PCIE_RST_LS]
set_property IOSTANDARD LVCMOS33 [get_ports PLL_LOLAn]
set_property IOSTANDARD LVCMOS33 [get_ports PLL_LOLBn]
set_property IOSTANDARD LVCMOS33 [get_ports PLL_LOS_Xon]
set_property PACKAGE_PIN AC11 [get_ports LED0]
set_property PACKAGE_PIN AB11 [get_ports LED1]
set_property PACKAGE_PIN AA10 [get_ports LED2]
set_property PACKAGE_PIN AA11 [get_ports LED3]
set_property PACKAGE_PIN Y9 [get_ports PLL_LOLAn]
set_property PACKAGE_PIN Y10 [get_ports PLL_LOLBn]
set_property PACKAGE_PIN W10 [get_ports PLL_LOS_Xon]
set_property PACKAGE_PIN AA8 [get_ports PS_PCIE_RST_LS]

set_property IOSTANDARD LVCMOS33 [get_ports RTM_B43_HD6n]
set_property IOSTANDARD LVCMOS33 [get_ports RTM_B43_HD6p]
set_property PACKAGE_PIN AD12 [get_ports RTM_B43_HD6n]
set_property PACKAGE_PIN AC12 [get_ports RTM_B43_HD6p]
set_property DRIVE 4 [get_ports RTM_B43_HD6p]
set_property DRIVE 4 [get_ports RTM_B43_HD6n]
set_property SLEW SLOW [get_ports RTM_B43_HD6n]
set_property SLEW SLOW [get_ports RTM_B43_HD6p]
set_property PULLDOWN true [get_ports PS_PCIE_RST_LS]

set_property IOSTANDARD LVDS [get_ports {RTM_HPL_p[4]}]
set_property IOSTANDARD LVDS [get_ports {RTM_HPL_p[3]}]
set_property IOSTANDARD LVDS [get_ports {RTM_HPL_p[2]}]
set_property IOSTANDARD LVDS [get_ports {RTM_HPL_p[1]}]
set_property PACKAGE_PIN AE5 [get_ports {RTM_HPL_p[1]}]
set_property PACKAGE_PIN AH11 [get_ports {pll_reset[0]}]
set_property PACKAGE_PIN AD5 [get_ports {RTM_HPL_p[2]}]
set_property PACKAGE_PIN L7 [get_ports {RTM_HPL_p[3]}]
set_property PACKAGE_PIN M6 [get_ports {RTM_HPL_p[4]}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
