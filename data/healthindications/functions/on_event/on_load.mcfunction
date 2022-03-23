# runs every load/reload

#data variable
scoreboard objectives add dan.data dummy

#install
execute unless score #hbi.installed dan.data matches 1 run function healthindications:on_event/on_install

#begin loops
function healthindications:loop/per_tick
function healthindications:loop/per_5_ticks