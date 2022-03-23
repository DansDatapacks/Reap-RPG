# debug message for reap on reload

#get version
function dan.main:message/utility/get_datapack_version

#message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Reap RPG ","color":"gray"},{"text":"v","color":"aqua"},{"score":{"name":"#ReapVersion","objective":"dan.data"},"color":"aqua"}]