# detect item entity nbt

#get current gametime
execute store result score #currentGametime dan.timer run time query gametime

#end spell tag
execute as @e[type=item,tag=dan.itemCheckCount] if score @s dan.timer = #currentGametime dan.timer run function dan.main:utility/item_nbt_count