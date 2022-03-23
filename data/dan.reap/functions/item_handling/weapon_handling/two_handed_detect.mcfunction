# two handed detect

#init dan.temp
scoreboard players set @s dan.temp 0

#detect player holding another item with a two-handed item
execute as @s if predicate dan.reap:two_handed/holding_two_handed_offhand if data entity @s SelectedItem run scoreboard players add @s dan.temp 1
execute as @s if predicate dan.reap:two_handed/holding_two_handed_mainhand if data entity @s {Inventory:[{Slot:-106b}]} run scoreboard players add @s dan.temp 1

#execute effects
execute as @s if score @s dan.temp matches 1.. run function dan.reap:item_handling/weapon_handling/heavy_effect
execute as @s[tag=dan.tooHeavy] unless score @s dan.temp matches 1.. run function dan.reap:item_handling/weapon_handling/heavy_effect_remove

#reset dan.temp
scoreboard players reset @s dan.temp