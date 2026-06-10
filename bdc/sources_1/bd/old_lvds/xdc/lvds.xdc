
#
# LVDS input clock output to sensor-chip. 768 MHz
#

set_property -dict {PACKAGE_PIN F22  IOSTANDARD LVDS  DATA_RATE DDR  LVDS_PRE_EMPHASIS FALSE } [get_ports LVDS_CLK_clk_n];  # IO Bank 70     Board signal name: CLK512_N
set_property -dict {PACKAGE_PIN G22  IOSTANDARD LVDS  DATA_RATE DDR  LVDS_PRE_EMPHASIS FALSE } [get_ports LVDS_CLK_clk_p];  # IO Bank 70     Board signal name: CLK512_P


