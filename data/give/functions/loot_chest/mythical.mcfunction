# mythical loot chest

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

loot give @s loot dan.reap:loot_chest/mythical

#next loop
execute if score #loop dan.temp matches 1.. run function give:loot_chest/mythical