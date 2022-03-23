# frozen effect

#modulo calc (timer decreases every tick, but we want to detect seconds so we use 20, which means every 20 ticks/1 second it runs)
scoreboard players operation @s dan.temp = @s dan.tome_effIce
scoreboard players operation @s dan.temp %= #20 dan.data

#effect
execute as @s if score @s dan.temp matches 0 at @s run function dan.reap:item_handling/tome_handling/wand/effect/frozen_effect

#reset temp score
scoreboard players reset @s dan.temp