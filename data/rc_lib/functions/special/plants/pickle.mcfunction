scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 24
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=1] run function rc_lib:special/plants/pickle/1
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=2] run function rc_lib:special/plants/pickle/2
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=3] run function rc_lib:special/plants/pickle/3
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=4] run function rc_lib:special/plants/pickle/4
function rc_lib:special/3