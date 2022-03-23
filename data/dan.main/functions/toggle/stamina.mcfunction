# toggle stamina pack

scoreboard players add #Enabledan.stamina dan.data 1

execute if score #Enabledan.stamina dan.data matches 2.. run scoreboard players set #Enabledan.stamina dan.data 0

#re-open toggle message
function dan.main:packs

reload