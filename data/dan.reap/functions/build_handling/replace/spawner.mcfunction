# replaces vanilla Minecraft spawner blocks with Mana Crystal spawner of the same mob type

#get spawner's mob entity
data modify storage dan.reap:spawner_handling DetectedSpawnerEntity set from block ~ ~ ~ SpawnPotentials[0].Entity.id

#delete previous spawner block
setblock ~ ~ ~ minecraft:air destroy

#spawn mana crystal AEC
function dan.reap:spawner_handling/create_spawner/mana_crystal_spawner

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Mob Spawner replaced with Mana Crystal Spawner","color":"gray"}]