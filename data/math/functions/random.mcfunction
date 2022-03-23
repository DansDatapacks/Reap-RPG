# generate random number (take rand.min and rand.max from executor and set executor's rand.num to a random number between them)

#if min not set, set to 1
execute unless score @s rand.min matches 1.. run scoreboard players set @s rand.min 1
#if max not set, set to 100
execute unless score @s rand.max matches 1.. run scoreboard players set @s rand.max 100

#if min not set, set to 1
execute unless score #RNG rand.min matches 1.. run scoreboard players set #RNG rand.min 1
#if max not set, set to 100
execute unless score #RNG rand.max matches 1.. run scoreboard players set #RNG rand.max 100

#Change (lower, upper) to (lower, range)
scoreboard players operation @s rand.max -= @s rand.min
scoreboard players add @s rand.max 1

#Change (lower, upper) to (lower, range)
scoreboard players operation #RNG rand.max -= #RNG rand.min
scoreboard players add #RNG rand.max 1

#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"math_random_kcjbc\"",Duration:1,Tags:["global.ignore"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"math_random_kcjbc\"",Duration:1,Tags:["global.ignore"]}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 1
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 2
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 4
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 8
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 16
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 32
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 64
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 128
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 256
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 512
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 1024
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 2048
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 4096
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 8192
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 16384
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 32768
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 65536
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 131072
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 262144
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 524288
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 1048576
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 2097152
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 4194304
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 8388608
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 16777216
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 33554432
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 67108864
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 134217728
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 268435456
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 536870912
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",sort=random,limit=1,distance=..3] rand.min 1073741824

#Transfer random number and limit to given range
scoreboard players operation @s rand.num = @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",distance=..3,limit=1] rand.min
scoreboard players operation @s rand.num %= @s rand.max
scoreboard players operation @s rand.num += @s rand.min

#Transfer random number and limit to given range
scoreboard players operation #RNG rand.num = @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",distance=..3,limit=1] rand.min
scoreboard players operation #RNG rand.num %= #RNG rand.max
scoreboard players operation #RNG rand.num += #RNG rand.min

#Restore input2
scoreboard players operation @s rand.max += @s rand.min
scoreboard players remove @s rand.max 1

#Restore input2
scoreboard players operation #RNG rand.max += #RNG rand.min
scoreboard players remove #RNG rand.max 1

#kill calc AEC
kill @e[type=minecraft:area_effect_cloud,name="math_random_kcjbc",distance=..3]

#reset min/max
scoreboard players reset @s rand.min
scoreboard players reset @s rand.max
scoreboard players reset #RNG rand.min
scoreboard players reset #RNG rand.max