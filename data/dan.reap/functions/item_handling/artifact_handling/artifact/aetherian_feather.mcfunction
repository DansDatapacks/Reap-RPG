# aetherian feather - allows you to glide down

execute at @s if block ~ ~-.5 ~ minecraft:air run effect give @s slow_falling 1 0 true

execute at @s if block ~ ~-.5 ~ minecraft:air run particle minecraft:cloud ~ ~ ~ .01 .01 .01 .05 1