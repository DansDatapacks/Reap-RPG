# tome used

#detect which hand (offhand preference)
execute if predicate dan.reap:tome/holding_tome_left run tag @s add dan.useTomeLeft
execute if entity @s[tag=!dan.useTomeLeft] if predicate dan.reap:tome/holding_tome_right run tag @s add dan.useTomeRight

#run tome validity check
function dan.reap:item_handling/tome_handling/tome_validity_check

#remove tags
tag @s remove dan.useTomeRight
tag @s remove dan.useTomeLeft