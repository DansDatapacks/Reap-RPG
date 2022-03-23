# fireball effects

#particle
particle smoke ~ ~ ~ .01 .01 .01 .05 5 force
particle falling_dust green_terracotta ~ ~ ~ .01 .01 .01 .01 1 force

#trigger
execute if entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/evoker_trigger
execute unless block ~ ~-0.2 ~ #minecraft:passable unless entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/evoker_trigger