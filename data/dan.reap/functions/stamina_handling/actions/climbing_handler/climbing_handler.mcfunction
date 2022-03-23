# climb handler

#climb tag
tag @s add dan.climbing

#apply climbing effect if climbing point detected
execute as @s at @s anchored eyes unless block ^ ^ ^1 #dan.reap:unclimbable run function dan.reap:stamina_handling/actions/climbing
execute as @s[tag=!dan.climb_process] at @s if block ~ ~-0.3 ~ #dan.reap:unclimbable anchored feet unless block ^ ^ ^1 #dan.reap:unclimbable run function dan.reap:stamina_handling/actions/climbing
execute as @s[tag=!dan.climb_process] at @s if block ~ ~-0.3 ~ #dan.reap:unclimbable anchored feet positioned ~ ~.6 ~ unless block ^ ^ ^1 #dan.reap:unclimbable run function dan.reap:stamina_handling/actions/climbing
execute as @s[tag=!dan.climb_process] at @s if block ~ ~-0.3 ~ #dan.reap:unclimbable anchored feet positioned ~ ~-.6 ~ unless block ^ ^ ^1 #dan.reap:unclimbable run function dan.reap:stamina_handling/actions/climbing
execute as @s[tag=!dan.climb_process] at @s run function dan.reap:stamina_handling/actions/climbing_handler/end_climb

#remove process tag (used to make sure only one of the climb effect commands run per tick per player)
tag @s remove dan.climb_process