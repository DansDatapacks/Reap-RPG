# detects consumed item

#check which hand
execute if predicate dan.reap:food/mainhand/holding_food store result score #HealthRegen dan.temp run data get entity @s SelectedItem.tag.health_regen
execute unless predicate dan.reap:food/mainhand/holding_food if predicate dan.reap:food/offhand/holding_food store result score #HealthRegen dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.health_regen

#heal effect
execute if score #HealthRegen dan.temp matches 1.. run scoreboard players set @s math.temp 0
execute if score #HealthRegen dan.temp matches 1.. run scoreboard players operation @s math.temp -= #HealthRegen dan.temp
execute if score #HealthRegen dan.temp matches 1.. run function math:health/apply

#reset variables
scoreboard players reset #HealthRegen dan.temp

#advancement
execute if predicate dan.reap:food/holding_berries run function dan.reap:quest/complete/forage_berries

#reset consume item trigger
advancement revoke @s only dan.reap:utility/detect_consume_food