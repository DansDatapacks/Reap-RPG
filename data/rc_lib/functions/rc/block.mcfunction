execute unless block ~ ~ ~ #rc_lib:air unless block ~ ~ ~ #rc_lib:special run function rc_lib:rc/end
execute if score liquid rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:liquid run function rc_lib:rc/end
execute if block ~ ~ ~ #rc_lib:special run function rc_lib:rc/special
execute if score nc rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:nc run function rc_lib:rc/nc
execute if score limit rc_lib.var matches 0 run function rc_lib:rc/loop