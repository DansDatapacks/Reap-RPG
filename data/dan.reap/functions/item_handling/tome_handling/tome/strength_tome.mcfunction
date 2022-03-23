# strength tome

#particle
execute at @s run particle minecraft:enchant ~ ~1 ~ .3 .3 .3 1 25 force
#sound
execute at @s run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 1 1.5

#summon spell
execute at @s anchored feet run summon area_effect_cloud ~ ~ ~ {Duration:20,RadiusPerTick:-0.003f,Radius:1f,Tags:["dan.editTomeAEC","global.ignore"],Particle:"entity_effect",Color:16744737,Potion:"minecraft:strength"}

#get duration (returns as dan.temp)
execute as @s run function dan.reap:item_handling/tome_handling/utility/get_duration
#set duration
execute store result entity @e[type=area_effect_cloud,tag=dan.editTomeAEC,limit=1] Duration int 1 run scoreboard players get @s dan.temp

#get radius (returns as dan.temp)
execute as @s run function dan.reap:item_handling/tome_handling/utility/get_radius
#set radius
execute store result entity @e[type=area_effect_cloud,tag=dan.editTomeAEC,limit=1] Radius float 1 run scoreboard players get @s dan.temp

#remove tag
tag @e[tag=dan.editTomeAEC] remove dan.editTomeAEC

#add used tag
tag @s add dan.useTome
#reset dan.temp
scoreboard players reset @s dan.temp