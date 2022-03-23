# triggers when a meteor lands

#particles
particle minecraft:lava ~ ~ ~ 2 1.8 2 0 50 force
particle minecraft:large_smoke ~ ~ ~ 2 1.8 2 0 60 force
particle minecraft:lava ~ ~.3 ~ .5 .8 .5 0 80 force

#deal damage
scoreboard players operation #DealDamage dan.temp = @s dan.damage
execute as @e[distance=..5,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:utility/damage