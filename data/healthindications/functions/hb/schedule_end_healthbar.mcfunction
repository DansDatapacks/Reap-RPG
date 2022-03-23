# check for healthbars to remove

#get current gametime
execute store result score #currentGametime dan.temp run time query gametime

#end healthbar
execute as @e[type=!#healthindications:uninteractable,tag=hbi.show_healthbar] if score @s hbi.timer = #currentGametime dan.temp run function healthindications:hb/end_healthbar