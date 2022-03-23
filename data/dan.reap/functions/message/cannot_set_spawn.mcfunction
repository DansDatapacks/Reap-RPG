# message preventing teleporting in blocks

#message
tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Cannot set spawn. Monsters are nearby.","color":"red"}]

#sound
playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 1 0.5