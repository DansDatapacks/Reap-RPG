scoreboard players set limit rc_lib.var 1
scoreboard players set face rc_lib.return 7
scoreboard players operation x_hit rc_lib.var = x_dec rc_lib.var
scoreboard players operation y_hit rc_lib.var = y_dec rc_lib.var
scoreboard players operation z_hit rc_lib.var = z_dec rc_lib.var
scoreboard players set l_add rc_lib.var 0