# fireball effects

#particle
particle flame ~ ~ ~ .01 .01 .01 .05 5 force
particle campfire_cosy_smoke ~ ~ ~ .01 .01 .01 .01 1 force

#effect
execute at @s positioned ~ ~-1 ~ as @e[distance=..1.8,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run data modify entity @s Fire set value 60

#trigger
execute at @s positioned ~ ~-1 ~ if entity @e[distance=..1.2,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:item_handling/tome_handling/wand/effect/fireball_trigger
execute unless block ^ ^ ^1 #dan.reap:air_block run function dan.reap:item_handling/tome_handling/wand/effect/fireball_trigger
execute if entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/fireball_trigger
execute unless block ~ ~-0.2 ~ #minecraft:passable unless entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/fireball_trigger