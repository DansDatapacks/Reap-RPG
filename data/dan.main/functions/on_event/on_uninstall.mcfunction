# uninstall all packs

##main uninstall
#reset gamerules
gamerule commandBlockOutput true
gamerule sendCommandFeedback true

#remove scoreboard objectives
scoreboard objectives remove dan.data
scoreboard objectives remove dan.temp
scoreboard objectives remove dan.day
scoreboard objectives remove dan.playerLeave

#remove fake players
scoreboard players reset #ReloadCount
scoreboard players reset #ReapVersion
scoreboard players reset #EnableDan.Reap
scoreboard players reset #dayTime
scoreboard players reset #day

##other packs
function math:on_event/on_uninstall
#function dan.reap:on_event/on_uninstall
#function healthindications:on_event/on_uninstall