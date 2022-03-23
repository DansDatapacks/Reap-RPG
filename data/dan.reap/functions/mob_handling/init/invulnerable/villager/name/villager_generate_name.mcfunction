# sets villager name randomly

##randomize name
#set min and max
scoreboard players set @s rand.min 1
scoreboard players set @s rand.max 100

#returns randomized number between rand.min and rand.max as rand.num
execute as @s run function math:random

#set randomized name
scoreboard players operation @s dan.Name = @s rand.num

##randomize abbreviated last name (title)
#set min and max
scoreboard players set @s rand.min 1
scoreboard players set @s rand.max 23

#returns randomized number between rand.min and rand.max as rand.num
execute as @s run function math:random

#set randomized initial
scoreboard players operation @s dan.Title = @s rand.num

#set name
execute as @s at @s run function dan.reap:mob_handling/init/invulnerable/villager/name/villager_set_name