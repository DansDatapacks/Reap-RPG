scoreboard players set face_m rc_lib.var 7
scoreboard players operation x_first rc_lib.var = x_dec rc_lib.var
scoreboard players operation y_first rc_lib.var = y_dec rc_lib.var
scoreboard players operation z_first rc_lib.var = z_dec rc_lib.var
execute if score liquid rc_lib.setting matches 1 if score limit rc_lib.var matches 0 if block ~ ~ ~ #rc_lib:special[waterlogged=true] run function rc_lib:rc/end
execute if score limit rc_lib.var matches 0 run function rc_lib:special/branch