tag @s add rc_lib.tempity
execute if score cast_type rc_lib.setting matches 2 run function rc_lib:entity/cloud_pos
scoreboard players operation @s rc_lib.setting = ll rc_lib.var
execute unless score hit_type rc_lib.return matches 2.. run scoreboard players add hit_type rc_lib.return 2