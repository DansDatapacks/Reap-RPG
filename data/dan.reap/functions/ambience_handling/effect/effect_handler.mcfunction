# ambient effects

##wet effect (on any entity, including mobs)
#execute effect (when not in water)
execute as @a if score @s dan.am_wetTime matches 1.. at @s unless block ~ ~1.5 ~ water run function dan.reap:ambience_handling/effect/wet
execute as @e[type=!#dan.reap:unwetable,tag=!global.ignore] at @s if entity @p[distance=..30] if score @s dan.am_wetTime matches 1.. unless block ~ ~ ~ minecraft:water run function dan.reap:ambience_handling/effect/wet