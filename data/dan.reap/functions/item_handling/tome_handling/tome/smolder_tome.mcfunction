# strength tome

#particle
execute at @s run particle minecraft:enchant ~ ~1 ~ .3 .3 .3 1 25 force
#sound
execute at @s run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 1 1.5

#get duration (returns as dan.temp)
execute as @s run function dan.reap:item_handling/tome_handling/utility/get_duration
#begin smoldering timer
scoreboard players operation @s dan.tome_SmlT = @s dan.temp
tag @s add dan.tomeEff

#add used tag
tag @s add dan.useTome
#reset dan.temp
scoreboard players reset @s dan.temp