# sapphire

#handle loop
execute if score #loop dan.temp matches 1.. run scoreboard players remove #loop dan.temp 1

loot give @s loot dan.reap:valuable/sapphire

#next loop
execute if score #loop dan.temp matches 1.. run function give:valuable/sapphire