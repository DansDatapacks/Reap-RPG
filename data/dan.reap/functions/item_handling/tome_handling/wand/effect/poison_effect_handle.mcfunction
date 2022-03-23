# poison effect (executes as entities with effect)

#modulo calc (timer detection. runs every second.)
scoreboard players operation @s dan.temp = @s dan.tome_effPsn
scoreboard players operation @s dan.temp %= #20 dan.data

#deal damage
execute as @s if score @s dan.temp matches 0 at @s run function dan.reap:item_handling/tome_handling/wand/effect/poison_effect

#reset temp score
scoreboard players reset @s dan.temp