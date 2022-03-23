# inits loot chests

##randomizer
#set min and max
scoreboard players set @s rand.min 1
scoreboard players set @s rand.max 100
#returns randomized number between rand.min and rand.max as rand.num
function math:random

#summon loot chest entity (unless determined to be empty, 1/3 chance)
execute unless entity @s[scores={rand.num=1..33}] at @s positioned ~ ~-1.5 ~ run summon minecraft:skeleton ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"Loot Chest"}',CustomNameVisible:0b,Tags:["dan.chest","dan.setLootChest","hb.death_detect","global.custom_mob","global.ignore"],PersistenceRequired:1b,ArmorItems:[{},{},{},{}],ArmorDropChances:[0.000F,0.000F,0.000F,1.000F],ActiveEffects:[{Id:14b,Amplifier:2b,Duration:2000000,ShowParticles:0b}],Silent:1b,Health:1.0f,Attributes:[{Name:generic.max_health,Base:1d}],NoAI:1b,Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'"Death Detect AEC"',Tags:["global.ignore","hb.death_detect_aec","dan.dd_loot_chest"]}]}

##rotate
#set rotate score
execute at @s positioned ~ ~-1.5 ~ run scoreboard players operation @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] dan.mobRot = #MobRotation dan.mobRot
#north
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.mobRot matches 0..89 at @s run tp @s ~ ~ ~ ~180 ~
#east
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.mobRot matches 90..179 at @s run tp @s ~ ~ ~ ~-90 ~
#west
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.mobRot matches 270..360 at @s run tp @s ~ ~ ~ ~90 ~

#set mob's min and max rarity
scoreboard players set #MinRarity dan.temp 1
scoreboard players set #MaxRarity dan.temp 5

#set rarity (we dont use set mob since it doesnt need strength or normal monster data)
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] run function dan.reap:mob_handling/init/custom_mob/loot_chest/set_rarity

#change data based on rarity
#common
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.rarity matches 1 run loot replace entity @s armor.head loot dan.reap:loot_chest/common
#uncommon
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.rarity matches 2 run loot replace entity @s armor.head loot dan.reap:loot_chest/uncommon
#rare
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.rarity matches 3 run loot replace entity @s armor.head loot dan.reap:loot_chest/rare
#fabled
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.rarity matches 4 run loot replace entity @s armor.head loot dan.reap:loot_chest/fabled
#mythical
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] if score @s dan.rarity matches 5 run loot replace entity @s armor.head loot dan.reap:loot_chest/mythical

#init tag
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] run tag @s add dan.initCustomMob

#remove set loot chest tag
execute at @s positioned ~ ~-1.5 ~ as @e[distance=..1,tag=dan.setLootChest,sort=nearest,limit=1] run tag @s remove dan.setLootChest

#kill summoner AEC
kill @s[tag=dan.loot_chest_summoner]