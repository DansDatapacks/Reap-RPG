# get mob's minimum rarity

#reset dan.temp
scoreboard players reset @s dan.temp

##vanilla mobs
#mythical
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/mythical] run scoreboard players set @s dan.temp 5

#fabled
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/fabled] run scoreboard players set @s dan.temp 4

#rare
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/rare] run scoreboard players set @s dan.temp 3

#uncommon
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/uncommon] run scoreboard players set @s dan.temp 2

#common
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/common] run scoreboard players set @s dan.temp 1

##custom mobs
#set min rarity = to pre-determined #MinRarity dan.temp score
execute if entity @s[tag=global.custom_mob,tag=!global.ignore] run scoreboard players operation @s dan.temp = #MinRarity dan.temp

##other (set to min 1)
execute unless score @s dan.temp matches 1.. run scoreboard players set @s dan.temp 1