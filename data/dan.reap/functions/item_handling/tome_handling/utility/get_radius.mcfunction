# gets radius of tome item (returns it as dan.temp)

#get radius set by item (tome_radius)
execute if entity @s[tag=dan.useTomeLeft] store result score @s dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.tome_radius
execute if entity @s[tag=dan.useTomeRight] store result score @s dan.temp run data get entity @s SelectedItem.tag.tome_radius