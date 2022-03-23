# item handler

#backpack handling
execute as @a[tag=dan.holdingBackpack] run function dan.reap:item_handling/backpack_handling/holding

#food handling
function dan.reap:item_handling/food_handling/food_handler

#run tomes/magic items
function dan.reap:item_handling/tome_handling/tome_handler

#item entity handler (must be constantly ran)
execute as @e[type=minecraft:item,tag=!global.ignore] at @s if entity @p[distance=..30] run function dan.reap:item_handling/item_entity_handler

#bomb handler
execute as @e[type=minecraft:item,tag=dan.nbt_bomb,tag=dan.itemThrown] at @s run function dan.reap:item_handling/bomb_handling/bomb_handler

##held item handler
#potion drink handling
execute as @a if score @s dan.usePot matches 1.. run function dan.reap:item_handling/potion_handling/on_potion_drink
#loot chest handling
execute as @a if score @s dan.dropped matches 1.. at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.itemCount1] run function dan.reap:item_handling/loot_handling/open_loot_chest
execute as @a if score @s dan.dropped matches 1.. at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=!dan.itemCount1] run data merge entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=!dan.itemCount1] {PickupDelay:0s}
#two-handed handler
execute as @a run function dan.reap:item_handling/weapon_handling/two_handed_detect
#combo damage handler
#execute as @a[nbt={SelectedItem:{tag:{two_handed:"true"}}} if entity @s[nbt={Inventory:[{Slot:-106b}]}] run function dan.reap:item_handling/weapon/too_heavy

#artifact passives (usable artifacts are tomes)
function dan.reap:item_handling/artifact_handling/artifact_handler