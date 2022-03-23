# run dark mana spawner

#dark mana spawner particles
execute at @s run particle minecraft:end_rod ~ ~.35 ~ .1 .2 .1 0 2 force

#summons mobs when spawnTimer reaches 0
execute unless score @s dan.spawnT matches 1.. run function dan.reap:spawner_handling/run_spawner/summon_neutral