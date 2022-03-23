# light mana crystal init

#set mob's max rarity (if I don't specify min, it is defaulted to 1 anyway within get_min_rarity)
scoreboard players set #MaxRarity dan.temp 1

#set mob's strength
#tag @s add dan.weak

#set mob's rarity
function dan.reap:mob_handling/init/set_mob

##change data based on rarity
#common
execute if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"",CustomNameVisible:0b}
#uncommon
execute if score @s dan.rarity matches 2 run data merge entity @s {DeathLootTable:"",CustomNameVisible:0b}
#rare
execute if score @s dan.rarity matches 3 run data merge entity @s {DeathLootTable:"",CustomNameVisible:0b}
#fabled
execute if score @s dan.rarity matches 4 run data merge entity @s {DeathLootTable:"",CustomNameVisible:0b}

#init tag
tag @s add dan.initCustomMob

#set spawn timer to 0 so it instantly spawns mobs
scoreboard players set @s dan.spawnT 0

##other
#set mob ID
execute at @s if entity @e[limit=1,distance=..1,type=minecraft:area_effect_cloud,tag=dan.light_mana_aec] run scoreboard players operation @s dan.mobID = @e[limit=1,sort=nearest,distance=..1,type=minecraft:area_effect_cloud,tag=dan.light_mana_aec] dan.mobID
execute at @s unless entity @e[limit=1,distance=..1,type=minecraft:area_effect_cloud,tag=dan.light_mana_aec] run scoreboard players set @s dan.mobID 1