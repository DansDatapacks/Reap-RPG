scoreboard players set y_min rc_lib.var 12
scoreboard players set y_max rc_lib.var 36
function rc_lib:special/1/y
execute if block ~ ~ ~ #rc_lib:beds[facing=east] run scoreboard players set temp rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:beds[facing=north] run scoreboard players set temp rc_lib.var 1
execute if block ~ ~ ~ #rc_lib:beds[facing=west] run scoreboard players set temp rc_lib.var 2
execute if block ~ ~ ~ #rc_lib:beds[facing=south] run scoreboard players set temp rc_lib.var 3
execute if block ~ ~ ~ #rc_lib:beds[part=head] run scoreboard players add temp rc_lib.var 2
scoreboard players operation temp rc_lib.var %= 4 rc_lib.con
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 12
execute if score temp rc_lib.var matches 0..1 run function rc_lib:special/branch1/beds/sw
execute if score temp rc_lib.var matches 1..2 run function rc_lib:special/branch1/beds/se
execute if score temp rc_lib.var matches 2..3 run function rc_lib:special/branch1/beds/ne
execute unless score temp rc_lib.var matches 1..2 run function rc_lib:special/branch1/beds/nw