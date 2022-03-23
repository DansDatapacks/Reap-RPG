# toggle campfires pack

scoreboard players add #EnableDan.Campfires dan.data 1

execute if score #EnableDan.Campfires dan.data matches 2.. run scoreboard players set #EnableDan.Campfires dan.data 0

#re-open toggle message
function dan.main:packs

reload