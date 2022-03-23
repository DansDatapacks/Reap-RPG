# toggle campfires pack

scoreboard players add #EnableDan.Waystones dan.data 1

execute if score #EnableDan.Waystones dan.data matches 2.. run scoreboard players set #EnableDan.Waystones dan.data 0

#re-open toggle message
function dan.main:packs

reload