# on inventory change (triggered by advancement)

#reset tags
tag @s remove dan.holdingBackpack

#check if holding backpack
execute if predicate dan.reap:backpack/holding_backpack run tag @s add dan.holdingBackpack
execute if entity @s[tag=dan_reap.has_backpack_open,tag=!dan.holdingBackpack] run function dan.reap:item_handling/backpack_handling/try_close

#holding non-reap item
execute if entity @s[gamemode=!creative] unless data entity @s SelectedItem.tag.reap_id run function dan.reap:item_handling/item_init/replace/non_reap_item

#detect artifacts
execute as @s run function dan.reap:item_handling/artifact_handling/detect_inventory_artifacts