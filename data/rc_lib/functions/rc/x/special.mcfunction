function rc_lib:rc/x/calc
execute if score liquid rc_lib.setting matches 1 if block ~ ~ ~ #rc_lib:special[waterlogged=true] run function rc_lib:rc/x/end
function rc_lib:special/branch
scoreboard players operation temp rc_lib.var = x_l rc_lib.var
scoreboard players operation temp rc_lib.var += l_add rc_lib.var
execute if score limit rc_lib.var matches 1.. if score temp rc_lib.var > l_max rc_lib.var run scoreboard players set limit rc_lib.var 0