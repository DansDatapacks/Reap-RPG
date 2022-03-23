summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rc_lib.temp"]}
execute as @e[type=minecraft:area_effect_cloud,tag=rc_lib.temp,limit=1] run function rc_lib:get_coors/1
scoreboard players operation x_vec rc_lib.var -= x_start rc_lib.var
scoreboard players operation y_vec rc_lib.var -= y_start rc_lib.var
scoreboard players operation z_vec rc_lib.var -= z_start rc_lib.var
scoreboard players operation x_dec rc_lib.var = x_start rc_lib.var
scoreboard players operation y_dec rc_lib.var = y_start rc_lib.var
scoreboard players operation z_dec rc_lib.var = z_start rc_lib.var
scoreboard players operation x_dec rc_lib.var %= scale rc_lib.var
scoreboard players operation y_dec rc_lib.var %= scale rc_lib.var
scoreboard players operation z_dec rc_lib.var %= scale rc_lib.var
scoreboard players operation l_max rc_lib.var = d_max rc_lib.setting
scoreboard players operation l_max rc_lib.var *= scale rc_lib.var
scoreboard players operation l_max rc_lib.var /= 100 rc_lib.con
scoreboard players operation x_l rc_lib.var = x_dec rc_lib.var
scoreboard players operation y_l rc_lib.var = y_dec rc_lib.var
scoreboard players operation z_l rc_lib.var = z_dec rc_lib.var
execute if score x_vec rc_lib.var matches 1.. run scoreboard players operation x_l rc_lib.var -= scale rc_lib.var
execute if score y_vec rc_lib.var matches 1.. run scoreboard players operation y_l rc_lib.var -= scale rc_lib.var
execute if score z_vec rc_lib.var matches 1.. run scoreboard players operation z_l rc_lib.var -= scale rc_lib.var
scoreboard players operation x_l rc_lib.var *= -scale rc_lib.var
scoreboard players operation y_l rc_lib.var *= -scale rc_lib.var
scoreboard players operation z_l rc_lib.var *= -scale rc_lib.var
execute unless score x_vec rc_lib.var matches 0 run scoreboard players operation x_l rc_lib.var /= x_vec rc_lib.var
execute unless score y_vec rc_lib.var matches 0 run scoreboard players operation y_l rc_lib.var /= y_vec rc_lib.var
execute unless score z_vec rc_lib.var matches 0 run scoreboard players operation z_l rc_lib.var /= z_vec rc_lib.var
scoreboard players operation x_l+ rc_lib.var = scale rc_lib.var
scoreboard players operation x_l+ rc_lib.var *= scale rc_lib.var
scoreboard players operation y_l+ rc_lib.var = x_l+ rc_lib.var
scoreboard players operation z_l+ rc_lib.var = x_l+ rc_lib.var
execute unless score x_vec rc_lib.var matches 0 run scoreboard players operation x_l+ rc_lib.var /= x_vec rc_lib.var
execute unless score y_vec rc_lib.var matches 0 run scoreboard players operation y_l+ rc_lib.var /= y_vec rc_lib.var
execute unless score z_vec rc_lib.var matches 0 run scoreboard players operation z_l+ rc_lib.var /= z_vec rc_lib.var
execute if score x_l+ rc_lib.var matches ..-1 run scoreboard players operation x_l+ rc_lib.var *= -1 rc_lib.con
execute if score y_l+ rc_lib.var matches ..-1 run scoreboard players operation y_l+ rc_lib.var *= -1 rc_lib.con
execute if score z_l+ rc_lib.var matches ..-1 run scoreboard players operation z_l+ rc_lib.var *= -1 rc_lib.con
execute if score x_vec rc_lib.var matches 0 run scoreboard players set x_l rc_lib.var 2147483647
execute if score y_vec rc_lib.var matches 0 run scoreboard players set y_l rc_lib.var 2147483647
execute if score z_vec rc_lib.var matches 0 run scoreboard players set z_l rc_lib.var 2147483647
scoreboard players set x_add rc_lib.var 0
scoreboard players set y_add rc_lib.var 0
scoreboard players set z_add rc_lib.var 0
scoreboard players set limit rc_lib.var 0
execute unless score cast_type rc_lib.setting matches 2 unless score first rc_lib.setting matches 0 run function rc_lib:rc/block
execute unless score cast_type rc_lib.setting matches 2 if score first rc_lib.setting matches 0 run function rc_lib:rc/loop
execute if score limit rc_lib.var matches 1 run function rc_lib:l
execute unless score cast_type rc_lib.setting matches 1 run function rc_lib:entity/all
scoreboard players operation distance rc_lib.return = l_max rc_lib.var
scoreboard players operation l_max rc_lib.var %= scale rc_lib.var
scoreboard players operation l_max rc_lib.var *= d_return_scale rc_lib.setting
scoreboard players operation l_max rc_lib.var /= scale rc_lib.var
scoreboard players operation distance rc_lib.return /= scale rc_lib.var
scoreboard players operation distance rc_lib.return *= d_return_scale rc_lib.setting
scoreboard players operation distance rc_lib.return += l_max rc_lib.var
execute if score limit rc_lib.var matches 1 run function rc_lib:cloud/hit
execute if score limit rc_lib.var matches 2 run function rc_lib:cloud/entity
execute if score limit rc_lib.var matches 3 run function rc_lib:cloud/max