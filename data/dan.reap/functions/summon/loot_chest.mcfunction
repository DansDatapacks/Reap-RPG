# summons loot chest, with pseudo-randomized rarity

#summon placeholder loot chest summoner
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.loot_chest","dan.loot_chest_summoner","dan.rotateInit","global.custom_mob"]}

#set rotate score
execute at @s run scoreboard players operation #MobRotation dan.mobRot = @e[distance=..1,type=minecraft:area_effect_cloud,tag=!dan.rotateInit,sort=nearest,limit=1] dan.mobRot
execute at @s run scoreboard players operation @e[distance=..1,type=minecraft:area_effect_cloud,tag=dan.rotateInit,sort=nearest,limit=1] dan.mobRot = #MobRotation dan.mobRot
#remove rotate init tag
tag @e[type=minecraft:area_effect_cloud,tag=dan.rotateInit] remove dan.rotateInit