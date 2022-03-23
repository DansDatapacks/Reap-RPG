#runs effects/timers only on players

#timers
execute if score @s dan.tome_SmlT matches 1.. run scoreboard players remove @s dan.tome_SmlT 1
execute if score @s dan.tome_SmlT matches 0 run tag @s remove dan.tomeEff

#effects
execute if score @s dan.tome_SmlT matches 1.. at @s run function dan.reap:item_handling/tome_handling/tome/effect/smolder_handle