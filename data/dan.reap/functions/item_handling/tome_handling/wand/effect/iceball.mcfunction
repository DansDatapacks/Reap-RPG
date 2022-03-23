# fireball effects

#particle
particle minecraft:end_rod ~ ~ ~ .01 .01 .01 .05 2 force
particle minecraft:block packed_ice ~ ~ ~ .05 .01 .05 .01 8 force

#effect
execute at @s positioned ~ ~-1 ~ as @e[distance=..1.8,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:item_handling/tome_handling/wand/effect/give_ice_effect

#trigger
execute at @s positioned ~ ~-1 ~ if entity @e[distance=..1.2,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:item_handling/tome_handling/wand/effect/iceball_trigger
execute unless block ^ ^ ^1 #dan.reap:air_block run function dan.reap:item_handling/tome_handling/wand/effect/iceball_trigger
execute if entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/iceball_trigger
execute unless block ~ ~-0.2 ~ #minecraft:passable unless entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/iceball_trigger