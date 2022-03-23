# cannot be toggled off

#health bars
execute unless score #hbi.disable_healthbars dan.data matches 1 run function healthindications:hb/handle_healthbars

#loop
schedule function healthindications:loop/per_tick 1t replace