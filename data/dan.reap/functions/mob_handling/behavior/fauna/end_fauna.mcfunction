# end fauna

#get current gametime
execute store result score #currentGametime dan.timer run time query gametime

#end fauna
execute as @e[tag=dan.am_scurryingInit] if score @s dan.timer = #currentGametime dan.timer run tag @s add dan.endFauna