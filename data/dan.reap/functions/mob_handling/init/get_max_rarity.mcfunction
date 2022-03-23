# get mob's minimum rarity

#reset dan.temp
scoreboard players reset @s dan.temp

##vanilla mobs
#common
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/common] run scoreboard players set @s dan.temp 1

#uncommon
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/uncommon] run scoreboard players set @s dan.temp 2

#rare
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/rare] run scoreboard players set @s dan.temp 3

#fabled
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/fabled] run scoreboard players set @s dan.temp 4

#mythical
execute if entity @s[tag=!global.custom_mob,tag=!global.ignore,type=#dan.reap:rarity_check/mythical] run scoreboard players set @s dan.temp 5

##custom mobs
#set max rarity = to pre-determined #MaxRarity dan.temp score
execute if entity @s[tag=global.custom_mob,tag=!global.ignore] run scoreboard players operation @s dan.temp = #MaxRarity dan.temp

##other (set to max 4)
execute unless score @s dan.temp matches 1.. run scoreboard players set @s dan.temp 4