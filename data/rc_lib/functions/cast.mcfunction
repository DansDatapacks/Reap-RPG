kill @e[tag=rc_lib.locate]
tag @e remove rc_lib.entity
execute unless score d_max rc_lib.setting matches 1.. run scoreboard players set d_max rc_lib.setting 500
execute if score d_max rc_lib.setting matches 50000.. run scoreboard players set d_max rc_lib.setting 50000
execute if score d_return_scale rc_lib.setting matches 10000.. run scoreboard players set d_return_scale rc_lib.setting 10000
execute if score d_return_scale rc_lib.setting matches ..-10000 run scoreboard players set d_return_scale rc_lib.setting -10000
execute unless score d_return_scale rc_lib.setting matches -10000..10000 run scoreboard players set d_return_scale rc_lib.setting 100
scoreboard players set face rc_lib.return 0
scoreboard players set hit_type rc_lib.return 0
function rc_lib:begin
scoreboard players reset * rc_lib.setting