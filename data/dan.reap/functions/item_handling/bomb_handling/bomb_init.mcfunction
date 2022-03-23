# inits bomb explode timer

#init timer (2 seconds)
execute store result score @s dan.timer run time query gametime
scoreboard players operation @s dan.timer += #40 dan.data
tag @s add dan.tickingBomb
schedule function dan.reap:item_handling/bomb_handling/bomb_schedule 40t append

#sound
playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 3 2

#tag
tag @s add dan.initBombTimer
tag @s add global.ignore