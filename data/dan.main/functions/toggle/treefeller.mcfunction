# toggles healthbar pack

scoreboard players add #EnableDan.Treefeller dan.data 1

execute if score #EnableDan.Treefeller dan.data matches 2.. run scoreboard players set #EnableDan.Treefeller dan.data 0

#re-open toggle message
function dan.main:packs

reload