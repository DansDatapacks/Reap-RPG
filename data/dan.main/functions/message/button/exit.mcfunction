# exit button message

tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"\n"},{"text":"[⋇] ","color":"gray"},{"text":"[Exit]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:message/utility/clear_chat"}}]