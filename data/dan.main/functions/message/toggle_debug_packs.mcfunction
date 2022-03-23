# shows all the packs that can be toggled on/off

#spacer
function dan.main:message/utility/spacer

#title
tellraw @p [{"text":"[⋇] ","color":"gray"},{"text":"Debug Packs:","color":"gray"}]

##debugging packs

#spacer
function dan.main:message/utility/spacer

#main reap
execute if score #EnableDan.Reap dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Reap","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Main RPG Mechanics With Loot, Mob, Spawner, and Build Handling","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/reap"}}]
execute if score #EnableDan.Reap dan.data matches 0 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Reap","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Main RPG Mechanics With Loot, Mob, Spawner, and Build Handling","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/reap"}}]

#spacer
function dan.main:message/utility/spacer

#stamina
execute if score #EnableDan.Landmarks dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Landmarks","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Allows Creation of Villages and Generation of Structures","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/landmarks"}}]
execute if score #EnableDan.Landmarks dan.data matches 0 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Landmarks","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Allows Creation of Villages and Generation of Structures","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/landmarks"}}]