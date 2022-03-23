# gold coins to gold bar

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

clear @s minecraft:gold_ingot{reap_id:"gold_bar"} 8
loot give @s loot dan.reap:valuable/emerald

#next loop
execute if score #loop dan.temp matches 1.. run function give:replace/gold_bar_to_emerald