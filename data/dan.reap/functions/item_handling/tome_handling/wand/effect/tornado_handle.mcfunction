# tornado

#traction
execute as @e[distance=..5,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] at @s run function math:pull

##deal damage on timer
#timer handle
scoreboard players operation @s dan.temp = @s dan.timer
scoreboard players operation @s dan.temp %= #20 dan.data
#deal damage effect
execute if score @s dan.temp matches 1 run scoreboard players set #DealDamage dan.temp 5
execute if score @s dan.temp matches 1 at @s positioned ~ ~1 ~ as @e[distance=..2.5,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:utility/damage
#reset temp score
scoreboard players reset @s dan.temp

#rotate
tp @s ~ ~ ~ ~15 ~

#particles
particle cloud ^.5 ^.2 ^ 0 0 0 0 1 force
particle cloud ^ ^.9 ^-.8 0 0 0 0 1 force
particle cloud ^-1 ^1.6 ^ 0 0 0 0 1 force
particle cloud ^ ^2.3 ^1.2 0 0 0 0 1 force
particle cloud ^1.4 ^3 ^ 0 0 0 0 1 force

particle smoke ~ ~ ~ 1 0.5 1 .2 15 force
particle cloud ~ ~ ~ 1 0.5 1 .2 5 force