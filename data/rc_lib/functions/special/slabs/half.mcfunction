execute if block ~ ~ ~ #rc_lib:half_slabs[type=bottom] run scoreboard players set y_max rc_lib.var 32
execute if block ~ ~ ~ #rc_lib:half_slabs[type=top] run scoreboard players set y_min rc_lib.var 32
execute unless block ~ ~ ~ #rc_lib:half_slabs[type=bottom] run scoreboard players set y_max rc_lib.var 64