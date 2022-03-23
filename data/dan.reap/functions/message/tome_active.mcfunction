# mana drained (uses dan.temp)

#message
tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Tome already active.","color":"red"}]

#sound
execute at @s run playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 1 0.5