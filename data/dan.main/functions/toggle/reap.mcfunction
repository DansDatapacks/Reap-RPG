# toggle reap pack

#toggle
scoreboard players add #EnableDan.Reap dan.data 1
execute if score #EnableDan.Reap dan.data matches 2.. run scoreboard players set #EnableDan.Reap dan.data 0

#re-open toggle message
function dan.main:packs

#reload to take effect
reload

#activated/deactivated message
function dan.main:message/reap_init