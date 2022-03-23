# give common scrap

#tag
tag @s add dan.queue_common_scrap

#queue
schedule function dan.reap:item_handling/loot_handling/scrap/common 1t

#advancement
advancement grant @s only dan.reap:adventurer/scrap_loot