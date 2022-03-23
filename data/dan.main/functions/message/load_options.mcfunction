# load options message

#intro message
tellraw @s [{"text":"[⋇] ","color":"gray"},{"text":"Select An Option Below:","color":"gray","underlined":true}]

#spacer
function dan.main:message/utility/spacer

#activate/deactivate button
execute unless score #EnableDan.Reap dan.data matches 1 run function dan.main:message/button/activate
execute if score #EnableDan.Reap dan.data matches 1 run function dan.main:message/button/deactivate

#spacer
function dan.main:message/utility/spacer

#toggle button
function dan.main:message/button/toggle

#spacer
function dan.main:message/utility/spacer

#help message
function dan.main:message/command/help