execute if block ~ ~ ~ #rc_lib:plants_wide run function rc_lib:special/plants/wide
execute if block ~ ~ ~ #rc_lib:plant_slabs run function rc_lib:special/plants/slabs
execute if block ~ ~ ~ #rc_lib:flowers run function rc_lib:special/plants/flowers
execute if block ~ ~ ~ #rc_lib:coral_walls run function rc_lib:special/plants/corals
execute if block ~ ~ ~ #rc_lib:stems run function rc_lib:special/plants/stem
execute if block ~ ~ ~ #rc_lib:attached_stems run function rc_lib:special/plants/attached_stem
execute if block ~ ~ ~ #rc_lib:talls run function rc_lib:special/plants/cactus
execute if block ~ ~ ~ minecraft:sea_pickle run function rc_lib:special/plants/pickle
execute if block ~ ~ ~ minecraft:vine run function rc_lib:special/plants/vine
execute if block ~ ~ ~ minecraft:lily_pad run function rc_lib:special/plants/lilypad
execute if block ~ ~ ~ minecraft:cocoa run function rc_lib:special/plants/cocoa
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=0] run function rc_lib:special/plants/bush
execute if block ~ ~ ~ minecraft:sweet_berry_bush unless block ~ ~ ~ minecraft:sweet_berry_bush[age=0] run function rc_lib:special/plants/cactus