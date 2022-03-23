# inits bomb explode timer

#init timer (3 seconds)
execute store result score @s dan.timer run time query gametime
scoreboard players operation @s dan.timer += #60 dan.data
tag @s add dan.tickingSmokeBomb
schedule function dan.reap:item_handling/bomb_handling/bomb_schedule 60t

#sound
playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 3 2

#tag
tag @s add dan.initBombTimer
tag @s add global.ignore