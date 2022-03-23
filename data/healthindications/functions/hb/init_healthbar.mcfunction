#init healthbar

#tag
tag @s add hbi.show_healthbar

#schedule end of healthbar
execute store result score @s hbi.timer run time query gametime
scoreboard players operation @s hbi.timer += #300 dan.data
schedule function healthindications:hb/schedule_end_healthbar 300t append