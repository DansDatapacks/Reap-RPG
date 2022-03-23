scoreboard players set x_min rc_lib.var 8
scoreboard players set x_max rc_lib.var 56
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 16
scoreboard players set z_min rc_lib.var 8
scoreboard players set z_max rc_lib.var 56
function rc_lib:special/3
scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 20
execute unless block ~ ~ ~ #rc_lib:anvil[facing=north] unless block ~ ~ ~ #rc_lib:anvil[facing=south] run function rc_lib:special/branch2/anvils/x
execute unless block ~ ~ ~ #rc_lib:anvil[facing=east] unless block ~ ~ ~ #rc_lib:anvil[facing=west] run function rc_lib:special/branch2/anvils/z
