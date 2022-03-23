# melee weapon modifiers

##randomizer
#set min and max
scoreboard players set #RNG rand.min 1
#good/neutral
execute unless score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 24
#bad
execute if score #BadModifier dan.temp matches 1 run scoreboard players set #RNG rand.max 18

#returns randomized number between rand.min and rand.max as rand.num
function math:random

#good
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 47
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 48
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 50
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 51
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 52
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 62
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 13
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 8 run scoreboard players set #Modifier dan.temp 38
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 9 run scoreboard players set #Modifier dan.temp 39
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 10 run scoreboard players set #Modifier dan.temp 40
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 11 run scoreboard players set #Modifier dan.temp 41
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 12 run scoreboard players set #Modifier dan.temp 21
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 13 run scoreboard players set #Modifier dan.temp 22
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 14 run scoreboard players set #Modifier dan.temp 28
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 15 run scoreboard players set #Modifier dan.temp 31
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 16 run scoreboard players set #Modifier dan.temp 32
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 17 run scoreboard players set #Modifier dan.temp 33
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 18 run scoreboard players set #Modifier dan.temp 34
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 19 run scoreboard players set #Modifier dan.temp 37

#neutral (good and bad)
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 20 run scoreboard players set #Modifier dan.temp 49
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 21 run scoreboard players set #Modifier dan.temp 61
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 22 run scoreboard players set #Modifier dan.temp 36
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 23 run scoreboard players set #Modifier dan.temp 23
execute unless score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 24 run scoreboard players set #Modifier dan.temp 27

#bad
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 1 run scoreboard players set #Modifier dan.temp 53
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 2 run scoreboard players set #Modifier dan.temp 60
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 3 run scoreboard players set #Modifier dan.temp 54
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 4 run scoreboard players set #Modifier dan.temp 55
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 5 run scoreboard players set #Modifier dan.temp 56
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 6 run scoreboard players set #Modifier dan.temp 57
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 7 run scoreboard players set #Modifier dan.temp 58
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 8 run scoreboard players set #Modifier dan.temp 59
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 9 run scoreboard players set #Modifier dan.temp 42
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 10 run scoreboard players set #Modifier dan.temp 43
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 11 run scoreboard players set #Modifier dan.temp 44
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 12 run scoreboard players set #Modifier dan.temp 45
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 13 run scoreboard players set #Modifier dan.temp 46
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 14 run scoreboard players set #Modifier dan.temp 49
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 15 run scoreboard players set #Modifier dan.temp 26
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 16 run scoreboard players set #Modifier dan.temp 24
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 17 run scoreboard players set #Modifier dan.temp 29
execute if score #BadModifier dan.temp matches 1 if score #RNG rand.num matches 18 run scoreboard players set #Modifier dan.temp 30