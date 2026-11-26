
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name nids -dir "/home/ise/MimasV2-shared/test/nids/planAhead_run_1" -part xc6slx9csg324-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/ise/MimasV2-shared/test/nids/nids_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/MimasV2-shared/test/nids} }
set_property target_constrs_file "mimas_v2_nids.ucf" [current_fileset -constrset]
add_files [list {mimas_v2_nids.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/ise/MimasV2-shared/test/nids/nids_top.ncd"
if {[catch {read_twx -name results_1 -file "/home/ise/MimasV2-shared/test/nids/nids_top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/ise/MimasV2-shared/test/nids/nids_top.twx\": $eInfo"
}
