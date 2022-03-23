# sends a message to OPs to tell that them if the datapack is activated and what is toggled off

#reap init check message (displays activated or deactivated status of Reap pack)
function dan.main:message/reap_init

##display packs that are deactivated if Reap RPG is activated
#other packs
execute if score #EnableDan.Reap dan.data matches 1 if score #EnableDan.HealthBar dan.data matches 0 run tellraw @s [{"text":"[⋇]        ","color":"gray"},{"text":"-Damage Indications Pack","color":"red"}]
execute if score #EnableDan.Reap dan.data matches 1 if score #EnableDan.Ambience dan.data matches 0 run tellraw @s [{"text":"[⋇]        ","color":"gray"},{"text":"-Ambience Pack","color":"red"}]
execute if score #EnableDan.Reap dan.data matches 1 if score #Enabledan.stamina dan.data matches 0 run tellraw @s [{"text":"[⋇]        ","color":"gray"},{"text":"-Stamina Pack","color":"red"}]

#debug packs
execute if score #EnableDan.Reap dan.data matches 1 if score #EnableDan.Landmarks dan.data matches 0 run tellraw @s[tag=dan.dataMessagesEnabled] [{"text":"[⋇]        ","color":"gray"},{"text":"-Landmarks Pack","color":"red"}]

#spacer
function dan.main:message/utility/spacer

#deactivate button
function dan.main:message/button/deactivate

#spacer
function dan.main:message/utility/spacer

#toggle packs button
function dan.main:message/button/toggle