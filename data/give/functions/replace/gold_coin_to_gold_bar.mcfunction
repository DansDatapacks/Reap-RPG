# gold coins to gold bar

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

clear @s minecraft:sunflower{reap_id:"gold_coin"} 64
loot give @s loot dan.reap:valuable/gold_bar

#next loop
execute if score #loop dan.temp matches 1.. run function give:replace/gold_coin_to_gold_bar