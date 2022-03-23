# item entity handler

#init items without reap_id
execute as @s[tag=!dan.nbt_valid] at @s run function dan.reap:item_handling/item_init/item_init

#init loot with modifier
execute as @s[tag=dan.nbt_modifiable,tag=!dan.nbt_modified] at @s run function dan.reap:item_handling/loot_handling/init/loot_init

#init stats
execute as @s[tag=dan.nbt_stat_item,tag=!dan.stat_init] at @s run function dan.reap:item_handling/item_init/stat_init

#turn on names for loot items
execute as @s[tag=!dan_nametaged,tag=dan.nbt_loot] at @s run function dan.reap:item_handling/loot_handling/enable_loot_name

#scrapping
execute as @s[tag=!dan.unscrappable,tag=dan.nbt_loot] at @s if block ~ ~ ~ #dan.reap:scrapper run function dan.reap:item_handling/loot_handling/scrap
execute as @s[tag=!dan.unscrappable,tag=dan.nbt_loot] at @s if block ~ ~-1 ~ #dan.reap:scrapper run function dan.reap:item_handling/loot_handling/scrap

#campfire init
execute as @s[tag=dan.nbt_stick,tag=dan.itemCount4] unless block ~ ~-0.2 ~ #minecraft:passable if block ~ ~ ~ minecraft:air run function dan.reap:item_handling/campfire_handling/log_stack
#campfire light
execute as @s[tag=dan.nbt_flint,tag=dan.itemCount2] if block ~ ~ ~ minecraft:campfire[lit=false] run function dan.reap:item_handling/campfire_handling/light_campfire

#soulbound handler
execute as @s[tag=dan.nbt_soulbound] at @s if entity @p[distance=..3] run data merge entity @s {PickupDelay:0s}