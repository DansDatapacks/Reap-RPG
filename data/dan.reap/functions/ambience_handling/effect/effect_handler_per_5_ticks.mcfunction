# ambient effects

##wet effect (on any entity, including mobs)
#detect plunge
execute as @a at @s if block ~ ~ ~ water run scoreboard players set @s dan.am_wetTime 120
execute as @e[type=!#dan.reap:unwetable,tag=!global.ignore] at @s if entity @p[distance=..30] if block ~ ~ ~ minecraft:water run scoreboard players set @s dan.am_wetTime 120