# give fabled scrap

#tag
tag @s add dan.queue_fabled_scrap

#queue
schedule function dan.reap:item_handling/loot_handling/scrap/fabled 1t

#advancement
advancement grant @s only dan.reap:adventurer/scrap_loot