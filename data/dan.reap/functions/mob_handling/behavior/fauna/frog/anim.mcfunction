# butterfly animation handler

##handle different models for different mobs
#tree frog
execute if score @s[tag=dan.am_frogTreeFrog] dan.animFrame matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500201}}]}
execute if score @s[tag=dan.am_frogTreeFrog] dan.animFrame matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500202}}]}

#set timer back to max
scoreboard players operation @s dan.animTimer = @s dan.animSpeed