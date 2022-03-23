# toggle debug messages

#reset debug score
scoreboard players reset @s dan.temp

#check for tag
scoreboard players set @s[tag=!dan.dataMessagesEnabled] dan.temp 1

#change debug tag
execute if score @s dan.temp matches 1 run tag @s add dan.dataMessagesEnabled
execute unless score @s dan.temp matches 1 run tag @s remove dan.dataMessagesEnabled

#message
tellraw @s[tag=!dan.dataMessagesEnabled] {"text":"[Debug Mode Toggled Off]","color":"gray"}
tellraw @s[tag=dan.dataMessagesEnabled] {"text":"[Debug Mode Toggled On]","color":"gray"}

#reset debug score
scoreboard players reset @s dan.temp