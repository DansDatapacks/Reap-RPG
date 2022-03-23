# toggles op

#reset debug score
scoreboard players reset @s dan.temp

#check for tag
scoreboard players set @s[tag=!dan.OP] dan.temp 1

#change debug tag
execute if score @s dan.temp matches 1 run tag @s add dan.OP
execute unless score @s dan.temp matches 1 run tag @s remove dan.OP

#message
tellraw @s[tag=!dan.OP] {"text":"[OP Toggled Off]","color":"gray"}
tellraw @s[tag=dan.OP] {"text":"[OP Toggled On]","color":"gray"}

#reset debug score
scoreboard players reset @s dan.temp