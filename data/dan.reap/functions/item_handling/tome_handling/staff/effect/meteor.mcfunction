# fireball effects

#particle
particle minecraft:lava ~ ~ ~ .01 .01 .01 .05 5 force
particle minecraft:smoke ~ ~ ~ .01 .01 .01 .01 1 force

#trigger
execute if entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/staff/effect/meteor_trigger
execute unless block ~ ~-0.2 ~ #minecraft:passable unless entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/staff/effect/meteor_trigger