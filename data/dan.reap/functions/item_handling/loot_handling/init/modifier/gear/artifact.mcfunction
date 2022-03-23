# artifact modifiers

##randomizer
#set min and max
scoreboard players set #RNG rand.min 1
#good/neutral
execute unless score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 15
#bad
execute if score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 6

#returns randomized number between rand.min and rand.max as rand.num
function math:random

#good
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 9
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 10
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 11
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 12
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 15
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 16
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 18
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 8 run scoreboard players set #Modifier dan.temp 73
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 9 run scoreboard players set #Modifier dan.temp 84
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 10 run scoreboard players set #Modifier dan.temp 85
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 11 run scoreboard players set #Modifier dan.temp 87

#neutral (good and bad)
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 12 run scoreboard players set #Modifier dan.temp 14
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 13 run scoreboard players set #Modifier dan.temp 78
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 14 run scoreboard players set #Modifier dan.temp 80
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 15 run scoreboard players set #Modifier dan.temp 82
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 16 run scoreboard players set #Modifier dan.temp 83

#bad
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 25
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 26
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 30
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 76
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 77
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 78