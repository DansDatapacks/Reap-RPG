# give uncommon scrap

#tag
tag @s add dan.queue_uncommon_scrap

#queue
schedule function dan.reap:item_handling/loot_handling/scrap/uncommon 1t

#advancement
advancement grant @s only dan.reap:adventurer/scrap_loot