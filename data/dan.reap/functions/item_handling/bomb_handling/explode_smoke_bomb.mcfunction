# explode smoke bomb 

#prevent item from being picked up
data merge entity @s {PickupDelay:10000s}

#tag
tag @s remove dan.tickingSmokeBomb
tag @s add dan.explodedSmokeBomb

#init removal schedule (150 ticks)
execute store result score @s dan.timer run time query gametime
scoreboard players operation @s dan.timer += #150 dan.data
schedule function dan.reap:item_handling/bomb_handling/bomb_schedule 150t append