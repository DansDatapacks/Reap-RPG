# message on first load

#clear chat
function dan.main:message/utility/clear_chat

#init message
tellraw @s [{"text":"\n"},{"text":"[⋇] Reap RPG Datapack initialized","color":"gray"}]

#spacer
function dan.main:message/utility/spacer

#intial activate options message
function dan.main:message/load_options

#spacer
function dan.main:message/utility/spacer

#Ackowledged button
tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"[Don't Show Again]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players add #Acknowledged dan.data 1"},"hoverEvent":{"action":"show_text","value":[{"text":"Don't show this message again on re-load","color":"gray"}]}}]