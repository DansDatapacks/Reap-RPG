# toggle ambience pack

scoreboard players add #EnableDan.Ambience dan.data 1

execute if score #EnableDan.Ambience dan.data matches 2.. run scoreboard players set #EnableDan.Ambience dan.data 0

#re-open toggle message
function dan.main:packs

reload