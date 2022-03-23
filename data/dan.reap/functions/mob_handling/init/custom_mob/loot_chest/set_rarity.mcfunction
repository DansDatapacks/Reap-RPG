# set rarity (for loot chests)

#get area's lvl as dan.areaLvl
function dan.reap:utility/area_lvl_check

##determine rarity
#common
execute as @s at @s if entity @s[scores={dan.areaLvl=1}] run scoreboard players set @s dan.rarity 1

#uncommon
execute as @s at @s if entity @s[scores={dan.areaLvl=2..3}] run scoreboard players set @s dan.rarity 2

#rare
execute as @s at @s if entity @s[scores={dan.areaLvl=4..5}] run scoreboard players set @s dan.rarity 3

#fabled
execute as @s at @s if entity @s[scores={dan.areaLvl=6..7}] run scoreboard players set @s dan.rarity 4

#mythical
execute as @s at @s if entity @s[scores={dan.areaLvl=8..}] run scoreboard players set @s dan.rarity 5

##set rarity
execute if score @s dan.rarity matches 1 run function dan.reap:mob_handling/init/rarity/common
execute if score @s dan.rarity matches 2 run function dan.reap:mob_handling/init/rarity/uncommon
execute if score @s dan.rarity matches 3 run function dan.reap:mob_handling/init/rarity/rare
execute if score @s dan.rarity matches 4 run function dan.reap:mob_handling/init/rarity/fabled
execute if score @s dan.rarity matches 5 run function dan.reap:mob_handling/init/rarity/mythical