# give mythical scrap

#tag
tag @s add dan.queue_mythical_scrap

#queue
schedule function dan.reap:item_handling/loot_handling/scrap/mythical 1t

#advancement
advancement grant @s only dan.reap:adventurer/scrap_loot