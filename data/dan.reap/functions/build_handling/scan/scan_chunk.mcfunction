# scan procedure (executes as scanning AEC)

#replace block
execute at @s unless block ~ ~ ~ minecraft:structure_void unless block ~ ~ ~ #dan.reap:air_block unless data block ~ ~ ~ Lock if block ~ ~ ~ #dan.reap:replaceable run function dan.reap:build_handling/scan/replace_block

#next block
scoreboard players add @s dan.temp 1

#tp
execute unless score @s dan.temp matches 16.. at @s run tp ~ ~ ~1
#recursive
execute unless score @s dan.temp matches 16.. run function dan.reap:build_handling/scan/scan_chunk