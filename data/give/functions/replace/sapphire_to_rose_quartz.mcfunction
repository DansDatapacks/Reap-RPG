# sapphire to rose quartz

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

clear @s minecraft:gold_ingot{reap_id:"sapphire"} 8
loot give @s loot dan.reap:valuable/rose_quartz

#next loop
execute if score #loop dan.temp matches 1.. run function give:replace/sapphire_to_rose_quartz