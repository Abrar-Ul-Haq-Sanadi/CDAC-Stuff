## Clock signal

create_clock -name Sysclk -period 10 [get_ports clk]          
#giving clock 10ns (100Mhz) is our timing constraints we are making our our design work on 100Mhz


#these are input and output delays

#set_input_delay -clock Sysclk -max 2 [get_ports a_in];
#set_input_delay -clock Sysclk -max 2 [get_ports b_in];
#set_input_delay -clock Sysclk -max 2 [get_ports c_in];

#set_input_delay -clock Sysclk -min 0 [get_ports a_in];
#set_input_delay -clock Sysclk -min 0 [get_ports b_in];
#set_input_delay -clock Sysclk -min 0 [get_ports c_in];

#set_output_delay -clock Sysclk -max 2 [get_ports sum_out] ;
#set_output_delay -clock Sysclk -max 2 [get_ports carry_out];

#set_output_delay -clock Sysclk -min 0 [get_ports sum_out];
#set_output_delay -clock Sysclk -min 0 [get_ports carry_out];




## Switches
create_clock -name Sysclk -period 10 [get_ports clk]                            
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]

set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports {sw[0]}]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {sw[1]}]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {sw[2]}]
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {sw[3]}]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {sw[4]}]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {sw[5]}]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {sw[6]}]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {sw[7]}]
set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports {sw[8]}]




## LEDs
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports {led[0]}]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports {led[1]}]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {led[2]}]
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports {led[3]}]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {led[4]}]

#Buttons
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports Btn_rst]