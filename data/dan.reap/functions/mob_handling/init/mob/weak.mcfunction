# weak init

#get max health
execute store result score #MobHealth dan.temp run attribute @s minecraft:generic.max_health get
scoreboard players operation #MobHealth dan.temp *= #10 dan.data
#get damage
execute store result score #MobDamage dan.temp run attribute @s minecraft:generic.attack_damage get
scoreboard players operation #MobDamage dan.temp *= #10 dan.data

##set data based on rarity
#common
execute if score @s dan.rarity matches 1 run scoreboard players operation #MobHealth dan.temp /= #4 dan.data
execute if score @s dan.rarity matches 1 run scoreboard players operation #MobDamage dan.temp /= #2 dan.data
execute if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/common",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.26}],CustomNameVisible:1b,CanPickUpLoot:0b}
#uncommon
execute if score @s dan.rarity matches 2 run scoreboard players operation #MobHealth dan.temp /= #4 dan.data
execute if score @s dan.rarity matches 2 run scoreboard players operation #MobHealth dan.temp *= #6 dan.data
execute if score @s dan.rarity matches 2 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/uncommon",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.28}],CustomNameVisible:1b,CanPickUpLoot:0b}
#rare
execute if score @s dan.rarity matches 3 run scoreboard players operation #MobHealth dan.temp *= #4 dan.data
execute if score @s dan.rarity matches 3 run scoreboard players operation #MobDamage dan.temp *= #2 dan.data
execute if score @s dan.rarity matches 3 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/rare",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],CustomNameVisible:1b,CanPickUpLoot:0b}
#fabled
execute if score @s dan.rarity matches 4 run scoreboard players operation #MobHealth dan.temp *= #6 dan.data
execute if score @s dan.rarity matches 4 run scoreboard players operation #MobDamage dan.temp *= #3 dan.data
execute if score @s dan.rarity matches 4 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/fabled",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],CustomNameVisible:1b,CanPickUpLoot:0b}
#mythical
execute if score @s dan.rarity matches 5 run scoreboard players operation #MobHealth dan.temp *= #12 dan.data
execute if score @s dan.rarity matches 5 run scoreboard players operation #MobDamage dan.temp *= #4 dan.data
execute if score @s dan.rarity matches 5 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot_drops/mythical",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.32}],CustomNameVisible:1b,CanPickUpLoot:0b}

#set new max health
scoreboard players operation #MobHealth dan.temp /= #10 dan.data
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run scoreboard players get #MobHealth dan.temp
execute store result entity @s Health float 1 run scoreboard players get #MobHealth dan.temp
#set new damage
scoreboard players operation #MobDamage dan.temp /= #10 dan.data
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base float 1 run scoreboard players get #MobDamage dan.temp