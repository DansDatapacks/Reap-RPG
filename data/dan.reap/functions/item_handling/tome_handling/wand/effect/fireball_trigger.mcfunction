# fireball trigger

#particles
particle flame ~ ~ ~ .6 .8 .6 0 10 force
particle large_smoke ~ ~ ~ 1 .8 1 0 30 force
particle flame ~ ~.3 ~ .2 .4 .2 0 30 force

#sound
playsound entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 .7

#fire effect
execute as @e[distance=..3,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run data modify entity @s Fire set value 240

#deal damage
scoreboard players operation #DealDamage dan.temp = @s dan.damage
execute as @e[distance=..3,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:utility/damage

#kill fireball
kill @s