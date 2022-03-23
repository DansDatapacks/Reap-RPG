# smolder effect

#light mobs nearby on fire
execute at @s run execute as @e[distance=..4,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run data modify entity @s Fire set value 100

#fire resistance
execute run effect give @s minecraft:fire_resistance 1 0 true

#particles
execute at @s run particle minecraft:smoke ~ ~ ~ 3 3 3 0.1 10 force
execute at @s run particle minecraft:flame ~ ~ ~ 3 3 3 0.1 5 force
execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 1 force