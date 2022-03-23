# summon loot chest spawner

#create chest spawner AEC
execute at @s unless block ~ ~-1 ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Loot Chest Spawner"}',Tags:["dan.spawner","dan.chest_spawner","dan.rotateInit","global.ignore"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

##rotation of loot chest
#set mob rotation score
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=dan.rotateInit,sort=nearest,limit=1] dan.mobRot = #MobRotation dan.mobRot
#remove rotate init tag
tag @e[type=minecraft:area_effect_cloud,tag=dan.rotateInit] remove dan.rotateInit

#kill spawnegg
execute as @s[tag=dan.loot_chest_spawnegg] run function dan.reap:utility/kill_entity