# toggles healthbar pack

scoreboard players add #EnableDan.HealthBar dan.data 1

execute if score #EnableDan.HealthBar dan.data matches 2.. run scoreboard players set #EnableDan.HealthBar dan.data 0

#re-open toggle message
function dan.main:packs
reload