
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

# way to read LVF data?
read_db $LIB_DB_PATH/$LIB_DB_NAME
list_designs
list_libs


#read files
set top_design $::env(ENV_TOP_DESIGN)

read_verilog ./gate/${top_design}.sv
current_design $top_design
link_design

#sdc
source ./scripts/sdc.tcl

# variables for pocvm
set_app_var timing_pocvm_enable_analysis true
# sigma at which POCVM analysis is performed (typically at 3 sigma)
set_app_var timing_pocvm_corner_sigma 6

set_app_var timing_pocvm_enable_extended_moments true
set_app_var timing_enable_constraint_variation true
#set_app_var timing_use_slew_variation_in_constraint_arcs setup_hold
set_app_var timing_enable_slew_variation true
set_app_var timing_enable_via_variation true

#group_path -name INOUT -from [all_inputs] -to [all_outputs]
set auto_wire_load_selection true
check_timing -include {supply_net_voltage signal_level unconnected_pg_pins}
update_timing

#reports
write_sdf ./gate/${top_design}.sdf
set clk_period $::env(ENV_CLK_PERIOD)

# get all cells of current design into a list
set all_cells [get_object_name [get_cells "*"]]
set all_nets [get_object_name [get_nets "*"]]
set arcs [get_timing_arcs -of_objects $all_cells]

# ocvm report containing lvf tables (slew against load)
#report_ocvm -type pocvm -cell_delay -list_not_annotated -coefficient ./reports/${top_design}_${clk_period}ns.ocvm.pt.rpt
report_ocvm -type pocvm [get_lib_timing_arcs -of_objects $arcs] > ./reports/${top_design}_${clk_period}ns.ocvm.pt.rpt

# timing report with variation and derate info
set_app_var timing_pocvm_report_sigma 6
report_timing -variation -derate -significant_digits 3 > ./reports/${top_design}_${clk_period}ns.timing_variation.pt.rpt

# exact delay calculation report for specified arc (node or edge)
report_delay_calculation -nosplit -derate -of_objects $arcs  > ./reports/${top_design}_${clk_period}ns.delay_calc.pt.rpt

#extract_model -output extracted_model

quit
