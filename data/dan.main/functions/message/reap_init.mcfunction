# reap init message check

#get datapack version
function dan.main:message/utility/get_datapack_version

#checks if activated or deactivated
execute if score #EnableDan.Reap dan.data matches 1 run tellraw @s [{"text":"[⋇] Reap RPG Datapack ","color":"gray"},{"text":"v0.","color":"aqua"},{"score":{"name":"#ReapVersion","objective":"dan.data"},"color":"aqua"},{"text":" activated","color":"green"}]
execute if score #EnableDan.Reap dan.data matches 0 run tellraw @s [{"text":"[⋇] Reap RPG Datapack ","color":"gray"},{"text":"v0.","color":"aqua"},{"score":{"name":"#ReapVersion","objective":"dan.data"},"color":"aqua"},{"text":" deactivated","color":"red"}]