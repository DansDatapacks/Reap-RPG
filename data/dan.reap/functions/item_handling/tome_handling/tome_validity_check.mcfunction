# tome validity check

#initial error checks
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:tome/holding_smolder_tome if data entity @s {Inventory:[{Slot:-106b,tag:{tome:"smolder"}}]} if score @s dan.tome_SmlT matches 1.. run function dan.reap:message/tome_active
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeRight] if predicate dan.reap:tome/holding_smolder_tome if data entity @s {SelectedItem:{tag:{tome:"smolder"}}} if score @s dan.tome_SmlT matches 1.. run function dan.reap:message/tome_active
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:tome/holding_smolder_tome if data entity @s {Inventory:[{Slot:-106b,tag:{tome:"smolder"}}]} if score @s dan.tome_SmlT matches 1.. run tag @s add dan.tomeNotValid
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeRight] if predicate dan.reap:tome/holding_smolder_tome if data entity @s {SelectedItem:{tag:{tome:"smolder"}}} if score @s dan.tome_SmlT matches 1.. run tag @s add dan.tomeNotValid

#check tome use cooldown
execute if score @s dan.tomeC matches 1.. run tag @s add dan.tomeNotValid

#get mana cost
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeLeft] store result score #RequiredMana dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.mana_cost
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeRight] store result score #RequiredMana dan.temp run data get entity @s SelectedItem.tag.mana_cost
#check if valid amount of mana
execute unless entity @s[tag=dan.tomeNotValid] unless score @s dan.mana >= #RequiredMana dan.temp run function dan.reap:message/not_enough_mana
execute unless entity @s[tag=dan.tomeNotValid] unless score @s dan.mana >= #RequiredMana dan.temp run tag @s add dan.tomeNotValid

#get stamina cost
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeLeft] store result score #RequiredStamina dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.stamina_cost
execute unless entity @s[tag=dan.tomeNotValid] if entity @s[tag=dan.useTomeRight] store result score #RequiredStamina dan.temp run data get entity @s SelectedItem.tag.stamina_cost
#check if valid amount of stamina
execute unless entity @s[tag=dan.tomeNotValid] unless score @s dan.stamina >= #RequiredStamina dan.temp run function dan.reap:message/not_enough_stamina
execute unless entity @s[tag=dan.tomeNotValid] unless score @s dan.stamina >= #RequiredStamina dan.temp run tag @s add dan.tomeNotValid

#custom checks
execute unless entity @s[tag=dan.tomeNotValid] if predicate dan.reap:artifacts/holding_ender_ring run function dan.reap:item_handling/tome_handling/artifact/ender_ring_check

#run tome execute
execute unless entity @s[tag=dan.tomeNotValid] run function dan.reap:item_handling/tome_handling/tome_execute

#reset dan.temp score
scoreboard players reset #RequiredMana dan.temp
scoreboard players reset #RequiredStamina dan.temp

#reset tag
tag @s remove dan.tomeNotValid