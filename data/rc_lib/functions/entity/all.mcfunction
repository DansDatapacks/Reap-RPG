tag @s add rc_lib.processed
execute if score cast_type rc_lib.setting matches 2 run function rc_lib:entity/cloud_max
scoreboard players operation d_max rc_lib.var = l_max rc_lib.var
scoreboard players operation d_max rc_lib.var /= scale rc_lib.var
scoreboard players operation d_max rc_lib.var *= 100 rc_lib.con
scoreboard players add d_max rc_lib.var 100
execute if score d_max rc_lib.var matches ..600 positioned ^ ^ ^3 positioned ~ ~-8 ~ run function rc_lib:entity/distance/one
execute if score d_max rc_lib.var matches 601..5100 positioned ^ ^ ^5 positioned ~ ~-8 ~ run function rc_lib:entity/distance/short
execute if score d_max rc_lib.var matches 5101.. positioned ^ ^ ^25 positioned ~ ~-8 ~ run function rc_lib:entity/distance/long
execute if score entity_max rc_lib.setting matches ..0 as @e[tag=rc_lib.tempity] run function rc_lib:entity/tempity
execute unless score entity_max rc_lib.setting matches ..0 if entity @e[tag=rc_lib.tempity] run function rc_lib:entity/count
tag @e[tag=rc_lib.tempity] remove rc_lib.tempity
execute if score cast_type rc_lib.setting matches 2 if entity @e[tag=rc_lib.entity] run scoreboard players operation l_max rc_lib.var < @e[tag=rc_lib.entity] rc_lib.setting
tag @e remove rc_lib.processed