# runs the behavior of clerics

#if the cleric has a potion and the cooldown(timer) is 0, then throw a healing potion near any player that's damaged (unless a potion is already being thrown near)
execute as @s[type=minecraft:villager,tag=dan.villagerCleric,scores={dan.potCnt=1..}] if entity @s[tag=dan.endSpell] at @s positioned ^ ^ ^1 if entity @e[distance=..4,scores={dan.hb_ratio=..99},type=!#dan.reap:hostile] at @s anchored eyes unless entity @e[type=minecraft:potion,distance=..4] run function dan.reap:mob_handling/behavior/villager/cleric_throw_potion

#reset potion count if near player on a new day
execute as @s at @s if entity @p[distance=..50] unless score @s dan.day = #day dan.day run scoreboard players set @s dan.potCnt 6
execute as @s at @s if entity @p[distance=..50] unless score @s dan.day = #day dan.day run scoreboard players operation @s dan.day = #day dan.day