# sapphire to rose quartz

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

clear @s minecraft:quartz{reap_id:"rose_quartz"} 8
loot give @s loot dan.reap:valuable/ruby

#next loop
execute if score #loop dan.temp matches 1.. run function give:replace/rose_quartz_to_ruby