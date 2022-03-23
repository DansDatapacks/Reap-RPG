# summon mobs at dark mana spawner

#get amount of hostile mobs in a certain radius
execute at @s store result score ##ofMobs dan.temp if entity @e[type=#dan.reap:hostile_valid,tag=!global.ignore,distance=..10]

#summon 1 if there are 4, 2 if below 4 (max can be 5)
execute if score ##ofMobs dan.temp matches ..4 at @s run function dan.reap:spawner_handling/run_spawner/mob_summon
execute if score ##ofMobs dan.temp matches ..3 at @s run function dan.reap:spawner_handling/run_spawner/mob_summon

#reset timer
scoreboard players set @s dan.spawnT 300