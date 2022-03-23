# armor modifiers

##randomizer
#set min and max
scoreboard players set #RNG rand.min 1
#good/neutral
execute unless score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 25
execute if score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 7

#returns randomized number between rand.min and rand.max as rand.num
function math:random

#good
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 1
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 2
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 4
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 6
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 8
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 9
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 16
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 8 run scoreboard players set #Modifier dan.temp 17
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 9 run scoreboard players set #Modifier dan.temp 18
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 10 run scoreboard players set #Modifier dan.temp 19
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 11 run scoreboard players set #Modifier dan.temp 20
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 12 run scoreboard players set #Modifier dan.temp 35
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 13 run scoreboard players set #Modifier dan.temp 37
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 14 run scoreboard players set #Modifier dan.temp 73
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 15 run scoreboard players set #Modifier dan.temp 74
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 16 run scoreboard players set #Modifier dan.temp 75
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 17 run scoreboard players set #Modifier dan.temp 81
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 18 run scoreboard players set #Modifier dan.temp 85
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 19 run scoreboard players set #Modifier dan.temp 86
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 20 run scoreboard players set #Modifier dan.temp 87

#neutral (good and bad)
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 21 run scoreboard players set #Modifier dan.temp 7
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 22 run scoreboard players set #Modifier dan.temp 15
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 23 run scoreboard players set #Modifier dan.temp 36
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 24 run scoreboard players set #Modifier dan.temp 61
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 25 run scoreboard players set #Modifier dan.temp 80

#bad
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 25
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 26
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 30
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 43
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 76
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 77
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 78