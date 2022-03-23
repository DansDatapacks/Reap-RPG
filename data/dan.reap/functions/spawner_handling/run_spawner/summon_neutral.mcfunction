# summon mobs at light mana spawner

#get amount of valid neutral mobs in a certain radius
execute at @s store result score ##ofMobs dan.temp if entity @e[type=#dan.reap:neutral_valid,tag=!global.ignore,distance=..20]

#summon 1 if there are 6, 2 if below 6 (max can be 7)
execute if score ##ofMobs dan.temp matches ..6 at @s run function dan.reap:spawner_handling/run_spawner/mob_summon
execute if score ##ofMobs dan.temp matches ..5 at @s run function dan.reap:spawner_handling/run_spawner/mob_summon

#reset timer
scoreboard players set @s dan.spawnT 200