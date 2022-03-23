# check which stats to show dependant on item

#temp tag
tag @s add dan.itemStatSet

#air block detection
summon minecraft:area_effect_cloud ~ 255 ~ {Tags:["dan.air_detector","global.ignore"]}
execute as @e[tag=dan.air_detector] at @s run function dan.main:utility/find_air

#set sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ minecraft:acacia_sign

##detect item type
#melee weapon
execute if data entity @s {Item:{tag:{item_type:"melee_weapon"}}} run function dan.reap:item_handling/item_init/stat_visual/item/melee
#magic weapon
execute if data entity @s {Item:{tag:{item_type:"magic_weapon"}}} run function dan.reap:item_handling/item_init/stat_visual/item/armor
#ranged weapon
#execute if data entity @s {Item:{tag:{item_type:"ranged_weapon"}}} run function dan.reap:item_handling/item_init/stat_visual/item/ranged
#artifact
execute if data entity @s {Item:{tag:{item_type:"artifact"}}} run function dan.reap:item_handling/item_init/stat_visual/item/armor
#armor
execute if data entity @s {Item:{tag:{item_type:"armor"}}} run function dan.reap:item_handling/item_init/stat_visual/item/armor
#food
execute if data entity @s {Item:{tag:{item_type:"food"}}} run function dan.reap:item_handling/item_init/stat_visual/item/food
#potion
#execute if data entity @s {Item:{tag:{item_type:"potion"}}} run function dan.reap:item_handling/item_init/stat_visual/item/potion

#tag
data merge entity @s {Item:{tag:{stat_set:"true"}}}
tag @s add dan.stat_init

#end air detection/kill sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ air
kill @e[tag=dan.air_detector]

#reset
tag @s remove dan.itemStatSet