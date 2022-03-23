# aetherian feather - allows you to glide down

execute at @s anchored eyes if block ~ ~ ~ minecraft:water run effect give @s water_breathing 1 0 true

execute at @s anchored eyes if block ~ ~1.5 ~ minecraft:water positioned ^ ^-.1 ^.4 run particle minecraft:bubble ~ ~ ~ .01 .01 .01 .05 2