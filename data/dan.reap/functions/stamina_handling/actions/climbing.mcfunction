# climbing

#cooldown
scoreboard players set @s[scores={dan.climb=1..,dan.stamina=3..}] dan.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan.climb=1..,dan.stamina=3..}] dan.stamina 3
scoreboard players set @s[scores={dan.climb=1..,dan.stamina=..3}] dan.stamina 0

#climbing
effect give @s minecraft:levitation 1 1 true

#remove effect if no more stamina
effect clear @s[scores={dan.stamina=0}] minecraft:levitation

#add process tag
tag @s add dan.climb_process

#advancement
advancement grant @s only dan.reap:adventurer/climbing