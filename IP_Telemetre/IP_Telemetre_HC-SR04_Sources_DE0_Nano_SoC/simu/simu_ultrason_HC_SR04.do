vlib work
vcom -93 ../src/telemetre_us_HC_SR04.vhd 
vcom -93 ultrason_HC_SR04_tb.vhd 

vsim -novopt work.ultrason_HC_SR04_tb 

add wave  ultrason_HC_SR04_tb/Rst_n 

add wave  ultrason_HC_SR04_tb/trig 
add wave  ultrason_HC_SR04_tb/echo 
add wave  -radix unsigned ultrason_HC_SR04_tb/dure_echo 
add wave  ultrason_HC_SR04_tb/D1/Tick1us 
add wave  ultrason_HC_SR04_tb/D1/State 
add wave  ultrason_HC_SR04_tb/D1/cmpt




run -all