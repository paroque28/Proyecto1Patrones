# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config  -id {[BD 41-1306]}  -suppress 
set_msg_config  -id {[BD 41-1271]}  -suppress 
create_project -in_memory -part xczu9eg-ffvb1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.cache/wt [current_project]
set_property parent.project_path C:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu102:part0:3.3 [current_project]
set_property ip_repo_paths c:/Users/prodrigu/git/simpleNeuralNetwork/Simulink/netlist [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/hdl/config_mpsoc_wrapper.v
add_files C:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/config_mpsoc.bd
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_zynq_ultra_ps_e_0_1/config_mpsoc_zynq_ultra_ps_e_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_zynq_ultra_ps_e_0_1/config_mpsoc_zynq_ultra_ps_e_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_dma_0_0/config_mpsoc_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_dma_0_0/config_mpsoc_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_dma_0_0/config_mpsoc_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_1/bd_e8ed_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_1/bd_e8ed_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_2/bd_e8ed_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_3/bd_e8ed_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_4/bd_e8ed_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_5/bd_e8ed_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_6/bd_e8ed_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_10/bd_e8ed_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_11/bd_e8ed_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_12/bd_e8ed_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_13/bd_e8ed_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_14/bd_e8ed_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_15/bd_e8ed_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_19/bd_e8ed_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_20/bd_e8ed_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_21/bd_e8ed_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_25/bd_e8ed_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_26/bd_e8ed_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_27/bd_e8ed_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_28/bd_e8ed_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_29/bd_e8ed_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_30/bd_e8ed_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_31/bd_e8ed_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_32/bd_e8ed_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_33/bd_e8ed_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axi_smc_0/bd_0/ip/ip_34/bd_e8ed_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_rst_ps8_0_99M_1/config_mpsoc_rst_ps8_0_99M_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_rst_ps8_0_99M_1/config_mpsoc_rst_ps8_0_99M_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_rst_ps8_0_99M_1/config_mpsoc_rst_ps8_0_99M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_axis_data_fifo_0_0/config_mpsoc_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_auto_ds_0_1/config_mpsoc_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_auto_ds_0_1/config_mpsoc_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_auto_ds_0_1/config_mpsoc_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/ip/config_mpsoc_auto_pc_0_1/config_mpsoc_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/prodrigu/git/simpleNeuralNetwork/Vivado/NNA/NNA.srcs/sources_1/bd/config_mpsoc/config_mpsoc_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top config_mpsoc_wrapper -part xczu9eg-ffvb1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef config_mpsoc_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file config_mpsoc_wrapper_utilization_synth.rpt -pb config_mpsoc_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
