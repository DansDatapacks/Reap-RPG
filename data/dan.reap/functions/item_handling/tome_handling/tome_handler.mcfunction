# handles tomes and magic items (runs per tick)

#handle players tome cooldown timers
execute as @a if score @s dan.tomeC matches 1.. run scoreboard players remove @s dan.tomeC 1

##reset timers/handle effects
execute as @a[tag=dan.tomeEff] run function dan.reap:item_handling/tome_handling/entity_effects/players
execute as @e[type=!#dan.main:uninteractable,tag=!global.ignore,tag=dan.tomeEff] run function dan.reap:item_handling/tome_handling/entity_effects/entities

#spell entity handler
execute as @e[tag=dan.spellSummonedEntity] at @s run function dan.reap:item_handling/tome_handling/spell_entity_handler

#spell handler
execute as @e[type=item,tag=dan.spellEntity] at @s run function dan.reap:item_handling/tome_handling/spell_handler

#detect tome hold
execute as @a if predicate dan.reap:tome/holding_tome run function dan.reap:item_handling/tome_handling/tome_held