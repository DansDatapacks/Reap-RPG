scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:half_slabs run function rc_lib:special/slabs/half
execute if block ~ ~ ~ #rc_lib:carpets run scoreboard players set y_max rc_lib.var 4
execute if block ~ ~ ~ #rc_lib:rails run function rc_lib:special/slabs/rail
execute if block ~ ~ ~ #rc_lib:farm run scoreboard players set y_max rc_lib.var 60
execute if block ~ ~ ~ #rc_lib:circuit run scoreboard players set y_max rc_lib.var 8
execute if block ~ ~ ~ #rc_lib:magic run scoreboard players set y_max rc_lib.var 48
execute if block ~ ~ ~ minecraft:snow run function rc_lib:special/slabs/snow
execute if block ~ ~ ~ minecraft:stonecutter run scoreboard players set y_max rc_lib.var 36
execute if block ~ ~ ~ minecraft:campfire run scoreboard players set y_max rc_lib.var 28
execute if block ~ ~ ~ minecraft:daylight_detector run scoreboard players set y_max rc_lib.var 24
execute if block ~ ~ ~ minecraft:tripwire run function rc_lib:special/slabs/tripwire
function rc_lib:special/1/y