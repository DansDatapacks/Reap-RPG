# replaces containers like chests with Loot Chest Spawners

#detect rotation
function dan.reap:build_handling/check/check_chest_rot

#create loot chest spawner
function dan.reap:spawner_handling/create_spawner/loot_chest_spawner

#delete block
setblock ~ ~ ~ minecraft:air replace

#kill items dropped from chest
kill @e[distance=..2,type=minecraft:item]

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Chest replaced with Loot Chest","color":"gray"}]