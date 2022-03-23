scoreboard players set x_min rc_lib.var 12
scoreboard players set x_max rc_lib.var 52
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 4
scoreboard players set z_min rc_lib.var 12
scoreboard players set z_max rc_lib.var 52
execute unless block ~ ~ ~ minecraft:redstone_wire[east=none] run scoreboard players set x_max rc_lib.var 64
execute unless block ~ ~ ~ minecraft:redstone_wire[east=none] if block ~ ~ ~ minecraft:redstone_wire[north=none,south=none] run scoreboard players set x_min rc_lib.var 0
execute unless block ~ ~ ~ minecraft:redstone_wire[north=none] run scoreboard players set z_min rc_lib.var 0
execute unless block ~ ~ ~ minecraft:redstone_wire[north=none] if block ~ ~ ~ minecraft:redstone_wire[east=none,west=none] run scoreboard players set z_max rc_lib.var 64
execute unless block ~ ~ ~ minecraft:redstone_wire[west=none] run scoreboard players set x_min rc_lib.var 0
execute unless block ~ ~ ~ minecraft:redstone_wire[west=none] if block ~ ~ ~ minecraft:redstone_wire[north=none,south=none] run scoreboard players set x_max rc_lib.var 64
execute unless block ~ ~ ~ minecraft:redstone_wire[south=none] run scoreboard players set z_max rc_lib.var 64
execute unless block ~ ~ ~ minecraft:redstone_wire[south=none] if block ~ ~ ~ minecraft:redstone_wire[east=none,west=none] run scoreboard players set z_min rc_lib.var 0
function rc_lib:special/3