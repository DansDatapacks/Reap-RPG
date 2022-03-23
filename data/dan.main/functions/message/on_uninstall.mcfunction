# on uninstall message

#clear chat
function dan.main:message/utility/clear_chat

#uninstall message
tellraw @s [{"text":"\n"},{"text":"[⋇] Reap RPG Datapack uninstalled, and will now be disabled. Re-enable the Datapack with the /datapack command.","color":"gray"}]