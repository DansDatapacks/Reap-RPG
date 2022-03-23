# gives a loot chest according to the player's level

#common
execute if score @s dan.level matches ..14 run loot give @s loot dan.reap:loot_chest/common

#uncommon
execute if score @s dan.level matches 15..34 run loot give @s loot dan.reap:loot_chest/uncommon

#rare
execute if score @s dan.level matches 35..54 run loot give @s loot dan.reap:loot_chest/rare

#fabled
execute if score @s dan.level matches 55..74 run loot give @s loot dan.reap:loot_chest/fabled

#mythical
execute if score @s dan.level matches 75.. run loot give @s loot dan.reap:loot_chest/mythical