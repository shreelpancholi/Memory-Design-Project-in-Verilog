onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_project_tb/sp_data
add wave -noupdate /memory_project_tb/sp_addr
add wave -noupdate /memory_project_tb/sp_we
add wave -noupdate /memory_project_tb/sp_q
add wave -noupdate /memory_project_tb/dp_data_a
add wave -noupdate /memory_project_tb/dp_data_b
add wave -noupdate /memory_project_tb/dp_addr_a
add wave -noupdate /memory_project_tb/dp_addr_b
add wave -noupdate /memory_project_tb/dp_we_a
add wave -noupdate /memory_project_tb/dp_we_b
add wave -noupdate /memory_project_tb/dp_q_a
add wave -noupdate /memory_project_tb/dp_q_b
add wave -noupdate /memory_project_tb/rom_en
add wave -noupdate /memory_project_tb/rom_addr
add wave -noupdate /memory_project_tb/rom_data
add wave -noupdate /memory_project_tb/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {83598 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {93496 ps}
