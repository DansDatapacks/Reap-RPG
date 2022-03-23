# places thatch

#place block at item stack
execute at @s run setblock ~ ~ ~ minecraft:hay_block keep

#kills item stack
kill @s

#gives advancement to players nearby
execute as @a[distance=..3] run function dan.reap:quest/complete/thatching