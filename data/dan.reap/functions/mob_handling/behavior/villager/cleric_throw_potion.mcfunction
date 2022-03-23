# throws a potion and resets scores

scoreboard players set @s dan.timer 200
scoreboard players remove @s dan.potCnt 1
summon minecraft:potion ~ ~ ~ {Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}