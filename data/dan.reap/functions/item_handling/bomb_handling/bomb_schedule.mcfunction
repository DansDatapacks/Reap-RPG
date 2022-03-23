# explode smoke bomb 

#get current gametime
execute store result score #currentGametime dan.timer run time query gametime

#bomb
execute as @e[tag=dan.tickingBomb] if score @s dan.timer = #currentGametime dan.timer run function dan.reap:item_handling/bomb_handling/explode_bomb

#smoke bomb
execute as @e[tag=dan.tickingSmokeBomb] if score @s dan.timer = #currentGametime dan.timer run function dan.reap:item_handling/bomb_handling/explode_smoke_bomb

#end smoke bomb
execute as @e[tag=dan.explodedSmokeBomb] if score @s dan.timer = #currentGametime dan.timer run kill @s