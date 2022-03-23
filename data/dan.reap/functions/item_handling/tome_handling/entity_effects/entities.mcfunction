#executes as all entites

#reset tag
tag @s remove dan.tomeEff

#timers
execute if score @s dan.tome_effIce matches 1.. run scoreboard players remove @s dan.tome_effIce 1
execute if score @s dan.tome_effIce matches 1.. run tag @s add dan.tomeEff

execute if score @s dan.tome_effPsn matches 1.. run scoreboard players remove @s dan.tome_effPsn 1
execute if score @s dan.tome_effPsn matches 1.. run tag @s add dan.tomeEff

#effects
execute if score @s dan.tome_effIce matches 1.. at @s run function dan.reap:item_handling/tome_handling/wand/effect/frozen_effect_handle
execute if score @s dan.tome_effPsn matches 1.. at @s run function dan.reap:item_handling/tome_handling/wand/effect/poison_effect_handle