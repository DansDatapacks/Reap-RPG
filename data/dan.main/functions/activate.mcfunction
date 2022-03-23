# activates datapack by toggling packs and reloading

#tag activator as an OP
tag @s add dan.OP

#toggle all packs
function dan.main:toggle/all_on

#reload to take affect
reload

#activate message
function dan.main:message/activated

#Acknowledged
scoreboard players add #Acknowledged dan.data 1