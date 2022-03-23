# runs on whoever uses a potion

#check which hand
execute if predicate dan.reap:potion/mainhand/holding_potion run function dan.reap:item_handling/potion_handling/potion_consume_mainhand
execute unless predicate dan.reap:potion/mainhand/holding_potion if predicate dan.reap:potion/offhand/holding_potion run function dan.reap:item_handling/potion_handling/potion_consume_offhand

#potion effect
execute if score #ManaRegen dan.temp matches 1.. run scoreboard players operation @s dan.mana += #ManaRegen dan.temp
execute if score #HealthRegen dan.temp matches 1.. run scoreboard players set @s math.temp 0
execute if score #HealthRegen dan.temp matches 1.. run scoreboard players operation @s math.temp -= #HealthRegen dan.temp
execute if score #HealthRegen dan.temp matches 1.. run function math:health/apply

#advancements
execute if score #ManaRegen dan.temp matches 1.. run advancement grant @s only dan.reap:adventurer/drink_mana_potion
execute if score #HealthRegen dan.temp matches 1.. run advancement grant @s only dan.reap:adventurer/drink_health_potion

#reset variables
scoreboard players reset #ManaRegen dan.temp
scoreboard players reset #HealthRegen dan.temp

#reset consume item trigger
advancement revoke @s only dan.reap:utility/detect_consume_potion