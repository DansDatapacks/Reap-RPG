execute if block ~ ~ ~ #rc_lib:pressure_plates run function rc_lib:special/redstone/pressure_plate
execute if block ~ ~ ~ #rc_lib:buttons[face=wall] run function rc_lib:special/redstone/wall_buttons
execute if block ~ ~ ~ #rc_lib:buttons unless block ~ ~ ~ #rc_lib:buttons[face=wall] run function rc_lib:special/redstone/floor_buttons
execute if block ~ ~ ~ #rc_lib:pistons run function rc_lib:special/redstone/piston
execute if block ~ ~ ~ minecraft:redstone_wire run function rc_lib:special/redstone/wire
execute if block ~ ~ ~ minecraft:piston_head run function rc_lib:special/redstone/piston_head
execute if block ~ ~ ~ minecraft:lever[face=wall] run function rc_lib:special/redstone/wall_levers
execute if block ~ ~ ~ minecraft:lever unless block ~ ~ ~ minecraft:lever[face=wall] run function rc_lib:special/redstone/floor_levers
execute if block ~ ~ ~ minecraft:tripwire_hook run function rc_lib:special/redstone/hooks
execute if block ~ ~ ~ minecraft:hopper run function rc_lib:special/redstone/hopper