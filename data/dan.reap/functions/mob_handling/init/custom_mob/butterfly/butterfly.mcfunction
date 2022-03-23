# butterfly init

##randomizer
#returns randomized number between rand.min and rand.max as rand.num (or between 1 and 100 if min/max not set)
#function math:random

#base butterfly data
data merge entity @s {Silent:1b,Health:1.0f,Attributes:[{Name:generic.max_health,Base:1d}],ActiveEffects:[{Id:14b,Amplifier:2b,Duration:2000000,ShowParticles:0b}]}

#change data based on biome
#plains
#execute if predicate dan.main:plains run function dan.reap:mob_handling/init/custom_mob/butterfly/type/monarch
#mountains
#execute if predicate dan.main:mountains run function dan.reap:mob_handling/init/custom_mob/butterfly/type/monarch
#taiga
#execute if predicate dan.main:taiga run function dan.reap:mob_handling/init/custom_mob/butterfly/type/monarch
#flower forest
execute if predicate dan.main:flower_forest run function dan.reap:mob_handling/init/custom_mob/butterfly/type/pink
#default
execute if entity @s[tag=!dan.am_initButterfly] run function dan.reap:mob_handling/init/custom_mob/butterfly/type/pink

#set mob's min/max rarity
#scoreboard players set #MaxRarity dan.temp 5

#set mob (sets rarity and base data)
#function dan.reap:mob_handling/init/set_rarity

#set sync ID
scoreboard players add #nextsyncID dan.syncID 1
scoreboard players operation @s dan.syncID = #nextsyncID dan.syncID

#init tag
tag @s add dan.initCustomMob