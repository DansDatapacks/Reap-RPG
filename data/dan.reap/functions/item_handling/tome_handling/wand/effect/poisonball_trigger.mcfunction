# fireball trigger

#particles
particle minecraft:block minecraft:slime_block ~ ~ ~ .6 .8 .6 0 10 force
particle minecraft:large_smoke ~ ~ ~ 1 .8 1 0 30 force
particle minecraft:block minecraft:slime_block ~ ~.3 ~ .2 .4 .2 0 30 force

#sound
playsound entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 .7

#summon poison cloud
execute as @s at @s positioned ~ ~1 ~ run function dan.reap:summon/poison_cloud

#deal damage
scoreboard players operation #DealDamage dan.temp = @s dan.damage
execute as @e[distance=..3,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:utility/damage

#kill poisonball
kill @s