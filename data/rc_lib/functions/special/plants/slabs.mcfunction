scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:whbeet run function rc_lib:special/plants/slabs/whbeet
execute if block ~ ~ ~ #rc_lib:carotatoes run function rc_lib:special/plants/slabs/carotato
execute if block ~ ~ ~ minecraft:nether_wart run function rc_lib:special/plants/slabs/wart
execute if block ~ ~ ~ minecraft:kelp run scoreboard players set y_max rc_lib.var 36
function rc_lib:special/1/y