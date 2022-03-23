execute if block ~ ~ ~ #rc_lib:trapdoors[half=bottom] run scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:trapdoors[half=bottom] run scoreboard players set y_max rc_lib.var 12
execute if block ~ ~ ~ #rc_lib:trapdoors[half=top] run scoreboard players set y_min rc_lib.var 52
execute if block ~ ~ ~ #rc_lib:trapdoors[half=top] run scoreboard players set y_max rc_lib.var 64
function rc_lib:special/1/y