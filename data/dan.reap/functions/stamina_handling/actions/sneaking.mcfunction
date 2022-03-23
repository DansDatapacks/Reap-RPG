# sneaking - these run only when the player is sneaking

#climbing detect
execute as @s[tag=dan.lookUp] at @s unless block ~ ~ ~ minecraft:water run scoreboard players add @s dan.climb 1

#prone handler
#execute as @s[tag=dan.lookVeryDown] run tag @s add dan_prone