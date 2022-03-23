# translates chest rotation to mob rotation

#reset dan.temp
scoreboard players reset #MobRotation dan.temp

##detect
#north
execute if block ~ ~ ~ minecraft:chest[facing=north] run scoreboard players set #MobRotation dan.temp 1
#east
execute if block ~ ~ ~ minecraft:chest[facing=east] run scoreboard players set #MobRotation dan.temp 2
#south
execute if block ~ ~ ~ minecraft:chest[facing=south] run scoreboard players set #MobRotation dan.temp 3
#west
execute if block ~ ~ ~ minecraft:chest[facing=west] run scoreboard players set #MobRotation dan.temp 4
#default
execute unless score #MobRotation dan.temp matches 1.. run scoreboard players set #RNG rand.min 1
execute unless score #MobRotation dan.temp matches 1.. run scoreboard players set #RNG rand.max 4
execute unless score #MobRotation dan.temp matches 1.. run function math:random
execute unless score #MobRotation dan.temp matches 1.. run scoreboard players operation #MobRotation dan.temp = #RNG rand.num

##set
#north
execute if score #MobRotation dan.temp matches 1 run scoreboard players set #MobRotation dan.mobRot 0
#east
execute if score #MobRotation dan.temp matches 2 run scoreboard players set #MobRotation dan.mobRot 90
#south
execute if score #MobRotation dan.temp matches 3 run scoreboard players set #MobRotation dan.mobRot 180
#west
execute if score #MobRotation dan.temp matches 4 run scoreboard players set #MobRotation dan.mobRot 270