#  stamina display - displays the stamina bar in the action bar

#set HUD on sign
execute unless score @s dan.breathlevel matches ..299 run function dan.reap:hud_handling/stamina/set_stamina
execute if score @s dan.breathlevel matches ..299 run function dan.reap:hud_handling/stamina/set_stamina_offset