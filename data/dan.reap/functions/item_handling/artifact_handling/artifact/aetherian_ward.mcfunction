# aetherian ward - prevents wither damage and weakens nearby wither mobs

effect clear @s minecraft:wither

execute at @s run effect give @e[type=wither_skeleton,distance=..5] minecraft:weakness 1 0 true