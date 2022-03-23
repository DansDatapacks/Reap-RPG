# converts rotation of placed armorstand to a placed banner's rotation

execute if entity @s[y_rotation=0] run setblock ~ ~ ~ minecraft:white_banner[rotation=0]
execute if entity @s[y_rotation=45] run setblock ~ ~ ~ minecraft:white_banner[rotation=2]
execute if entity @s[y_rotation=90] run setblock ~ ~ ~ minecraft:white_banner[rotation=4]
execute if entity @s[y_rotation=135] run setblock ~ ~ ~ minecraft:white_banner[rotation=6]
execute if entity @s[y_rotation=180] run setblock ~ ~ ~ minecraft:white_banner[rotation=8]
execute if entity @s[y_rotation=225] run setblock ~ ~ ~ minecraft:white_banner[rotation=10]
execute if entity @s[y_rotation=270] run setblock ~ ~ ~ minecraft:white_banner[rotation=12]
execute if entity @s[y_rotation=315] run setblock ~ ~ ~ minecraft:white_banner[rotation=14]