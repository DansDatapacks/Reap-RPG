tag @s add rc_lib.tempity
execute if score cast_type rc_lib.setting matches 2 run scoreboard players set limit rc_lib.var 2
execute if score cast_type rc_lib.setting matches 2 run scoreboard players set x_hit rc_lib.var 0
execute if score cast_type rc_lib.setting matches 2 run scoreboard players set y_hit rc_lib.var 0
execute if score cast_type rc_lib.setting matches 2 run scoreboard players set z_hit rc_lib.var 0
scoreboard players set @s rc_lib.setting 0
execute unless score hit_type rc_lib.return matches 2.. run scoreboard players add hit_type rc_lib.return 2