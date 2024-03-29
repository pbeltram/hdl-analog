###############################################################################
## Copyright (C) 2014-2023 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

# load script
source ../../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project ad9467_fmc_zed
adi_project_files ad9467_fmc_zed [list \
  "../common/ad9467_spi.v" \
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "system_top.v" \
  "system_constr.xdc" \
  "$ad_hdl_dir/projects/common/zed/zed_system_constr.xdc"]

adi_project_run ad9467_fmc_zed

