
#setup libs

set dcpath $::env(SNPS_SYN)
if {[string index $dcpath end] != "/"} {
        set DC_LIB_PATH ${dcpath}/libraries/syn/
} else {
        set DC_LIB_PATH ${dcpath}libraries/syn/
}

set LIB_DB_PATH $::env(ENV_LIBRARY_PATH)
if {[string index $LIB_DB_PATH end] != "/"} { set LIB_DB_PATH "${LIB_DB_PATH}/" }

set LIB_DB_NAME $::env(ENV_LIBRARY_DB)

set curDir [pwd]

set search_path [list ${LIB_DB_PATH} ${DC_LIB_PATH} ${curDir}/gate/]
set synthetic_library {dw_foundation.sldb}
set link_path [list ${LIB_DB_NAME} ${synthetic_library} *]



#read files
set top_design $::env(ENV_TOP_DESIGN)

read_verilog ./gate/${top_design}.v
current_design $top_design
link_design
#read_sdf ../gate/${top_design}.sdf

#sdc
source ./scripts/sdc.tcl
source ./scripts/units.tcl

set auto_wire_load_selection true
check_timing -include {supply_net_voltage signal_level unconnected_pg_pins}
update_timing

#reports
write_sdf ./gate/${top_design}.sdf
# write_saif ./gate/${top_design}.saif
set clk_period $::env(ENV_CLK_PERIOD)
report_timing -significant_digits 3 > ./reports/${top_design}_${clk_period}${tunit}.timing.pt.rpt

set all_cells [get_object_name [get_cells "*"]]
set arcs [get_timing_arcs -of_objects $all_cells]
# exact delay calculation report for specified arc (node or edge)
report_delay_calculation -nosplit -derate -of_objects $arcs  > ./reports/${top_design}_${clk_period}${tunit}.delay_calc.pt.rpt

quit
