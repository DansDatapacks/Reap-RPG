# queen bee animation handler

#advance a frame
scoreboard players add @s dan.animFrame 1
#reset frame score (if not 1 through 10)
execute unless score @s dan.animFrame matches 1..8 run scoreboard players set @s dan.animFrame 1
#set timer back to max
scoreboard players operation @s dan.animTimer = @s dan.animSpeed
#hurt frame
execute if entity @s[tag=dan.hb_damaged] run scoreboard players set @s dan.animFrame 9
execute if entity @s[tag=dan.hb_damaged] run scoreboard players set @s dan.animTimer 3

##animation model
execute if score @s dan.animFrame matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001000}}]}
execute if score @s dan.animFrame matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001001}}]}
execute if score @s dan.animFrame matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001002}}]}
execute if score @s dan.animFrame matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001003}}]}
execute if score @s dan.animFrame matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001004}}]}
execute if score @s dan.animFrame matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001005}}]}
execute if score @s dan.animFrame matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001006}}]}
execute if score @s dan.animFrame matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001007}}]}

#hurt animation
execute if score @s dan.animFrame matches 9 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001008}}]}
