# mana drained (uses dan.temp)

#message
tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"-","color":"red"},{"score":{"name":"#RequiredMana","objective":"dan.temp"},"color":"red"},{"text":" \uE011","color":"light_purple"}]

#reset dan.temp
scoreboard players reset @s dan.temp