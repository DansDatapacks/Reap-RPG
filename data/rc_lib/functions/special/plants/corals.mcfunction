scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 48
execute if block ~ ~ ~ #rc_lib:coral_walls[facing=east] run function rc_lib:special/plants/corals/east
execute if block ~ ~ ~ #rc_lib:coral_walls[facing=north] run function rc_lib:special/plants/corals/north
execute if block ~ ~ ~ #rc_lib:coral_walls[facing=west] run function rc_lib:special/plants/corals/west
execute if block ~ ~ ~ #rc_lib:coral_walls[facing=south] run function rc_lib:special/plants/corals/south