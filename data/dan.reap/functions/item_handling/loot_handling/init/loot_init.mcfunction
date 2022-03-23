# init loot item

#chance to modify
scoreboard players set #RNG rand.min 1
scoreboard players set #RNG rand.max 4
function math:random

#get random modifier
execute if score #RNG rand.num matches 1 run function dan.reap:item_handling/loot_handling/init/modifier/generate_modifier

#set tag
data merge entity @s {Item:{tag:{loot_modified:"true"}}}
tag @s add dan.nbt_modified