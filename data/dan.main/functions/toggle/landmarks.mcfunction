# toggle landmarks pack

scoreboard players add #EnableDan.Landmarks dan.data 1

execute if score #EnableDan.Landmarks dan.data matches 2.. run scoreboard players set #EnableDan.Landmarks dan.data 0

#re-open toggle message
function dan.main:packs

reload