# respawns spawners

#mob spawners (if it didnt just turn day, so it doesnt respawn automatically on players while in a fight for dark mana spawners only)
execute unless score #dayTime dan.data matches 1000 as @s[type=minecraft:area_effect_cloud,tag=dan.dark_mana_aec] at @s unless entity @e[limit=1,sort=nearest,distance=..1,tag=dan.dark_mana] positioned ~ ~-0.8 ~ run function dan.reap:summon/dark_mana
execute as @s[type=minecraft:area_effect_cloud,tag=dan.light_mana_aec] at @s unless entity @e[limit=1,sort=nearest,distance=..1,tag=dan.light_mana] positioned ~ ~-0.8 ~ run function dan.reap:summon/light_mana

#loot chest spawners (same thing as dark mana spawners. doenst respawn while in a dungeon etc.. right when it changes daytime)
execute unless score #dayTime dan.data matches 1000 as @s[type=minecraft:area_effect_cloud,tag=dan.chest_spawner] at @s positioned ~ ~-1.45 ~ unless entity @e[sort=nearest,limit=1,distance=..1,tag=dan.chest] run function dan.reap:summon/loot_chest

#sets dan.data score of entity for future comparison
scoreboard players operation @s dan.data = #day dan.data

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Spawner Set/Reset","color":"gray"}]