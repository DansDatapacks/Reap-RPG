# kill this entity

execute at @s run tp @s ~ ~-256 ~

tag @s add dan.kill_entity

schedule function dan.main:utility/kill 1t