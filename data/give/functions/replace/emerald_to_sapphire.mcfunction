# gold coins to gold bar

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

clear @s minecraft:emerald{reap_id:"emerald"} 8
loot give @s loot dan.reap:valuable/sapphire

#next loop
execute if score #loop dan.temp matches 1.. run function give:replace/emerald_to_sapphire