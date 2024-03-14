set_property SRC_FILE_INFO {cfile:D:/Quantum/DynamicCircuit/Cmod-A7-Master.xdc rfile:../../../Cmod-A7-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets nolabel_line48/RNG/genblk1[0].ro/xn/y];
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets nolabel_line48/RNG/genblk1[1].ro/xn/y];
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets nolabel_line48/RNG/genblk1[2].ro/xn/y];
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets nolabel_line48/RNG/genblk1[3].ro/xn/y];
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; #IO_L12P_T1_MRCC_14 Sch=gclk
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { QMeasure_test }]; #IO_L12N_T1_MRCC_16 Sch=led[1]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { Measure_done_test }]; #IO_L13P_T2_MRCC_16 Sch=led[2]
