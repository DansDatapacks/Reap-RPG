# butterfly animation handler

#advance a frame
scoreboard players add @s dan.animFrame 1
#reset frame score (if not 1 through 5)
execute unless score @s dan.animFrame matches 1..9 run scoreboard players set @s dan.animFrame 1

##handle different models for different butterflies
#pink
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500101}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500102}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500103}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500104}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500105}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500104}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500103}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500102}}]}
execute if score @s[tag=dan.am_butterflyPink] dan.animFrame matches 9 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:41500101}}]}

#set timer back to max
scoreboard players operation @s dan.animTimer = @s dan.animSpeed