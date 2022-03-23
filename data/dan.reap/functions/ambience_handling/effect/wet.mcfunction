# wet effect

#timer handle
scoreboard players remove @s dan.am_wetTime 1

#particle effect
execute at @s run particle minecraft:falling_water ~ ~1 ~ .2 .3 .2 .2 3 force

#slowness effect
effect give @s minecraft:slowness 1 0 true