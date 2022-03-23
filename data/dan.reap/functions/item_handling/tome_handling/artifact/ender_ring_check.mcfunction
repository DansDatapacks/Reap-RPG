# checks if an ender ring can be used and if so executes it

#valid TP position
execute at @s unless block ^ ^ ^10 minecraft:air run function dan.reap:message/cannot_teleport_in_block
execute at @s unless block ^ ^ ^10 minecraft:air run tag @s add dan.tomeNotValid