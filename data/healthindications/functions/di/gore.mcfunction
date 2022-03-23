# check for particle needed and show gore/play damage sound

#get particle type
execute if entity @s[type=#healthindications:entity_particle/bone] run scoreboard players set @s dan.temp 1
execute if entity @s[type=#healthindications:entity_particle/withered_bone] run scoreboard players set @s dan.temp 2
execute if entity @s[type=#healthindications:entity_particle/magma] run scoreboard players set @s dan.temp 3
execute if entity @s[type=#healthindications:entity_particle/slime] run scoreboard players set @s dan.temp 4
execute if entity @s[type=minecraft:player] run scoreboard players set @s dan.temp 5

#gore particle API
execute anchored feet positioned ~ ~0.3 ~ run function #healthindications:gore_api

#bone
execute if score @s dan.temp matches 1 anchored feet positioned ~ ~0.3 ~ run particle minecraft:block minecraft:bone_block ~ ~ ~ .1 0 .1 0.8 15

#withered bone
execute if score @s dan.temp matches 2 anchored feet positioned ~ ~0.3 ~ run particle minecraft:block minecraft:nether_bricks ~ ~ ~ .1 0 .1 0.8 15

#magma
execute if score @s dan.temp matches 3 anchored feet positioned ~ ~0.3 ~ run particle minecraft:falling_lava ~ ~ ~ .1 0 .1 0.8 15

#slime
execute if score @s dan.temp matches 4 anchored feet positioned ~ ~0.3 ~ run particle minecraft:block minecraft:slime_block ~ ~ ~ .1 0 .1 0.8 15

#player flesh (different particle than default)
execute if score @s dan.temp matches 5 anchored feet positioned ~ ~0.3 ~ run particle minecraft:block minecraft:redstone_block ~ ~ ~ .1 0 .1 0.8 15

#flesh (default/all other entites)
execute unless score @s dan.temp matches 0.. anchored feet positioned ~ ~0.3 ~ run particle minecraft:block minecraft:red_concrete ~ ~ ~ .1 0 .1 0.8 15

#reset temp
scoreboard players reset @s dan.temp