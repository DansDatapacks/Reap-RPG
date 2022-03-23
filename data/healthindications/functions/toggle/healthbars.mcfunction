# toggles healthbar pack

#toggle
scoreboard players add #hbi.disable_healthbars dan.data 1

#on
execute if score #hbi.disable_healthbars dan.data matches 2.. run scoreboard players set #hbi.disable_healthbars dan.data 0
#sound
execute if score #hbi.disable_healthbars dan.data matches 0 run playsound block.note_block.bell master @s ~ ~ ~ 0.8 2

#off
#sound
execute if score #hbi.disable_healthbars dan.data matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 0.8 2

#handle unsynced health bars
kill @e[type=area_effect_cloud,tag=hbi.Marker,tag=!hbi.syncedMarker]
tag @e[type=area_effect_cloud,tag=hbi.Marker,tag=hbi.syncedMarker] remove hbi.syncedMarker

#reopen toggle list
function minecraft:healthindications_options