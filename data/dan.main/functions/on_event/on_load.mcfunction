# runs every load/reload

#debug command (needed)
scoreboard objectives add dan.data dummy

##on reload
#count reloads
scoreboard players add #ReloadCount dan.data 1
#debug message on reload
execute as @a[tag=dan.dataMessagesEnabled] if score #ReloadCount dan.data matches 1.. run function dan.main:message/debug_reload

##on first load
#install (runs once on first install)
execute if score #ReloadCount dan.data matches 1 run function dan.main:on_event/on_install
#on first load message
execute unless score #Acknowledged dan.data matches 0.. as @a run function dan.main:message/on_first_load

#load Reap
execute if score #EnableDan.Reap dan.data matches 1 run function dan.reap:on_event/on_load

#begin loop
schedule function dan.main:loop/main 1t replace