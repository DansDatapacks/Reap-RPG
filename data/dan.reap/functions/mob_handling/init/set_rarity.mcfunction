# set rarity

#get area's lvl as dan.areaLvl
function dan.reap:utility/area_lvl_check

##randomizer
#set min and max
scoreboard players set @s rand.min 1
scoreboard players set @s rand.max 100

#returns randomized number between rand.min and rand.max as rand.num
function math:random

##determine rarity
#common
execute as @s at @s if entity @s[scores={dan.areaLvl=1}] run scoreboard players set @s dan.rarity 1
execute as @s at @s if entity @s[scores={dan.areaLvl=2,rand.num=1..85}] run scoreboard players set @s dan.rarity 1

#uncommon
execute as @s at @s if entity @s[scores={dan.areaLvl=2,rand.num=86..100}] run scoreboard players set @s dan.rarity 2
execute as @s at @s if entity @s[scores={dan.areaLvl=3}] run scoreboard players set @s dan.rarity 2
execute as @s at @s if entity @s[scores={dan.areaLvl=4,rand.num=1..85}] run scoreboard players set @s dan.rarity 2

#rare
execute as @s at @s if entity @s[scores={dan.areaLvl=4,rand.num=86..100}] run scoreboard players set @s dan.rarity 3
execute as @s at @s if entity @s[scores={dan.areaLvl=5}] run scoreboard players set @s dan.rarity 3
execute as @s at @s if entity @s[scores={dan.areaLvl=6,rand.num=1..85}] run scoreboard players set @s dan.rarity 3

#fabled
execute as @s at @s if entity @s[scores={dan.areaLvl=6,rand.num=86..100}] run scoreboard players set @s dan.rarity 4
execute as @s at @s if entity @s[scores={dan.areaLvl=7..,rand.num=1..85}] run scoreboard players set @s dan.rarity 4

#mythical
execute as @s at @s if entity @s[scores={dan.areaLvl=7..,rand.num=86..100}] run scoreboard players set @s dan.rarity 5
execute as @s at @s if entity @s[scores={dan.areaLvl=8}] run scoreboard players set @s dan.rarity 5

##run checks (default min = 1, max = 4)
#get mob's min rarity
function dan.reap:mob_handling/init/get_min_rarity
#min rarity check (dan.temp = this mob's min rarity) (if my current rarity is less than my min rarity, set my rarity to my min rarity)
execute if score @s dan.rarity < @s dan.temp run scoreboard players operation @s dan.rarity = @s dan.temp
#get mob's max rarity
function dan.reap:mob_handling/init/get_max_rarity
#max rarity check (dan.temp = this mob's max rarity) (if my current rarity is more than my max rarity, set my rarity to my max rarity)
execute if score @s dan.rarity > @s dan.temp run scoreboard players operation @s dan.rarity = @s dan.temp

##set rarity
execute if score @s dan.rarity matches 1 run function dan.reap:mob_handling/init/rarity/common
execute if score @s dan.rarity matches 2 run function dan.reap:mob_handling/init/rarity/uncommon
execute if score @s dan.rarity matches 3 run function dan.reap:mob_handling/init/rarity/rare
execute if score @s dan.rarity matches 4 run function dan.reap:mob_handling/init/rarity/fabled
execute if score @s dan.rarity matches 5 run function dan.reap:mob_handling/init/rarity/mythical