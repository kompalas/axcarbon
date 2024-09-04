#libsPath="$HOME/synLibs"
# libsPath="/usr/local/eda/synLibs"
# libsPath="$HOME/libs"
# asap7/7nm/db/asap7.db

#set the library path
export ENV_LIBRARY_PATH="/home/balaskas/axcarbon/libs/fdsoi28/db"
#set the library name
export ENV_LIBRARY_DB="28nm_FDSOI_0.9V_300K.db"
#set library verilog path
export ENV_LIBRARY_VERILOG_PATH="/home/balaskas/axcarbon/libs/fdsoi28/verilog"

#set the top design name
export ENV_TOP_DESIGN="top"
#set the desired delay
export ENV_CLK_PERIOD="0.0"

#clock name and reset (if applicable)
export ENV_CLK_PORT="clk"
export ENV_RST_PORT="rst_n"
#set ENV_VIRTUAL_CLOCK to false if the design contains a clock or to true if not
export ENV_VIRTUAL_CLOCK="true"

#set tb name
export ENV_TB_NAME="top_tb"
#vcd name
export ENV_DUMPFILE="$(pwd)/sim/${ENV_TOP_DESIGN}.fsdb"
export ENV_DUT_NAME="DUT"


if [ -z "$SNPS_SYN" ]; then
	echo "set SNPS_SYN"
	exit 1
fi
