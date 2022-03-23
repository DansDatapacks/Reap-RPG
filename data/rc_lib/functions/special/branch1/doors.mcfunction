execute if block ~ ~ ~ #rc_lib:doors[facing=east] run scoreboard players set temp rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:doors[facing=north] run scoreboard players set temp rc_lib.var 1
execute if block ~ ~ ~ #rc_lib:doors[facing=west] run scoreboard players set temp rc_lib.var 2
execute if block ~ ~ ~ #rc_lib:doors[facing=south] run scoreboard players set temp rc_lib.var 3
execute if block ~ ~ ~ #rc_lib:doors[open=true,hinge=right] run scoreboard players add temp rc_lib.var 1
execute if block ~ ~ ~ #rc_lib:doors[open=true,hinge=left] run scoreboard players remove temp rc_lib.var 1
scoreboard players operation temp rc_lib.var %= 4 rc_lib.con
execute if score temp rc_lib.var matches 0 run function rc_lib:special/branch1/doors/east
execute if score temp rc_lib.var matches 1 run function rc_lib:special/branch1/doors/north
execute if score temp rc_lib.var matches 2 run function rc_lib:special/branch1/doors/west
execute if score temp rc_lib.var matches 3 run function rc_lib:special/branch1/doors/south