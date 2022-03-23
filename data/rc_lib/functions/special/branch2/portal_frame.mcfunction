scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 52
function rc_lib:special/1/y
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run function rc_lib:special/connect/walls/up