# detect item entity nbt

#reset scan on nearby items
execute at @s run tag @e[type=minecraft:item,distance=0.1..3] remove dan.entityScanned

#if only one
execute if data entity @s {Item:{Count:1b}} run tag @s add dan.itemCount1

#on ground
execute if data entity @s[tag=!dan.itemOnGround] {OnGround:1b} run tag @s add dan.itemOnGround

##run nbt tagging from other packs
function dan.reap:utility/item_nbt_tagging

#tag
tag @s add dan.entityScanned