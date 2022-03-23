# poison effects

#particle
particle minecraft:block minecraft:slime_block ~ ~ ~ .01 .01 .01 .05 6 force
particle minecraft:large_smoke ~ ~ ~ .01 .01 .01 .01 2 force

#effect
execute at @s positioned ~ ~-1 ~ as @e[distance=..1.8,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] unless score @s dan.tome_effPsn matches 100.. at @s run function dan.reap:item_handling/tome_handling/wand/effect/give_poison_effect

#trigger
execute at @s positioned ~ ~-1 ~ if entity @e[distance=..1.2,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:item_handling/tome_handling/wand/effect/poisonball_trigger
execute unless block ^ ^ ^1 #dan.reap:air_block run function dan.reap:item_handling/tome_handling/wand/effect/poisonball_trigger
execute if entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/poisonball_trigger
execute unless block ~ ~-0.2 ~ #minecraft:passable unless entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/poisonball_trigger