execute store result score temp rc_lib.var run data get entity @s Facing 0.5
execute if score temp rc_lib.var matches 0 run function rc_lib:entity/special/item_frame/y
execute if score temp rc_lib.var matches 1 run function rc_lib:entity/special/item_frame/z
execute if score temp rc_lib.var matches 2 run function rc_lib:entity/special/item_frame/x