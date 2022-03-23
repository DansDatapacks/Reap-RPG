# gets duration of tome item (returns it as dan.temp)

#get duration set by item (tome_seconds)
execute as @s at @s if entity @s[tag=dan.useTomeLeft] store result score @s dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.tome_seconds
execute as @s at @s if entity @s[tag=dan.useTomeRight] store result score @s dan.temp run data get entity @s SelectedItem.tag.tome_seconds

#multiply by 20 to convert to ticks
scoreboard players operation @s dan.temp *= #20 dan.data