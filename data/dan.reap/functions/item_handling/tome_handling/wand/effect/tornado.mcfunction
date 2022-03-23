# tornado trigger

#particles
particle cloud ~ ~ ~ .02 .01 .02 .05 10 force

#trigger
execute if block ~ ~-.5 ~ minecraft:water run function dan.reap:item_handling/tome_handling/wand/effect/tornado_trigger
execute if entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/tornado_trigger
execute unless block ~ ~-0.2 ~ #minecraft:passable unless entity @s[tag=dan.endSpell] run function dan.reap:item_handling/tome_handling/wand/effect/tornado_trigger