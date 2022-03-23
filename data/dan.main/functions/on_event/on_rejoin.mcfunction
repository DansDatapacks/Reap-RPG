# triggers commands that happen on rejoin

##other packs
function dan.reap:on_event/on_rejoin

##main pack
#rejoin message (for OPs)
execute as @s[tag=dan.OP] run function dan.main:message/on_rejoin

#score reset
scoreboard players reset @s dan.leftGame