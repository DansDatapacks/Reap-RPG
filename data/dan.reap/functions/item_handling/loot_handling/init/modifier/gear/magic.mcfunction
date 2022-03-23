# magic weapon modifer

##randomizer
#set min and max
scoreboard players set #RNG rand.min 1
#good/neutral
execute unless score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 15
execute if score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 6

#returns randomized number between rand.min and rand.max as rand.num
function math:random

#good
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 2
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 4
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 6
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 10
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 12
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 18
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 20
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 8 run scoreboard players set #Modifier dan.temp 22
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 9 run scoreboard players set #Modifier dan.temp 13
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 10 run scoreboard players set #Modifier dan.temp 28
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 11 run scoreboard players set #Modifier dan.temp 39
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 12 run scoreboard players set #Modifier dan.temp 40
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 13 run scoreboard players set #Modifier dan.temp 41
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 14 run scoreboard players set #Modifier dan.temp 73
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 15 run scoreboard players set #Modifier dan.temp 74
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 16 run scoreboard players set #Modifier dan.temp 75
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 17 run scoreboard players set #Modifier dan.temp 81
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 18 run scoreboard players set #Modifier dan.temp 85
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 19 run scoreboard players set #Modifier dan.temp 84
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 20 run scoreboard players set #Modifier dan.temp 86
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 21 run scoreboard players set #Modifier dan.temp 87

#neutral (good and bad)
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 22 run scoreboard players set #Modifier dan.temp 44
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 23 run scoreboard players set #Modifier dan.temp 46
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 24 run scoreboard players set #Modifier dan.temp 49
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 25 run scoreboard players set #Modifier dan.temp 79
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 26 run scoreboard players set #Modifier dan.temp 80
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 27 run scoreboard players set #Modifier dan.temp 82
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 28 run scoreboard players set #Modifier dan.temp 83

#bad
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 25
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 42
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 43
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 45
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 29
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 30
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 76
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 8 run scoreboard players set #Modifier dan.temp 77