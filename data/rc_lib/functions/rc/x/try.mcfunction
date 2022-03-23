execute if score x_l rc_lib.var > l_max rc_lib.var run scoreboard players set limit rc_lib.var 3
execute if score nc rc_lib.setting matches 1 if score limit rc_lib.var matches 0 if block ~ ~ ~ #rc_lib:nc run function rc_lib:rc/x/nc
execute if score limit rc_lib.var matches 0 run function rc_lib:rc/x/block