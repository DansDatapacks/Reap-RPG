scoreboard players set y_min rc_lib.var 12
scoreboard players set y_max rc_lib.var 64
function rc_lib:special/1/y
scoreboard players set temp rc_lib.var 0
execute if score limit rc_lib.var matches 1 unless score face rc_lib.return matches 1 run scoreboard players set temp rc_lib.var 1
execute if score temp rc_lib.var matches 0 run function rc_lib:special/branch3/cauldron_complex