# poison effect (executes as entities with effect)

#particles
particle minecraft:block minecraft:slime_block ~.5 ~.5 ~.5 .5 .5 .5 1 15 force
particle minecraft:large_smoke ~ ~ ~ 1 .8 1 0 1 force

#effect
execute as @e[distance=..3,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] unless score @s dan.tome_effPsn matches 100.. at @s run function dan.reap:item_handling/tome_handling/wand/effect/give_poison_effect
effect give @e[distance=..3,type=player] poison 5

#sound
playsound minecraft:block.smoker.smoke ambient @a[distance=..20] ~ ~ ~ 1 2