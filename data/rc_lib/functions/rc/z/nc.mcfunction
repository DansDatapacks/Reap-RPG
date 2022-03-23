scoreboard players add z_add rc_lib.var 1
execute if score liquid rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:liquid run function rc_lib:rc/z/end
execute if score liquid rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:nc[waterlogged=true] run function rc_lib:rc/z/end
execute if score limit rc_lib.var matches 0 run function rc_lib:rc/z/continue