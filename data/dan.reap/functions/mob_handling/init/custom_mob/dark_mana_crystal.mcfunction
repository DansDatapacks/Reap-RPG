# dark mana crystal init

#set mob's min and max rarity
scoreboard players set #MinRarity dan.temp 1
scoreboard players set #MaxRarity dan.temp 4

#set mob (sets rarity and base data)
function dan.reap:mob_handling/init/set_mob

#change data based on rarity
#common
execute if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/dark_mana_crystal/common",CustomNameVisible:0b}
#uncommon
execute if score @s dan.rarity matches 2 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/dark_mana_crystal/uncommon",CustomNameVisible:0b}
#rare
execute if score @s dan.rarity matches 3 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/dark_mana_crystal/rare",CustomNameVisible:0b}
#fabled
execute if score @s dan.rarity matches 4 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/dark_mana_crystal/fabled",CustomNameVisible:0b}

#init tag
tag @s add dan.initCustomMob

#set spawn timer to 0 so it instantly spawns mobs
scoreboard players set @s dan.spawnT 0

##other
#set mob ID
execute at @s if entity @e[limit=1,distance=..1,type=minecraft:area_effect_cloud,tag=dan.dark_mana_aec] run scoreboard players operation @s dan.mobID = @e[limit=1,sort=nearest,distance=..1,type=minecraft:area_effect_cloud,tag=dan.dark_mana_aec] dan.mobID
execute at @s unless entity @e[limit=1,distance=..1,type=minecraft:area_effect_cloud,tag=dan.dark_mana_aec] run scoreboard players set @s dan.mobID 301