# check tier

#uncommon
execute if score @s dan.level matches 15.. run advancement grant @s only dan.reap:adventurer/reach_uncommon

#rare
execute if score @s dan.level matches 35.. run advancement grant @s only dan.reap:adventurer/reach_rare

#fabled
execute if score @s dan.level matches 55.. run advancement grant @s only dan.reap:adventurer/reach_fabled

#mythical
execute if score @s dan.level matches 75.. run advancement grant @s only dan.reap:adventurer/reach_mythical