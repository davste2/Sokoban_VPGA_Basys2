
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Sokoban_version1 -dir "C:/Users/David/Sokoban_version1/planAhead_run_1" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Basys2_100_250General.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Taktteiler.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Eingabe.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Top.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Top $srcset
add_files [list {Basys2_100_250General.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
