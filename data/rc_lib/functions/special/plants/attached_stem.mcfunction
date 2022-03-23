scoreboard players set x_min rc_lib.var 24
scoreboard players set x_max rc_lib.var 40
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 40
scoreboard players set z_min rc_lib.var 24
scoreboard players set z_max rc_lib.var 40
execute if block ~ ~ ~ #rc_lib:attached_stems[facing=east] run scoreboard players set x_max rc_lib.var 64
execute if block ~ ~ ~ #rc_lib:attached_stems[facing=north] run scoreboard players set z_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:attached_stems[facing=west] run scoreboard players set x_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:attached_stems[facing=south] run scoreboard players set z_max rc_lib.var 64
function rc_lib:special/3