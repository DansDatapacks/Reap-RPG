# holding tome (runs as players)

#particles
#execute at @s positioned ^-.8 ^.3 ^1 run particle flame ~ ~1.3 ~ .02 .02 .02 0 1 force

#detect tome use 
execute as @s if score @s dan.useCOAT matches 1.. run function dan.reap:item_handling/tome_handling/tome_used