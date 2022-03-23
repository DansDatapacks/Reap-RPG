# fireball trigger

#particles
particle minecraft:end_rod ~ ~ ~ .2 .4 .2 0 10 force
particle minecraft:block blue_ice ~ ~ ~ .4 .4 .4 0 30 force

#sound
playsound minecraft:block.glass.break ambient @a[distance=..20] ~ ~ ~ 2 .2

#ice effect
fill ~-.5 ~-.5 ~-.5 ~.5 ~.5 ~.5 minecraft:frosted_ice[age=3] replace minecraft:water
execute as @e[distance=..3,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] at @s run function dan.reap:item_handling/tome_handling/wand/effect/give_ice_effect

#deal damage
scoreboard players operation #DealDamage dan.temp = @s dan.damage
execute as @e[distance=..3,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:utility/damage

#kill fireball
kill @s