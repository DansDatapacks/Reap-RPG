# triggers commands that happen on rejoin

##other packs
function dan.reap:on_event/on_death
execute as @s[tag=!dan.preventStatReset] run function dan.stamina:on_event/on_death
execute as @s[tag=!dan.preventStatReset] run function dan.reap:ambience_handling/on_event/on_death

#score reset
scoreboard players reset @s dan.died
tag @s remove dan.preventStatReset