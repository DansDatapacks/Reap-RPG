# poison effect trigger

#particles
particle minecraft:block minecraft:slime_block ~ ~.5 ~ .5 .5 .5 1 30 force

#deal damage
scoreboard players set #DealDamage dan.temp 3
function dan.reap:utility/damage