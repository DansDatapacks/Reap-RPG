# shows all the packs that can be toggled on/off

#title
tellraw @p [{"text":"[⋇] ","color":"gray"},{"text":"Toggle Packs On/Off:","underlined":true,"color":"gray"}]

#spacer
function dan.main:message/utility/spacer

#main pack (debug only)
execute unless score #EnableDan.Reap dan.data matches 1 run tellraw @s[tag=!dan.dataMessagesEnabled] [{"text":"[⋇] Main Pack: ","color":"gray"},{"text":"\n"},{"text":"[⋇] ","color":"gray"},{"text":"Reap RPG","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Toggle This to Turn on the Main Mechanics But Not The Other Packs","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/main_rpg"}},{"text":"\n"},{"text":"[⋇] -----------------------","color":"gray"}]

##packs

#spacer
function dan.main:message/utility/spacer

#damage indications
execute if score #EnableDan.HealthBar dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Damage Indications","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Adds Gore, Healthbars, and Damage Indications to Mobs","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/healthbar"}}]
execute unless score #EnableDan.HealthBar dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Damage Indications","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Adds Gore, Healthbars, and Damage Indications to Mobs","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/healthbar"}}]

#spacer
function dan.main:message/utility/spacer

#ambience
execute if score #EnableDan.Ambience dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Ambience","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Adds Bird Sounds, Footsteps, and Tther Ambience","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/ambience"}}]
execute unless score #EnableDan.Ambience dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Ambience","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Adds Bird Sounds, Footsteps, and Tther Ambience","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/ambience"}}]

#spacer
function dan.main:message/utility/spacer

#treefeller
execute if score #EnableDan.Treefeller dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Treefeller","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Knocks down whole trees with hatchets","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/treefeller"}}]
execute unless score #EnableDan.Treefeller dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Treefeller","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Knocks down whole trees with hatchets","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/treefeller"}}]

#spacer
function dan.main:message/utility/spacer

#stamina
execute if score #Enabledan.stamina dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Stamina","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Adds a Stamina Bar That Puts a Cap On Sprinting, Jumping, Diving, While Adding Climbing and Proning","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/stamina"}}]
execute unless score #Enabledan.stamina dan.data matches 1 run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Stamina","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Adds a Stamina Bar That Puts a Cap On Sprinting, Jumping, Diving, While Adding Climbing and Proning","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function dan.main:toggle/stamina"}}]

#debug messages (debug only)
execute as @s[tag=dan.dataMessagesEnabled] run function dan.main:message/toggle_debug_packs

#spacer
function dan.main:message/utility/spacer

#packs command
function dan.main:message/command/packs

#exit button
function dan.main:message/button/exit