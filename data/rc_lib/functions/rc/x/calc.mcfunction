execute if score x_vec rc_lib.var matches 1.. run scoreboard players set face_m rc_lib.var 5
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players set face_m rc_lib.var 6
execute if score x_vec rc_lib.var matches 1.. run scoreboard players set x_first rc_lib.var 0
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation x_first rc_lib.var = scale rc_lib.var
scoreboard players operation y_first rc_lib.var = x_l rc_lib.var
scoreboard players operation z_first rc_lib.var = x_l rc_lib.var
scoreboard players operation y_first rc_lib.var %= y_l+ rc_lib.var
scoreboard players operation z_first rc_lib.var %= z_l+ rc_lib.var
scoreboard players operation y_first rc_lib.var *= y_vec rc_lib.var
scoreboard players operation z_first rc_lib.var *= z_vec rc_lib.var
scoreboard players operation y_first rc_lib.var /= scale rc_lib.var
scoreboard players operation z_first rc_lib.var /= scale rc_lib.var
scoreboard players operation y_first rc_lib.var += y_dec rc_lib.var
scoreboard players operation z_first rc_lib.var += z_dec rc_lib.var
scoreboard players operation y_first rc_lib.var %= scale rc_lib.var
scoreboard players operation z_first rc_lib.var %= scale rc_lib.var