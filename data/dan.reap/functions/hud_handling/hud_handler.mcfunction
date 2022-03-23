# runs as players that get HUD changes

##begin HUD process
#air block detection
summon minecraft:area_effect_cloud ~ 255 ~ {Tags:["dan.air_detector","global.ignore"]}
execute as @e[tag=dan.air_detector] at @s run function dan.main:utility/find_air

#set sign and actionbar position
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ minecraft:acacia_sign

#stamina HUD
execute unless score @s dan.staminaP matches 100 at @s run function dan.reap:hud_handling/stamina/stamina_display

#mana HUD
execute unless score @s dan.staminaP matches 100 at @e[tag=dan.air_detector] run data merge block ~ ~-1 ~ {Text2:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"translate":"space.-80"}]'}
function dan.reap:hud_handling/mana/mana_display
execute at @e[tag=dan.air_detector] run data merge block ~ ~-1 ~ {Text2:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"translate":"space.80"}]'}

#display HUD
title @s times 0 100 0
execute at @e[tag=dan.air_detector] positioned ~ ~-1 ~ run title @s actionbar [{"translate":"space.100"},{"nbt":"Text1","block":"~ ~ ~","interpret":"true"}]

#end air detection/kill sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ air
kill @e[tag=dan.air_detector]