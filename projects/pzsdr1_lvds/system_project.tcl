
source ../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project_create pzsdr1_lvds 0 {} "xc7z020clg400-1"

adi_project_files pzsdr1_lvds [list \
  "system_top.v" \
  "pzsdr1_lvds.xdc" \
  "pzsdr1_lvds_pins.xdc" \
  "$ad_hdl_dir/library/common/ad_iobuf.v"]

#set_property is_enabled false [get_files  *system_sys_ps7_0.xdc]
#set_property is_enabled false [get_files  *axi_gpreg_0_constr.xdc]
adi_project_run pzsdr1_lvds

source $ad_hdl_dir/library/axi_ad9361/axi_ad9361_delay.tcl


