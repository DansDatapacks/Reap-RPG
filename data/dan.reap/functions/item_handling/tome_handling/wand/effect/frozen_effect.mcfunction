# frozen effect

#particles
particle minecraft:block minecraft:packed_ice ~ ~.5 ~ .5 .5 .5 .02 30 force

#effect
effect give @s slowness 1 2 true

#deal damage
scoreboard players operation #DealDamage dan.temp = @s dan.tome_dmgIce
execute as @s run function dan.reap:utility/damage