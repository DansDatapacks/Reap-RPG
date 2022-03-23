scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 64
execute if block ~ ~ ~ #rc_lib:fence_gates[in_wall=true] run scoreboard players set y_max rc_lib.var 52
execute unless block ~ ~ ~ #rc_lib:fence_gates[facing=north] unless block ~ ~ ~ #rc_lib:fence_gates[facing=south] run function rc_lib:special/branch1/gates/z
execute unless block ~ ~ ~ #rc_lib:fence_gates[facing=east] unless block ~ ~ ~ #rc_lib:fence_gates[facing=west] run function rc_lib:special/branch1/gates/x