# obsidian skull - stop fire block damage

#fire resistance if not in lava
execute at @s unless block ~ ~ ~ minecraft:lava run effect give @s fire_resistance 1 0 true
execute at @s unless block ~ ~ ~ minecraft:lava run tag @s remove dan.in_lava

#stop fire resistance in lava
execute at @s[tag=!dan.in_lava] if block ~ ~ ~ minecraft:lava run effect clear @s fire_resistance
execute at @s if block ~ ~ ~ minecraft:lava run tag @s add dan.in_lava