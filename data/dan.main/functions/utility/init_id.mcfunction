# initializes ID of player

#set up next ID
execute unless score @s dan.ID matches 1.. run scoreboard players add #nextID dan.ID 1

#get next ID
execute unless score @s dan.ID matches 1.. run scoreboard players operation @s dan.ID = #nextID dan.ID