scoreboard players set limit rc_lib.var 0
execute if score liquid rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:liquid run function rc_lib:rc/end
execute if score liquid rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:nc[waterlogged=true] run function rc_lib:rc/end