# toggles healthbar pack

#toggle
scoreboard players add #hbi.disable_extrabossbars dan.data 1

#on
execute if score #hbi.disable_extrabossbars dan.data matches 2.. run scoreboard players set #hbi.disable_extrabossbars dan.data 0
#sound
execute if score #hbi.disable_extrabossbars dan.data matches 0 run playsound block.note_block.bell master @s ~ ~ ~ 0.8 2

#off
execute if score #hbi.disable_extrabossbars dan.data matches 1 run function healthindications:hb/bossbar/enable_bossbar
#sound
execute if score #hbi.disable_extrabossbars dan.data matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 0.8 2

function healthindications:hb/bossbar/remove_tags

#reopen toggle list
function minecraft:healthindications_options