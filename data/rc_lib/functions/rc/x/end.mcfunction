execute if score x_vec rc_lib.var matches 1.. run scoreboard players set face rc_lib.return 5
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players set face rc_lib.return 6
scoreboard players set limit rc_lib.var 1
function rc_lib:rc/x/calc
scoreboard players operation x_hit rc_lib.var = x_first rc_lib.var
scoreboard players operation y_hit rc_lib.var = y_first rc_lib.var
scoreboard players operation z_hit rc_lib.var = z_first rc_lib.var
scoreboard players set l_add rc_lib.var 0