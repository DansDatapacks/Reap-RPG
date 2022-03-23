# not enough mana message (required min mana as dan.temp)

#default (no min mana)
execute unless score #RequiredMana dan.temp matches 1.. run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Not enough Mana.","color":"red"}]

#message
execute if score #RequiredMana dan.temp matches 1.. run tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Not enough Mana. (","color":"red"},{"score":{"name":"#RequiredMana","objective":"dan.temp"},"color":"red"},{"text":" \uE011","color":"white"},{"text":")","color":"red"}]

#sound
execute at @s run playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 1 0.5

#reset score
scoreboard players reset @s dan.temp